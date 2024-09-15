open Protocol

(* ---------------  Time Util --------------- *)
let get_server_timestamp () = Int32.of_float (Unix.gettimeofday ())
let get_server_timestamp_ms () = Int64.of_float (Unix.gettimeofday () *. 1000.0)

(* --------------- Battle Util --------------- *)
let create_wave monster_ids = 
  let monster_map = List.map (fun id -> 
    default_scene_monster 
      ~monster_id:id 
      ()
  ) monster_ids in
  default_scene_monster_wave ~monster_list:monster_map ()

let tech id index =
  let tech_id = Int32.add (Int32.mul id 100l) 1l in
  default_battle_buff
    ~id:tech_id
    ~level:1l
    ~owner_id:index
    ~wave_flag:2147483647l
    ~dynamic_values:["SkillIndex", 0.0]
    ()

let is_non_default_battle_buff (buff : battle_buff) : bool =
  buff.id <> 0l ||
  buff.level <> 0l ||
  buff.owner_id <> 0l ||
  buff.wave_flag <> 0l ||
  buff.target_index_list <> [] ||
  buff.dynamic_values <> []

(* --------------- Avatar Util --------------- *)
let owned_characters = [
  1001l; 1002l; 1003l; 1004l; 1005l; 1006l; 1008l; 1009l;
  1013l; 1101l; 1102l; 1103l; 1104l; 1105l; 1106l; 1107l;
  1108l; 1109l; 1110l; 1111l; 1112l; 1201l; 1202l; 1203l;
  1204l; 1205l; 1206l; 1207l; 1208l; 1209l; 1210l; 1211l;
  1212l; 1213l; 1214l; 1215l; 1217l; 1218l; 1220l; 1221l;
  1222l; 1223l; 1224l; 1301l; 1302l; 1303l; 1304l; 1305l;
  1306l; 1307l; 1308l; 1309l; 1310l; 1312l; 1314l; 1315l;
  1317l; 8001l; 8002l; 8003l; 8004l; 8005l; 8006l;
]

let add_lineup id slot energy = 
  default_lineup_avatar
    ~id:id
    ~hp:10000l
    ~slot:slot
    ~satiety:0l
    ~avatar_type:Avatar_formal_type
    ~sp_bar:(Some energy)
    ()

let energy v = 
  let current = Int32.mul v 100l in
  default_sp_bar_info
    ~cur_sp:current
    ~max_sp:10000l
    ()

let max_trace avatar_id =
  let timed_id = Int32.mul avatar_id 1000l in
  [
    { point_id = Int32.add timed_id 1l; level = 6l };
    { point_id = Int32.add timed_id 2l; level = 10l };
    { point_id = Int32.add timed_id 3l; level = 10l };
    { point_id = Int32.add timed_id 4l; level = 10l };
    { point_id = Int32.add timed_id 7l; level = 1l };
    { point_id = Int32.add timed_id 101l; level = 1l };
    { point_id = Int32.add timed_id 102l; level = 1l };
    { point_id = Int32.add timed_id 103l; level = 1l };
    { point_id = Int32.add timed_id 201l; level = 1l };
    { point_id = Int32.add timed_id 202l; level = 1l };
    { point_id = Int32.add timed_id 203l; level = 1l };
    { point_id = Int32.add timed_id 204l; level = 1l };
    { point_id = Int32.add timed_id 205l; level = 1l };
    { point_id = Int32.add timed_id 206l; level = 1l };
    { point_id = Int32.add timed_id 207l; level = 1l };
    { point_id = Int32.add timed_id 208l; level = 1l };
    { point_id = Int32.add timed_id 209l; level = 1l };
    { point_id = Int32.add timed_id 210l; level = 1l };
  ]

let level_eight_trace avatar_id =
  let timed_id = Int32.mul avatar_id 1000l in
  [
    { point_id = Int32.add timed_id 1l; level = 6l };
    { point_id = Int32.add timed_id 2l; level = 8l };
    { point_id = Int32.add timed_id 3l; level = 8l };
    { point_id = Int32.add timed_id 4l; level = 8l };
    { point_id = Int32.add timed_id 7l; level = 1l };
    { point_id = Int32.add timed_id 101l; level = 1l };
    { point_id = Int32.add timed_id 102l; level = 1l };
    { point_id = Int32.add timed_id 103l; level = 1l };
    { point_id = Int32.add timed_id 201l; level = 1l };
    { point_id = Int32.add timed_id 202l; level = 1l };
    { point_id = Int32.add timed_id 203l; level = 1l };
    { point_id = Int32.add timed_id 204l; level = 1l };
    { point_id = Int32.add timed_id 205l; level = 1l };
    { point_id = Int32.add timed_id 206l; level = 1l };
    { point_id = Int32.add timed_id 207l; level = 1l };
    { point_id = Int32.add timed_id 208l; level = 1l };
    { point_id = Int32.add timed_id 209l; level = 1l };
    { point_id = Int32.add timed_id 210l; level = 1l };
  ]

let str_to_mpath_map = function
  | "Mar_7th_knight_type" -> (1001l, Mar_7th_knight_type)
  | "Mar_7th_rogue_type" -> (1001l, Mar_7th_rogue_type)
  | "Boy_warrior_type" -> (8001l, Boy_warrior_type)
  | "Girl_warrior_type" -> (8002l, Girl_warrior_type)
  | "Boy_knight_type" -> (8001l, Boy_knight_type)
  | "Girl_knight_type" -> (8002l, Girl_knight_type)
  | "Boy_shaman_type" -> (8001l, Boy_shaman_type)
  | "Girl_shaman_type" -> (8002l, Girl_shaman_type)
  | _ -> (0l, Multi_path_avatar_type_none)

(* --------------- Equipment Util --------------- *)
let lc id level promotion rank = 
  let lightcone = default_battle_equipment
    ~id:id
    ~level:level
    ~promotion:promotion
    ~rank:rank
    () in
  [lightcone]

let relic id level maffix saffix_one cnt_one step_one saffix_two cnt_two step_two 
    saffix_three cnt_three step_three saffix_four cnt_four step_four = 
  default_battle_relic
    ~id:id
    ~level:level
    ~main_affix_id:maffix
    ~sub_affix_list:[
      {affix_id = saffix_one; cnt = cnt_one; step = step_one};
      {affix_id = saffix_two; cnt = cnt_two; step = step_two};
      {affix_id = saffix_three; cnt = cnt_three; step = step_three};
      {affix_id = saffix_four; cnt = cnt_four; step = step_four};
    ] ()