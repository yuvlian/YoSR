open Idutil

let open_config filename =
  if Sys.file_exists filename then
    let json = Yojson.Basic.from_file filename in
    Jsontypes.data_of_json json
  else
    failwith ("JSON file missing: " ^ filename)

let av_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Caelus_des" -> Caelus_des
    | "Stelle_des" -> Stelle_des
    | "Caelus_pres" -> Caelus_pres
    | "Stelle_pres" -> Stelle_pres
    | "Caelus_harm" -> Caelus_harm
    | "Stelle_harm" -> Stelle_harm
    | "Mar7th_pres" -> Mar7th_pres
    | "Danheng" -> Danheng
    | "Himeko" -> Himeko
    | "Welt" -> Welt
    | "Kafka" -> Kafka
    | "Silver_wolf" -> Silver_wolf
    | "Arlan" -> Arlan
    | "Asta" -> Asta
    | "Herta" -> Herta
    | "Bronya" -> Bronya
    | "Seele" -> Seele
    | "Serval" -> Serval
    | "Gepard" -> Gepard
    | "Natasha" -> Natasha
    | "Pela" -> Pela
    | "Clara" -> Clara
    | "Sampo" -> Sampo
    | "Hook" -> Hook
    | "Lynx" -> Lynx
    | "Luka" -> Luka
    | "Topaz" -> Topaz
    | "Qingque" -> Qingque
    | "Tingyun" -> Tingyun
    | "Luocha" -> Luocha
    | "Jingyuan" -> Jingyuan
    | "Blade" -> Blade
    | "Sushang" -> Sushang
    | "Yukong" -> Yukong
    | "Fuxuan" -> Fuxuan
    | "Yanqing" -> Yanqing
    | "Guinaifen" -> Guinaifen
    | "Bailu" -> Bailu
    | "Jingliu" -> Jingliu
    | "Dhil" -> Dhil
    | "Xueyi" -> Xueyi
    | "Hanya" -> Hanya
    | "Huohuo" -> Huohuo
    | "Jiaoqiu" -> Jiaoqiu
    | "Yunli" -> Yunli
    | "Mar7th_hunt" -> Mar7th_hunt
    | "Gallagher" -> Gallagher
    | "Argenti" -> Argenti
    | "Ruanmei" -> Ruanmei
    | "Aventurine" -> Aventurine
    | "Drratio" -> Drratio
    | "Sparkle" -> Sparkle
    | "Blackswan" -> Blackswan
    | "Acheron" -> Acheron
    | "Robin" -> Robin
    | "Firefly" -> Firefly
    | "Misha" -> Misha
    | "Jade" -> Jade
    | "Boothill" -> Boothill
    | "Lingsha" -> Lingsha
    | "Feixiao" -> Feixiao
    | "Rappa" -> Rappa
    | _ -> failwith "Unknown avatar name"
  in
  get_av match_name

