open Lwt
open Lwt.Syntax
open Printf
open Packet

module CmdMap = Map.Make(Int)

(* Define command handlers mapping *)
let handlers =
  let open Handlers in
  let open Cmdid in
  CmdMap.(
    empty
    |> add cmd_player_get_token_cs_req Login.on_player_get_token
    |> add cmd_player_login_cs_req Login.on_player_login
    |> add cmd_player_login_finish_cs_req Login.on_player_login_finish
    |> add cmd_player_heart_beat_cs_req Player.on_player_heartbeat
    |> add cmd_get_basic_info_cs_req Player.on_get_basic_info
    |> add cmd_get_avatar_data_cs_req Avatar.on_get_avatar_data
    |> add cmd_get_bag_cs_req Item.on_get_bag
    |> add cmd_get_multi_path_avatar_info_cs_req Avatar.on_get_multi_path_avatar_info
    |> add cmd_get_mission_status_cs_req Mission.on_get_mission_status
    |> add cmd_get_cur_lineup_data_cs_req Lineup.on_get_cur_lineup_data
    |> add cmd_get_cur_scene_info_cs_req Scene.on_get_cur_scene_info
    |> add cmd_start_cocoon_stage_cs_req Battle.on_start_cocoon_stage
    |> add cmd_p_v_e_battle_result_cs_req Battle.on_pve_battle_result
  )

(* To check whether packet is handled or not *)
let len_check str = 
  if String.length str = 0 then "Unhandled"
  else Hex.show (Hex.of_string str)

(* Handle incoming packet by looking up the command handler *)
let handle pk =
  match CmdMap.find_opt pk.cmd handlers with
  | Some handler
  ->  let body = len_check pk.body in
      printf "[RSP] %s\n\n%!" body; 
      Some (handler pk)
  | None -> printf "[RSP] Unhandled\n\n%!"; None

(* Recursive function to process packets from the input channel *)
let rec run ic oc =
  let* pk = read ic in
  (* let head = Hex.show (Hex.of_string pk.head) in *)
  printf "[REQ] %d\n%!" pk.cmd (* head *);

  (* Handle the packet and write the response if there's a result *)
  let* () =
    match handle pk with
    | Some res -> Lwt_list.iter_s (fun pk -> write oc pk) res.packets
    | None -> return_unit
  in

  run ic oc
