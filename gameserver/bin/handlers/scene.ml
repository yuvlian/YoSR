open Cmdid
open Protocol
open Packet

let id_plane = 20313l
let id_entry = Int32.add (Int32.mul id_plane 100l) 1l
let id_floor = Int32.add (Int32.mul id_plane 1000l) 1l

let empty_vector = default_vector ()

let on_get_cur_scene_info _pk =
  let player_actor = default_scene_actor_info
    ~avatar_type:Avatar_formal_type
    ~base_avatar_id:1222l
    ~uid:1l
    ~map_layer:2l
    ()
  in

  let player_xyz = default_vector
    ~x:40748l
    ~y:192819l
    ~z:439218l
    ()
  in

  let player_motion = default_motion_info
    ~pos:(Some player_xyz)
    ~rot:(Some empty_vector)
    ()
  in

  let player_info = default_scene_entity_info
    ~entity_id:0l
    ~group_id:0l
    ~inst_id:0l
    ~motion:(Some player_motion)
    ~actor:(Some player_actor)
    ()
  in

  let entity_player = default_scene_entity_group_info
    ~group_id:0l
    ~state:1l
    ~entity_list:[player_info]
    ()
  in

  let calyx_prop = default_scene_prop_info
    ~prop_id:808l
    ~prop_state:1l
    ~life_time_ms:0l
    ()
  in

  let calyx_xyz = default_vector
    ~x:31440l
    ~y:192820l
    ~z:433790l
    ()
  in

  let calyx_motion = default_motion_info
    ~pos:(Some calyx_xyz)
    ~rot:(Some empty_vector)
    ()
  in

  let calyx_info = default_scene_entity_info
    ~entity_id:1l
    ~group_id:186l
    ~inst_id:300001l
    ~motion:(Some calyx_motion)
    ~prop:(Some calyx_prop)
    ()
  in

  let entity_calyx = default_scene_entity_group_info
    ~group_id:186l
    ~state:1l
    ~entity_list:[calyx_info]
    ()
  in

  let spawn = default_scene_info
    ~plane_id:id_plane
    ~entry_id:id_entry
    ~floor_id:id_floor
    ~game_mode_type:1l
    ~entity_group_list:[entity_player; entity_calyx]
    ()
  in

  let rsp = default_get_cur_scene_info_sc_rsp
    ~retcode:0l
    ~scene:(Some spawn)
    ()
  in

  pack (*v*) cmd_get_cur_scene_info_sc_rsp (*v*) encode_pb_get_cur_scene_info_sc_rsp (*v*) rsp