let lc_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Arrows" -> Arrows
    | "Cornucopia" -> Cornucopia
    | "Collapsing_sky" -> Collapsing_sky
    | "Amber" -> Amber
    | "Void" -> Void
    | "Chorus" -> Chorus
    | "Data_bank" -> Data_bank
    | "Darting_arrow" -> Darting_arrow
    | "Fine_fruit" -> Fine_fruit
    | "Shattered_home" -> Shattered_home
    | "Defense" -> Defense
    | "Loop" -> Loop
    | "Meshing_cogs" -> Meshing_cogs
    | "Passkey" -> Passkey
    | "Adversarial" -> Adversarial
    | "Multiplication" -> Multiplication
    | "Mutual_demise" -> Mutual_demise
    | "Pioneering" -> Pioneering
    | "Hidden_shadow" -> Hidden_shadow
    | "Mediation" -> Mediation
    | "Sagacity" -> Sagacity
    | "Postop_conversation" -> Postop_conversation
    | "Good_night_and_sleep_well" -> Good_night_and_sleep_well
    | "Day_one_of_my_new_life" -> Day_one_of_my_new_life
    | "Only_silence_remains" -> Only_silence_remains
    | "Memories_of_the_past" -> Memories_of_the_past
    | "The_moles_welcome_you" -> The_moles_welcome_you
    | "The_birth_of_the_self" -> The_birth_of_the_self
    | "Shared_feeling" -> Shared_feeling
    | "Eyes_of_the_prey" -> Eyes_of_the_prey
    | "Landaus_choice" -> Landaus_choice
    | "Swordplay" -> Swordplay
    | "Planetary_rendezvous" -> Planetary_rendezvous
    | "A_secret_vow" -> A_secret_vow
    | "Make_the_world_clamor" -> Make_the_world_clamor
    | "Perfect_timing" -> Perfect_timing
    | "Resolution_shines_as_pearls_of_sweat" -> Resolution_shines_as_pearls_of_sweat
    | "Trend_of_the_universal_market" -> Trend_of_the_universal_market
    | "Subscribe_for_more" -> Subscribe_for_more
    | "Dance_dance_dance" -> Dance_dance_dance
    | "Under_the_blue_sky" -> Under_the_blue_sky
    | "Geniuses_repose" -> Geniuses_repose
    | "Quid_pro_quo" -> Quid_pro_quo
    | "Fermata" -> Fermata
    | "We_are_wildfire" -> We_are_wildfire
    | "River_flows_in_spring" -> River_flows_in_spring
    | "Past_and_future" -> Past_and_future
    | "Woof_walk_time" -> Woof_walk_time
    | "The_seriousness_of_breakfast" -> The_seriousness_of_breakfast
    | "Warmth_shortens_cold_nights" -> Warmth_shortens_cold_nights
    | "We_will_meet_again" -> We_will_meet_again
    | "This_is_me" -> This_is_me
    | "Return_to_darkness" -> Return_to_darkness
    | "Carve_the_moon_weave_the_clouds" -> Carve_the_moon_weave_the_clouds
    | "Nowhere_to_run" -> Nowhere_to_run
    | "Today_is_another_peaceful_day" -> Today_is_another_peaceful_day
    | "What_is_real" -> What_is_real
    | "Dreamville_adventure" -> Dreamville_adventure
    | "Final_victor" -> Final_victor
    | "Flames_afar" -> Flames_afar
    | "Destinys_threads_forewoven" -> Destinys_threads_forewoven
    | "The_day_the_cosmos_fell" -> The_day_the_cosmos_fell
    | "Its_showtime" -> Its_showtime
    | "Indelible_promise" -> Indelible_promise
    | "Concert_for_two" -> Concert_for_two
    | "Boundless_choreo" -> Boundless_choreo
    | "After_the_charmony_fall" -> After_the_charmony_fall
    | "Poised_to_bloom" -> Poised_to_bloom
    | "Before_the_tutorial_mission_starts" -> Before_the_tutorial_mission_starts
    | "Hey_over_here" -> Hey_over_here
    | "For_tomorrows_journey" -> For_tomorrows_journey
    | "Night_on_the_milky_way" -> Night_on_the_milky_way
    | "In_the_night" -> In_the_night
    | "Something_irreplaceable" -> Something_irreplaceable
    | "But_the_battle_isnt_over" -> But_the_battle_isnt_over
    | "In_the_name_of_the_world" -> In_the_name_of_the_world
    | "Moment_of_victory" -> Moment_of_victory
    | "Patience_is_all_you_need" -> Patience_is_all_you_need
    | "Incessant_rain" -> Incessant_rain
    | "Echoes_of_the_coffin" -> Echoes_of_the_coffin
    | "The_unreachable_side" -> The_unreachable_side
    | "Before_dawn" -> Before_dawn
    | "She_already_shut_her_eyes" -> She_already_shut_her_eyes
    | "Sleep_like_the_dead" -> Sleep_like_the_dead
    | "Time_waits_for_no_one" -> Time_waits_for_no_one
    | "I_shall_be_my_own_sword" -> I_shall_be_my_own_sword
    | "Brighter_than_the_sun" -> Brighter_than_the_sun
    | "Worrisome_blissful" -> Worrisome_blissful
    | "Night_of_fright" -> Night_of_fright
    | "An_instant_before_a_gaze" -> An_instant_before_a_gaze
    | "Past_self_in_mirror" -> Past_self_in_mirror
    | "Baptism_of_pure_thought" -> Baptism_of_pure_thought
    | "Earthly_escapade" -> Earthly_escapade
    | "Reforged_remembrance" -> Reforged_remembrance
    | "Inherently_unjust_destiny" -> Inherently_unjust_destiny
    | "Along_the_passing_shore" -> Along_the_passing_shore
    | "Whereabouts_should_dreams_rest" -> Whereabouts_should_dreams_rest
    | "Flowing_nightglow" -> Flowing_nightglow
    | "Sailing_towards_a_second_life" -> Sailing_towards_a_second_life
    | "Yet_hope_is_priceless" -> Yet_hope_is_priceless
    | "Those_many_springs" -> Those_many_springs
    | "Dance_at_sunset" -> Dance_at_sunset
    | "On_the_fall_of_an_aeon" -> On_the_fall_of_an_aeon
    | "Cruising_in_the_stellar_sea" -> Cruising_in_the_stellar_sea
    | "Texture_of_memories" -> Texture_of_memories
    | "Solitary_healing" -> Solitary_healing
    | "Eternal_calculus" -> Eternal_calculus
    | "Dreams_montage" -> Dreams_montage
    | "Ninja_record_sound_hunt" -> Ninja_record_sound_hunt
    | "Ninjutsu_inscription_dazzling_evilbreaker" -> Ninjutsu_inscription_dazzling_evilbreaker
    | "Scent_alone_stays_true" -> Scent_alone_stays_true
    | "I_venture_forth_to_hunt" -> I_venture_forth_to_hunt
    | _ -> failwith "Unknown lightcone name"
  in
  get_lc match_name

