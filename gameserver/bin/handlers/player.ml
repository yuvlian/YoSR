open Cmdid
open Packet
open Protocol

let on_get_basic_info _pk = empty cmd_get_basic_info_sc_rsp

let on_player_heartbeat pk =
  let dec = Pbrt.Decoder.of_string pk.body in
  let req = decode_pb_player_heart_beat_cs_req dec in

  let rsp = default_player_heart_beat_sc_rsp
    ~retcode:0l
    ~client_timestamp_ms:req.client_timestamp_ms
    ~server_timestamp_ms:(Utility.get_server_timestamp_ms ())
    () 
  in

  pack (*v*) cmd_player_heart_beat_sc_rsp (*v*) encode_pb_player_heart_beat_sc_rsp (*v*) rsp