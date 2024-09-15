open Cmdid
open Protocol
open Packet

let on_get_avatar_data pk =
  let dec = Pbrt.Decoder.of_string pk.body in
  let req = decode_pb_get_avatar_data_cs_req dec in

  let avatars = List.map (fun id ->
    default_avatar
      ~base_avatar_id:id
      ~level:80l
      ~promotion:6l
      ~rank:6l
      ()
    ) Utility.owned_characters 
  in

  let rsp = default_get_avatar_data_sc_rsp
    ~retcode:0l
    ~is_get_all:req.is_get_all
    ~avatar_list:avatars
    () 
  in

  pack cmd_get_avatar_data_sc_rsp encode_pb_get_avatar_data_sc_rsp rsp

let check_multipath (slot : Jsontypes.slot option) path_map =
  match slot with
  | Some slot when slot.multipath <> "None" ->
    let entry = Utility.str_to_mpath_map slot.multipath in
    path_map := entry :: !path_map
  | _ -> ()

let on_get_multi_path_avatar_info _pk =
  let yo_data = Config.open_config "yo.json" in
  let path_map = ref [] in

  check_multipath yo_data.slot1 path_map;
  check_multipath yo_data.slot2 path_map;
  check_multipath yo_data.slot3 path_map;
  check_multipath yo_data.slot4 path_map;

  let rsp = default_get_multi_path_avatar_info_sc_rsp
    ~retcode:0l
    ~cur_avatar_path:!path_map
    ()
  in

  pack (*v*) cmd_get_multi_path_avatar_info_sc_rsp (*v*) encode_pb_get_multi_path_avatar_info_sc_rsp (*v*) rsp