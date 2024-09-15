open Cmdid
open Protocol
open Packet
open Config
open Utility

(* Function to create a default battle avatar from a slot *)
let create_battle_avatar (slot : Jsontypes.slot) =
  let av_id = av_id_from_slot slot.name in
  let av_lc = slot.lightcone in
  let av_lc_id = lc_id_from_slot av_lc.name in
  let skill_t_list =
    if slot.max_trace then max_trace av_id
    else level_eight_trace av_id
  in

  (* return this *)
  default_battle_avatar
    ~avatar_type:Avatar_formal_type
    ~id:av_id
    ~level:slot.lv
    ~rank:slot.rank
    ~promotion:slot.promo
    ~index:slot.index
    ~hp:10000l
    ~sp_bar:(Some (energy slot.energy))
    ~skilltree_list:skill_t_list
    ~equipment_list:(lc av_lc_id av_lc.lv av_lc.promo av_lc.rank)
    ~relic_list:[
      (relic (he_id_from_slot slot.relic.head.name) slot.relic.head.lv
        (h_main_from_slot slot.relic.head.m_affix)
        (sub_from_slot slot.relic.head.s_affix_one.sub) (slot.relic.head.s_affix_one.cnt) (slot.relic.head.s_affix_one.step)
        (sub_from_slot slot.relic.head.s_affix_two.sub) (slot.relic.head.s_affix_two.cnt) (slot.relic.head.s_affix_two.step)
        (sub_from_slot slot.relic.head.s_affix_three.sub) (slot.relic.head.s_affix_three.cnt) (slot.relic.head.s_affix_three.step)
        (sub_from_slot slot.relic.head.s_affix_four.sub) (slot.relic.head.s_affix_four.cnt) (slot.relic.head.s_affix_four.step)
      );
      (relic (ha_id_from_slot slot.relic.hand.name) slot.relic.hand.lv
        (h_main_from_slot slot.relic.hand.m_affix)
        (sub_from_slot slot.relic.hand.s_affix_one.sub) (slot.relic.hand.s_affix_one.cnt) (slot.relic.hand.s_affix_one.step)
        (sub_from_slot slot.relic.hand.s_affix_two.sub) (slot.relic.hand.s_affix_two.cnt) (slot.relic.hand.s_affix_two.step)
        (sub_from_slot slot.relic.hand.s_affix_three.sub) (slot.relic.hand.s_affix_three.cnt) (slot.relic.hand.s_affix_three.step)
        (sub_from_slot slot.relic.hand.s_affix_four.sub) (slot.relic.hand.s_affix_four.cnt) (slot.relic.hand.s_affix_four.step)
      );
      (relic (bo_id_from_slot slot.relic.body.name) slot.relic.body.lv
        (b_main_from_slot slot.relic.body.m_affix)
        (sub_from_slot slot.relic.body.s_affix_one.sub) (slot.relic.body.s_affix_one.cnt) (slot.relic.body.s_affix_one.step)
        (sub_from_slot slot.relic.body.s_affix_two.sub) (slot.relic.body.s_affix_two.cnt) (slot.relic.body.s_affix_two.step)
        (sub_from_slot slot.relic.body.s_affix_three.sub) (slot.relic.body.s_affix_three.cnt) (slot.relic.body.s_affix_three.step)
        (sub_from_slot slot.relic.body.s_affix_four.sub) (slot.relic.body.s_affix_four.cnt) (slot.relic.body.s_affix_four.step)
      );
      (relic (fo_id_from_slot slot.relic.foot.name) slot.relic.foot.lv
        (f_main_from_slot slot.relic.foot.m_affix)
        (sub_from_slot slot.relic.foot.s_affix_one.sub) (slot.relic.foot.s_affix_one.cnt) (slot.relic.foot.s_affix_one.step)
        (sub_from_slot slot.relic.foot.s_affix_two.sub) (slot.relic.foot.s_affix_two.cnt) (slot.relic.foot.s_affix_two.step)
        (sub_from_slot slot.relic.foot.s_affix_three.sub) (slot.relic.foot.s_affix_three.cnt) (slot.relic.foot.s_affix_three.step)
        (sub_from_slot slot.relic.foot.s_affix_four.sub) (slot.relic.foot.s_affix_four.cnt) (slot.relic.foot.s_affix_four.step)
      );
      (relic (or_id_from_slot slot.relic.orb.name) slot.relic.orb.lv
        (o_main_from_slot slot.relic.orb.m_affix)
        (sub_from_slot slot.relic.orb.s_affix_one.sub) (slot.relic.orb.s_affix_one.cnt) (slot.relic.orb.s_affix_one.step)
        (sub_from_slot slot.relic.orb.s_affix_two.sub) (slot.relic.orb.s_affix_two.cnt) (slot.relic.orb.s_affix_two.step)
        (sub_from_slot slot.relic.orb.s_affix_three.sub) (slot.relic.orb.s_affix_three.cnt) (slot.relic.orb.s_affix_three.step)
        (sub_from_slot slot.relic.orb.s_affix_four.sub) (slot.relic.orb.s_affix_four.cnt) (slot.relic.orb.s_affix_four.step)
      );
      (relic (ro_id_from_slot slot.relic.rope.name) slot.relic.rope.lv
        (r_main_from_slot slot.relic.rope.m_affix)
        (sub_from_slot slot.relic.rope.s_affix_one.sub) (slot.relic.rope.s_affix_one.cnt) (slot.relic.rope.s_affix_one.step)
        (sub_from_slot slot.relic.rope.s_affix_two.sub) (slot.relic.rope.s_affix_two.cnt) (slot.relic.rope.s_affix_two.step)
        (sub_from_slot slot.relic.rope.s_affix_three.sub) (slot.relic.rope.s_affix_three.cnt) (slot.relic.rope.s_affix_three.step)
        (sub_from_slot slot.relic.rope.s_affix_four.sub) (slot.relic.rope.s_affix_four.cnt) (slot.relic.rope.s_affix_four.step)
      );
    ]
  ()

