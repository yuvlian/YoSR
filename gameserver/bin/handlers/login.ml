open Cmdid
open Protocol
open Packet

let on_player_get_token _pk =
  let rsp = default_player_get_token_sc_rsp
    ~uid:1l
    ()
  in

  pack (*v*) cmd_player_get_token_sc_rsp (*v*) encode_pb_player_get_token_sc_rsp (*v*) rsp

let on_player_login _pk =
  let player = default_player_basic_info
    ~nickname:"Yulian"
    ~level:5l
    ~world_level:0l
    ~exp:0l
    ~stamina:240l
    ~mcoin:0l
    ~hcoin:0l
    ~scoin:0l
    ()
  in

  let rsp = default_player_login_sc_rsp
    ~retcode:0l
    ~stamina:240l
    ~basic_info:(Some player)
    ()
  in
  
  pack (*v*) cmd_player_login_sc_rsp (*v*) encode_pb_player_login_sc_rsp (*v*) rsp

let on_player_login_finish _pk =
  empty cmd_player_login_finish_sc_rsp
