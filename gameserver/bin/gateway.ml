open Lwt
open Lwt.Syntax
open Printf

let bind_sock addr port =
  let open Lwt_unix in

  let listener = socket PF_INET SOCK_STREAM 0 in
  setsockopt listener SO_REUSEADDR true;

  let* () = bind listener @@ ADDR_INET(Unix.inet_addr_of_string addr, port) in
  listen listener 100;
  return listener

let accept_connection (sock, addr) =
  let (remote_ip, remote_port) = match addr with
  | Unix.ADDR_INET (addr, port) -> Unix.string_of_inet_addr addr, port
  | _ -> failwith "only ADDR_INET is supported"
  in

  let ic = Lwt_io.of_fd ~mode:Lwt_io.Input sock in
  let oc = Lwt_io.of_fd ~mode:Lwt_io.Output sock in
  on_failure (Connection.run ic oc) (fun err -> printf "error: %s\n%!" (Printexc.to_string err));

  printf "[INFO] Received connection from %s:%d\n\n%!" remote_ip remote_port; return_unit

let accept_loop listener =
  let rec accept () =
    Lwt_unix.accept listener >>= accept_connection >>= accept
  in accept

let listen addr port =
  Lwt_main.run ((bind_sock addr port) >>= fun listener ->
    printf "[INFO] Listening at %s:%d\n\n%!" addr port;
    let accept = accept_loop listener in accept ())