(* Function to create a default battle buff for techniques *)
let create_technique (slot : Jsontypes.slot) =
  let av_id = av_id_from_slot slot.name in
  if slot.use_tech then tech av_id slot.index
  else default_battle_buff ()

(* Function to create a list of techniques based on slots *)
let create_technique_list slots =
  List.map (fun slot_opt ->
    match slot_opt with
    | Some slot -> create_technique slot
    | None -> default_battle_buff ()
  ) slots
  |> List.filter (fun buff -> is_non_default_battle_buff buff)

let on_start_cocoon_stage pk =
  let dec = Pbrt.Decoder.of_string pk.body in
  let req = decode_pb_start_cocoon_stage_cs_req dec in
  let yo_data = open_config "yo.json" in

  let avatars = 
    [ yo_data.slot1; yo_data.slot2; yo_data.slot3; yo_data.slot4;]
    |> List.map (function
      | Some slot -> create_battle_avatar slot
      | None -> default_battle_avatar ()
    )
  in

  let technique_list = create_technique_list [yo_data.slot1; yo_data.slot2; yo_data.slot3; yo_data.slot4] in

  let battle_scene = match yo_data.battle with
    | Some battle -> 
        let monster_wave_list = List.map create_wave battle.waves in
        default_scene_battle_info
          ~logic_random_seed:(get_server_timestamp ())
          ~rounds_limit:battle.rounds_limit
          ~stage_id:battle.stage_id
          ~battle_avatar_list: avatars
          ~buff_list: technique_list
          ~monster_wave_list: monster_wave_list
          ()
    | None -> default_scene_battle_info ()
  in

  let rsp = default_start_cocoon_stage_sc_rsp
    ~retcode:0l
    ~battle_info:(Some battle_scene)
    ~cocoon_id:req.cocoon_id
    ~prop_entity_id:req.prop_entity_id
    ~wave:1l
    () 
  in

  pack (*v*) cmd_start_cocoon_stage_sc_rsp (*v*) encode_pb_start_cocoon_stage_sc_rsp (*v*) rsp

let on_pve_battle_result pk =
  let dec = Pbrt.Decoder.of_string pk.body in
  let req = decode_pb_pvebattle_result_cs_req dec in

  let rsp = default_pvebattle_result_sc_rsp
    ~retcode:0l
    ~end_status:req.end_status
    ~battle_id:req.battle_id
    () 
  in

  pack (*v*) cmd_p_v_e_battle_result_sc_rsp (*v*) encode_pb_pvebattle_result_sc_rsp (*v*) rsp
