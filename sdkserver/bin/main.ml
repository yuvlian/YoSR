module S = Tiny_httpd
open Printf

let () =
  let server = S.create ~addr:"0.0.0.0" ~port:21000 () in

  S.add_route_handler ~meth:`GET server
    S.Route.(exact_path "query_dispatch" return) Dispatch.query_dispatch;

  S.add_route_handler ~meth:`GET server
    S.Route.(exact_path "query_gateway" return) Dispatch.query_gateway;

  S.add_route_handler ~meth:`POST server
    S.Route.(exact_path "account/risky/api/check" return) Auth.risky_api_check;

  S.add_route_handler ~meth:`POST server
    S.Route.(exact_path "hkrpg_global/mdk/shield/api/login" return) Auth.mdk_shield_login;

  S.add_route_handler ~meth:`POST server
    S.Route.(exact_path "hkrpg_global/mdk/shield/api/verify" return) Auth.mdk_shield_login;

  S.add_route_handler ~meth:`POST server
    S.Route.(exact_path "hkrpg_global/combo/granter/login/v2/login" return) Auth.granter_login_v2;

  printf "[INFO] Listening at %s:%d\n\n%!" (S.addr server) (S.port server);

  match S.run server with
  | Ok () -> ()
  | Error e -> raise e
