open Lwt
open Lwt.Syntax

type packet = { cmd: int; head: string; body: string }
type net_result = { packets: packet list }

let read ic =
  let open Lwt_io in
  let* head_magic = BE.read_int32 ic in
  assert (head_magic = 0x9D74C714l);

  let* cmd = BE.read_int16 ic in
  let* head_size = BE.read_int16 ic in
  let* body_size = BE.read_int32 ic in
  let* head = read ~count:head_size ic in
  let* body = read ~count:(Int32.to_int body_size) ic in
  let* tail_magic = BE.read_int32 ic in
  assert (tail_magic = 0xD7A152C8l);

  return { cmd; head; body }

let write oc pk =
  let open Lwt_io in
  let* () = BE.write_int32 oc 0x9D74C714l in
  let* () = BE.write_int16 oc pk.cmd in
  let* () = BE.write_int16 oc (String.length pk.head) in
  let* () = BE.write_int32 oc (Int32.of_int (String.length pk.body)) in
  let* () = write oc pk.head in
  let* () = write oc pk.body in
  let* () = BE.write_int32 oc 0xD7A152C8l in
  let* () = flush oc in
  return_unit

let pack cmd en data =
  let encoder = Pbrt.Encoder.create () in
  en data encoder;
  let buf = Pbrt.Encoder.to_string encoder in
  { packets = [{ cmd; head = ""; body = buf }] }

let merge lhs rhs =
  { packets = lhs.packets @ rhs.packets }

let empty cmd = 
  { packets = [{ cmd; head = ""; body = "" }] }