let he_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Passerbys" -> Passerbys
    | "Musketeers" -> Musketeers
    | "Knights" -> Knights
    | "Hunters" -> Hunters
    | "Champions" -> Champions
    | "Guards" -> Guards
    | "Firesmiths" -> Firesmiths
    | "Geniuss" -> Geniuss
    | "Bands" -> Bands
    | "Eagles" -> Eagles
    | "Thiefs" -> Thiefs
    | "Wastelanders" -> Wastelanders
    | "Disciples" -> Disciples
    | "Messengers" -> Messengers
    | "Grand" -> Grand
    | "Prisoners" -> Prisoners
    | "Pioneers" -> Pioneers
    | "Watchmakers" -> Watchmakers
    | "Iron" -> Iron
    | "Valorous" -> Valorous
    | "Scholars" -> Scholars
    | "Sacerdos" -> Sacerdos
    | _ -> failwith "Unknown relic head set name"
  in
  pc_head match_name

let ha_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Passerbys" -> Passerbys
    | "Musketeers" -> Musketeers
    | "Knights" -> Knights
    | "Hunters" -> Hunters
    | "Champions" -> Champions
    | "Guards" -> Guards
    | "Firesmiths" -> Firesmiths
    | "Geniuss" -> Geniuss
    | "Bands" -> Bands
    | "Eagles" -> Eagles
    | "Thiefs" -> Thiefs
    | "Wastelanders" -> Wastelanders
    | "Disciples" -> Disciples
    | "Messengers" -> Messengers
    | "Grand" -> Grand
    | "Prisoners" -> Prisoners
    | "Pioneers" -> Pioneers
    | "Watchmakers" -> Watchmakers
    | "Iron" -> Iron
    | "Valorous" -> Valorous
    | "Scholars" -> Scholars
    | "Sacerdos" -> Sacerdos
    | _ -> failwith "Unknown relic hand set name"
  in
  pc_hand match_name

let bo_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Passerbys" -> Passerbys
    | "Musketeers" -> Musketeers
    | "Knights" -> Knights
    | "Hunters" -> Hunters
    | "Champions" -> Champions
    | "Guards" -> Guards
    | "Firesmiths" -> Firesmiths
    | "Geniuss" -> Geniuss
    | "Bands" -> Bands
    | "Eagles" -> Eagles
    | "Thiefs" -> Thiefs
    | "Wastelanders" -> Wastelanders
    | "Disciples" -> Disciples
    | "Messengers" -> Messengers
    | "Grand" -> Grand
    | "Prisoners" -> Prisoners
    | "Pioneers" -> Pioneers
    | "Watchmakers" -> Watchmakers
    | "Iron" -> Iron
    | "Valorous" -> Valorous
    | "Scholars" -> Scholars
    | "Sacerdos" -> Sacerdos
    | _ -> failwith "Unknown relic body set name"
  in
  pc_body match_name

let fo_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Passerbys" -> Passerbys
    | "Musketeers" -> Musketeers
    | "Knights" -> Knights
    | "Hunters" -> Hunters
    | "Champions" -> Champions
    | "Guards" -> Guards
    | "Firesmiths" -> Firesmiths
    | "Geniuss" -> Geniuss
    | "Bands" -> Bands
    | "Eagles" -> Eagles
    | "Thiefs" -> Thiefs
    | "Wastelanders" -> Wastelanders
    | "Disciples" -> Disciples
    | "Messengers" -> Messengers
    | "Grand" -> Grand
    | "Prisoners" -> Prisoners
    | "Pioneers" -> Pioneers
    | "Watchmakers" -> Watchmakers
    | "Iron" -> Iron
    | "Valorous" -> Valorous
    | "Scholars" -> Scholars
    | "Sacerdos" -> Sacerdos
    | _ -> failwith "Unknown relic foot set name"
  in
  pc_foot match_name

