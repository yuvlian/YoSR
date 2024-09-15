open Cmdid
open Protocol
open Packet
open Utility
open Config

let add_to_lineup (slot : Jsontypes.slot) =
  let av_id = av_id_from_slot slot.name in
  let avatar = add_lineup av_id slot.index (energy slot.energy) in
  avatar

let on_get_cur_lineup_data _pk =
  let yo_data = open_config "yo.json" in

  let avatars = 
    List.filter_map (function
      | Some slot -> Some (add_to_lineup slot)
      | None -> None
    ) [yo_data.slot1; yo_data.slot2; yo_data.slot3; yo_data.slot4]
  in

  let overworld_lineup = default_lineup_info
    ~name:"Letmecook"
    ~avatar_list:avatars
    ()
  in

  let rsp = default_get_cur_lineup_data_sc_rsp
    ~retcode:0l
    ~lineup:(Some overworld_lineup)
    ()
  in

  pack (*v*) cmd_get_cur_lineup_data_sc_rsp (*v*) encode_pb_get_cur_lineup_data_sc_rsp (*v*) rsp