let or_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Hertas" -> Hertas
    | "The_xianzhou" -> The_xianzhou
    | "The_ipcs" -> The_ipcs
    | "Belobogs" -> Belobogs
    | "Planet" -> Planet
    | "Salsottos" -> Salsottos
    | "Talias" -> Talias
    | "Vonwacqs" -> Vonwacqs
    | "Taikiyan" -> Taikiyan
    | "Insumousus" -> Insumousus
    | "Glamoths" -> Glamoths
    | "Penaconys" -> Penaconys
    | "Sigonias" -> Sigonias
    | "Izumos" -> Izumos
    | "Durans" -> Durans
    | "Forges" -> Forges
    | "The_wondrous" -> The_wondrous
    | "Lushaka" -> Lushaka
    | _ -> failwith "Unknown relic orb set name"
  in
  pc_orb match_name

let ro_id_from_slot slot_name =
  let match_name = match slot_name with
    | "Hertas" -> Hertas
    | "The_xianzhou" -> The_xianzhou
    | "The_ipcs" -> The_ipcs
    | "Belobogs" -> Belobogs
    | "Planet" -> Planet
    | "Salsottos" -> Salsottos
    | "Talias" -> Talias
    | "Vonwacqs" -> Vonwacqs
    | "Taikiyan" -> Taikiyan
    | "Insumousus" -> Insumousus
    | "Glamoths" -> Glamoths
    | "Penaconys" -> Penaconys
    | "Sigonias" -> Sigonias
    | "Izumos" -> Izumos
    | "Durans" -> Durans
    | "Forges" -> Forges
    | "The_wondrous" -> The_wondrous
    | "Lushaka" -> Lushaka
    | _ -> failwith "Unknown relic rope set name"
  in
  pc_rope match_name

  let h_main_from_slot slot_name =
    let match_name = match slot_name with
      | "Hp" -> Hp
      | "Atk" -> Atk
      | _ -> failwith "Unknown relic type for h_main"
    in
    h_main match_name
  
  let b_main_from_slot slot_name =
    let match_name = match slot_name with
      | "Hpp" -> Hpp
      | "Atkp" -> Atkp
      | "Defp" -> Defp
      | "Cr" -> Cr
      | "Cd" -> Cd
      | "Ohb" -> Ohb
      | "Ehr" -> Ehr
      | _ -> failwith "Unknown relic type for b_main"
    in
    b_main match_name
  
  let f_main_from_slot slot_name =
    let match_name = match slot_name with
      | "Hpp" -> Hpp
      | "Atkp" -> Atkp
      | "Defp" -> Defp
      | "Spd" -> Spd
      | _ -> failwith "Unknown relic type for f_main"
    in
    f_main match_name
  
  let o_main_from_slot slot_name =
    let match_name = match slot_name with
      | "Hpp" -> Hpp
      | "Atkp" -> Atkp
      | "Defp" -> Defp
      | "Phy" -> Phy
      | "Fire" -> Fire
      | "Ice" -> Ice
      | "Lng" -> Lng
      | "Wind" -> Wind
      | "Qua" -> Qua
      | "Img" -> Img
      | _ -> failwith "Unknown relic type for o_main"
    in
    o_main match_name
  
  let r_main_from_slot slot_name =
    let match_name = match slot_name with
      | "Be" -> Be
      | "Er" -> Er
      | "Hpp" -> Hpp
      | "Atkp" -> Atkp
      | "Defp" -> Defp
      | _ -> failwith "Unknown relic type for r_main"
    in
    r_main match_name
  
  let sub_from_slot slot_name =
    let match_name = match slot_name with
      | "Hp" -> Hp
      | "Atk" -> Atk
      | "Def" -> Def
      | "Hpp" -> Hpp
      | "Atkp" -> Atkp
      | "Defp" -> Defp
      | "Spd" -> Spd
      | "Cr" -> Cr
      | "Cd" -> Cd
      | "Ehr" -> Ehr
      | "Eres" -> Eres
      | "Be" -> Be
      | _ -> failwith "Unknown relic type for sub"
    in
    sub match_name  