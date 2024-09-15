(* 
Multipath names for JSON:

None |> multipath none

Mar_7th_knight_type |> march preservation

Mar_7th_rogue_type |> march hunt

Boy_warrior_type |> caelus destruction

Girl_warrior_type |> stelle destruction

Boy_knight_type |> caelus preservation

Girl_knight_type |> stelle preservation

Boy_shaman_type |> caelus harmony
 
Girl_shaman_type |> stelle harmony
*)

(* --------------- character ids --------------- *)
type characters =
  | Caelus_des
  | Stelle_des
  | Caelus_pres
  | Stelle_pres
  | Caelus_harm
  | Stelle_harm
  | Mar7th_pres
  | Danheng
  | Himeko
  | Welt
  | Kafka
  | Silver_wolf
  | Arlan
  | Asta
  | Herta
  | Bronya
  | Seele
  | Serval
  | Gepard
  | Natasha
  | Pela
  | Clara
  | Sampo
  | Hook
  | Lynx
  | Luka
  | Topaz
  | Qingque
  | Tingyun
  | Luocha
  | Jingyuan
  | Blade
  | Sushang
  | Yukong
  | Fuxuan
  | Yanqing
  | Guinaifen
  | Bailu
  | Jingliu
  | Dhil
  | Xueyi
  | Hanya
  | Huohuo
  | Jiaoqiu
  | Yunli
  | Mar7th_hunt
  | Gallagher
  | Argenti
  | Ruanmei
  | Aventurine
  | Drratio
  | Sparkle
  | Blackswan
  | Acheron
  | Robin
  | Firefly
  | Misha
  | Jade
  | Boothill
  | Lingsha
  | Feixiao
  | Rappa

let get_av c = match c 
  with
  | Caelus_des -> 8001l
  | Stelle_des -> 8002l
  | Caelus_pres -> 8003l
  | Stelle_pres -> 8004l
  | Caelus_harm -> 8005l
  | Stelle_harm -> 8006l
  | Mar7th_pres -> 1001l
  | Danheng -> 1002l
  | Himeko -> 1003l
  | Welt -> 1004l
  | Kafka -> 1005l
  | Silver_wolf -> 1006l
  | Arlan -> 1008l
  | Asta -> 1009l
  | Herta -> 1013l
  | Bronya -> 1101l
  | Seele -> 1102l
  | Serval -> 1103l
  | Gepard -> 1104l
  | Natasha -> 1105l
  | Pela -> 1106l
  | Clara -> 1107l
  | Sampo -> 1108l
  | Hook -> 1109l
  | Lynx -> 1110l
  | Luka -> 1111l
  | Topaz -> 1112l
  | Qingque -> 1201l
  | Tingyun -> 1202l
  | Luocha -> 1203l
  | Jingyuan -> 1204l
  | Blade -> 1205l
  | Sushang -> 1206l
  | Yukong -> 1207l
  | Fuxuan -> 1208l
  | Yanqing -> 1209l
  | Guinaifen -> 1210l
  | Bailu -> 1211l
  | Jingliu -> 1212l
  | Dhil -> 1213l
  | Xueyi -> 1214l
  | Hanya -> 1215l
  | Huohuo -> 1217l
  | Jiaoqiu -> 1218l
  | Feixiao -> 1220l
  | Yunli -> 1221l
  | Lingsha -> 1222l
  | Mar7th_hunt -> 1224l
  | Gallagher -> 1301l
  | Argenti -> 1302l
  | Ruanmei -> 1303l
  | Aventurine -> 1304l
  | Drratio -> 1305l
  | Sparkle -> 1306l
  | Blackswan -> 1307l
  | Acheron -> 1308l
  | Robin -> 1309l
  | Firefly -> 1310l
  | Misha -> 1312l
  | Jade -> 1314l
  | Boothill -> 1315l
  | Rappa -> 1317l

(* --------------- lightcone ids --------------- *)
type weapons =
  | Arrows
  | Cornucopia
  | Collapsing_sky
  | Amber
  | Void
  | Chorus
  | Data_bank
  | Darting_arrow
  | Fine_fruit
  | Shattered_home
  | Defense
  | Loop
  | Meshing_cogs
  | Passkey
  | Adversarial
  | Multiplication
  | Mutual_demise
  | Pioneering
  | Hidden_shadow
  | Mediation
  | Sagacity
  | Postop_conversation
  | Good_night_and_sleep_well
  | Day_one_of_my_new_life
  | Only_silence_remains
  | Memories_of_the_past
  | The_moles_welcome_you
  | The_birth_of_the_self
  | Shared_feeling
  | Eyes_of_the_prey
  | Landaus_choice
  | Swordplay
  | Planetary_rendezvous
  | A_secret_vow
  | Make_the_world_clamor
  | Perfect_timing
  | Resolution_shines_as_pearls_of_sweat
  | Trend_of_the_universal_market
  | Subscribe_for_more
  | Dance_dance_dance
  | Under_the_blue_sky
  | Geniuses_repose
  | Quid_pro_quo
  | Fermata
  | We_are_wildfire
  | River_flows_in_spring
  | Past_and_future
  | Woof_walk_time
  | The_seriousness_of_breakfast
  | Warmth_shortens_cold_nights
  | We_will_meet_again
  | This_is_me
  | Return_to_darkness
  | Carve_the_moon_weave_the_clouds
  | Nowhere_to_run
  | Today_is_another_peaceful_day
  | What_is_real
  | Dreamville_adventure
  | Final_victor
  | Flames_afar
  | Destinys_threads_forewoven
  | The_day_the_cosmos_fell
  | Its_showtime
  | Indelible_promise
  | Concert_for_two
  | Boundless_choreo
  | After_the_charmony_fall
  | Poised_to_bloom
  | Before_the_tutorial_mission_starts
  | Hey_over_here
  | For_tomorrows_journey
  | Night_on_the_milky_way
  | In_the_night
  | Something_irreplaceable
  | But_the_battle_isnt_over
  | In_the_name_of_the_world
  | Moment_of_victory
  | Patience_is_all_you_need
  | Incessant_rain
  | Echoes_of_the_coffin
  | The_unreachable_side
  | Before_dawn
  | She_already_shut_her_eyes
  | Sleep_like_the_dead
  | Time_waits_for_no_one
  | I_shall_be_my_own_sword
  | Brighter_than_the_sun
  | Worrisome_blissful
  | Night_of_fright
  | An_instant_before_a_gaze
  | Past_self_in_mirror
  | Baptism_of_pure_thought
  | Earthly_escapade
  | Reforged_remembrance
  | Inherently_unjust_destiny
  | Along_the_passing_shore
  | Whereabouts_should_dreams_rest
  | Flowing_nightglow
  | Sailing_towards_a_second_life
  | Yet_hope_is_priceless
  | Those_many_springs
  | Dance_at_sunset
  | On_the_fall_of_an_aeon
  | Cruising_in_the_stellar_sea
  | Texture_of_memories
  | Solitary_healing
  | Eternal_calculus
  | Dreams_montage
  | Ninja_record_sound_hunt
  | Ninjutsu_inscription_dazzling_evilbreaker
  | Scent_alone_stays_true
  | I_venture_forth_to_hunt

let get_lc w =  match w
  with
  | I_venture_forth_to_hunt -> 23031l
  | Scent_alone_stays_true -> 23032l
  | Arrows -> 20000l
  | Cornucopia -> 20001l
  | Collapsing_sky -> 20002l
  | Amber -> 20003l
  | Void -> 20004l
  | Chorus -> 20005l
  | Data_bank -> 20006l
  | Darting_arrow -> 20007l
  | Fine_fruit -> 20008l
  | Shattered_home -> 20009l
  | Defense -> 20010l
  | Loop -> 20011l
  | Meshing_cogs -> 20012l
  | Passkey -> 20013l
  | Adversarial -> 20014l
  | Multiplication -> 20015l
  | Mutual_demise -> 20016l
  | Pioneering -> 20017l
  | Hidden_shadow -> 20018l
  | Mediation -> 20019l
  | Sagacity -> 20020l
  | Postop_conversation -> 21000l
  | Good_night_and_sleep_well -> 21001l
  | Day_one_of_my_new_life -> 21002l
  | Only_silence_remains -> 21003l
  | Memories_of_the_past -> 21004l
  | The_moles_welcome_you -> 21005l
  | The_birth_of_the_self -> 21006l
  | Shared_feeling -> 21007l
  | Eyes_of_the_prey -> 21008l
  | Landaus_choice -> 21009l
  | Swordplay -> 21010l
  | Planetary_rendezvous -> 21011l
  | A_secret_vow -> 21012l
  | Make_the_world_clamor -> 21013l
  | Perfect_timing -> 21014l
  | Resolution_shines_as_pearls_of_sweat -> 21015l
  | Trend_of_the_universal_market -> 21016l
  | Subscribe_for_more -> 21017l
  | Dance_dance_dance -> 21018l
  | Under_the_blue_sky -> 21019l
  | Geniuses_repose -> 21020l
  | Quid_pro_quo -> 21021l
  | Fermata -> 21022l
  | We_are_wildfire -> 21023l
  | River_flows_in_spring -> 21024l
  | Past_and_future -> 21025l
  | Woof_walk_time -> 21026l
  | The_seriousness_of_breakfast -> 21027l
  | Warmth_shortens_cold_nights -> 21028l
  | We_will_meet_again -> 21029l
  | This_is_me -> 21030l
  | Return_to_darkness -> 21031l
  | Carve_the_moon_weave_the_clouds -> 21032l
  | Nowhere_to_run -> 21033l
  | Today_is_another_peaceful_day -> 21034l
  | What_is_real -> 21035l
  | Dreamville_adventure -> 21036l
  | Final_victor -> 21037l
  | Flames_afar -> 21038l
  | Destinys_threads_forewoven -> 21039l
  | The_day_the_cosmos_fell -> 21040l
  | Its_showtime -> 21041l
  | Indelible_promise -> 21042l
  | Concert_for_two -> 21043l
  | Boundless_choreo -> 21044l
  | After_the_charmony_fall -> 21045l
  | Poised_to_bloom -> 21046l
  | Before_the_tutorial_mission_starts -> 22000l
  | Hey_over_here -> 22001l
  | For_tomorrows_journey -> 22002l
  | Night_on_the_milky_way -> 23000l
  | In_the_night -> 23001l
  | Something_irreplaceable -> 23002l
  | But_the_battle_isnt_over -> 23003l
  | In_the_name_of_the_world -> 23004l
  | Moment_of_victory -> 23005l
  | Patience_is_all_you_need -> 23006l
  | Incessant_rain -> 23007l
  | Echoes_of_the_coffin -> 23008l
  | The_unreachable_side -> 23009l
  | Before_dawn -> 23010l
  | She_already_shut_her_eyes -> 23011l
  | Sleep_like_the_dead -> 23012l
  | Time_waits_for_no_one -> 23013l
  | I_shall_be_my_own_sword -> 23014l
  | Brighter_than_the_sun -> 23015l
  | Worrisome_blissful -> 23016l
  | Night_of_fright -> 23017l
  | An_instant_before_a_gaze -> 23018l
  | Past_self_in_mirror -> 23019l
  | Baptism_of_pure_thought -> 23020l
  | Earthly_escapade -> 23021l
  | Reforged_remembrance -> 23022l
  | Inherently_unjust_destiny -> 23023l
  | Along_the_passing_shore -> 23024l
  | Whereabouts_should_dreams_rest -> 23025l
  | Flowing_nightglow -> 23026l
  | Sailing_towards_a_second_life -> 23027l
  | Yet_hope_is_priceless -> 23028l
  | Those_many_springs -> 23029l
  | Dance_at_sunset -> 23030l
  | Dreams_montage -> 21048l
  | Ninja_record_sound_hunt -> 22003l
  | Ninjutsu_inscription_dazzling_evilbreaker -> 23033l
  | On_the_fall_of_an_aeon -> 24000l
  | Cruising_in_the_stellar_sea -> 24001l
  | Texture_of_memories -> 24002l
  | Solitary_healing -> 24003l
  | Eternal_calculus -> 24004l

(* --------------- 5 star relic ids --------------- *)
type rel =
  | Passerbys
  | Musketeers
  | Knights
  | Hunters
  | Champions
  | Guards
  | Firesmiths
  | Geniuss
  | Bands
  | Eagles
  | Thiefs
  | Wastelanders
  | Disciples
  | Messengers
  | Grand
  | Prisoners
  | Pioneers
  | Watchmakers
  | Iron
  | Valorous
  | Scholars
  | Sacerdos

type pla =
  | Hertas
  | The_xianzhou
  | The_ipcs
  | Belobogs
  | Planet
  | Salsottos
  | Talias
  | Vonwacqs
  | Taikiyan
  | Insumousus
  | Glamoths
  | Penaconys
  | Sigonias
  | Izumos
  | Durans
  | Forges
  | The_wondrous
  | Lushaka

let pc_head h = match h 
  with
  | Passerbys -> 61011l
  | Musketeers -> 61021l
  | Knights -> 61031l
  | Hunters -> 61041l
  | Champions -> 61051l
  | Guards -> 61061l
  | Firesmiths -> 61071l
  | Geniuss -> 61081l
  | Bands -> 61091l
  | Eagles -> 61101l
  | Thiefs -> 61111l
  | Wastelanders -> 61121l
  | Disciples -> 61131l
  | Messengers -> 61141l
  | Grand -> 61151l
  | Prisoners -> 61161l
  | Pioneers -> 61171l
  | Watchmakers -> 61181l
  | Iron -> 61191l
  | Valorous -> 61201l
  | Scholars -> 61221l
  | Sacerdos -> 61211l
  (* | _ -> failwith "error pc_head relic set not found" *)

let pc_hand h = match h 
  with
  | Passerbys -> 61012l
  | Musketeers -> 61022l
  | Knights -> 61032l
  | Hunters -> 61042l
  | Champions -> 61052l
  | Guards -> 61062l
  | Firesmiths -> 61072l
  | Geniuss -> 61082l
  | Bands -> 61092l
  | Eagles -> 61102l
  | Thiefs -> 61112l
  | Wastelanders -> 61122l
  | Disciples -> 61132l
  | Messengers -> 61142l
  | Grand -> 61152l
  | Prisoners -> 61162l
  | Pioneers -> 61172l
  | Watchmakers -> 61182l
  | Iron -> 61192l
  | Valorous -> 61202l
  | Scholars -> 61222l
  | Sacerdos -> 61212l
  (* | _ -> failwith "error pc_hand relic set not found" *)

let pc_body b = match b 
  with
  | Passerbys -> 61013l
  | Musketeers -> 61023l
  | Knights -> 61033l
  | Hunters -> 61043l
  | Champions -> 61053l
  | Guards -> 61063l
  | Firesmiths -> 61073l
  | Geniuss -> 61083l
  | Bands -> 61093l
  | Eagles -> 61103l
  | Thiefs -> 61113l
  | Wastelanders -> 61123l
  | Disciples -> 61133l
  | Messengers -> 61143l
  | Grand -> 61153l
  | Prisoners -> 61163l
  | Pioneers -> 61173l
  | Watchmakers -> 61183l
  | Iron -> 61193l
  | Valorous -> 61203l
  | Scholars -> 61223l
  | Sacerdos -> 61213l
  (* | _ -> failwith "error pc_body relic set not found" *)

let pc_foot f = match f 
  with
  | Passerbys -> 61014l
  | Musketeers -> 61024l
  | Knights -> 61034l
  | Hunters -> 61044l
  | Champions -> 61054l
  | Guards -> 61064l
  | Firesmiths -> 61074l
  | Geniuss -> 61084l
  | Bands -> 61094l
  | Eagles -> 61104l
  | Thiefs -> 61114l
  | Wastelanders -> 61124l
  | Disciples -> 61134l
  | Messengers -> 61144l
  | Grand -> 61154l
  | Prisoners -> 61164l
  | Pioneers -> 61174l
  | Watchmakers -> 61184l
  | Iron -> 61194l
  | Valorous -> 61204l
  | Scholars -> 61224l
  | Sacerdos -> 61214l
  (* | _ -> failwith "error pc_foot relic set not found" *)

let pc_orb o = match o
  with
  | Hertas -> 63015l
  | The_xianzhou -> 63025l
  | The_ipcs -> 63035l
  | Belobogs -> 63045l
  | Planet -> 63055l
  | Salsottos -> 63065l
  | Talias -> 63075l
  | Vonwacqs -> 63085l
  | Taikiyan -> 63095l
  | Insumousus -> 63105l
  | Glamoths -> 63115l
  | Penaconys -> 63125l
  | Sigonias -> 63135l
  | Izumos -> 63145l
  | Durans -> 63155l
  | Forges -> 63165l
  | The_wondrous -> 63185l
  | Lushaka -> 63175l
  (* | _ -> failwith "error pc_orb relic set not found" *)

let pc_rope r = match r 
  with
  | Hertas -> 63016l
  | The_xianzhou -> 63026l
  | The_ipcs -> 63036l
  | Belobogs -> 63046l
  | Planet -> 63056l
  | Salsottos -> 63066l
  | Talias -> 63076l
  | Vonwacqs -> 63086l
  | Taikiyan -> 63096l
  | Insumousus -> 63106l
  | Glamoths -> 63116l
  | Penaconys -> 63126l
  | Sigonias -> 63136l
  | Izumos -> 63146l
  | Durans -> 63156l
  | Forges -> 63166l
  | The_wondrous -> 63186l
  | Lushaka -> 63176l
  (* | _ -> failwith "error pc_rope relic set not found" *)

(* --------------- relic affix ids --------------- *)
type relic_type =
  | Hpp    (* From body_type, foot_type, orb_type, and rope_type *)
  | Atkp   (* From body_type, foot_type, orb_type, and rope_type *)
  | Defp   (* From body_type, foot_type, orb_type, and rope_type *)
  | Cr     (* From body_type *)
  | Cd     (* From body_type *)
  | Ohb    (* From body_type *)
  | Ehr    (* From body_type *)
  | Spd    (* From foot_type *)
  | Phy    (* From orb_type *)
  | Fire   (* From orb_type *)
  | Ice    (* From orb_type *)
  | Lng    (* From orb_type *)
  | Wind   (* From orb_type *)
  | Qua    (* From orb_type *)
  | Img    (* From orb_type *)
  | Be     (* From rope_type *)
  | Er     (* From rope_type *)
  | Hp
  | Atk
  | Def
  | Eres

let h_main t = match t
  with   
  | Hp -> 1l
  | Atk -> 1l
  | _ -> failwith "Unexpected value in h_main"
  
let b_main t = match t 
  with
  | Hpp -> 1l
  | Atkp -> 2l
  | Defp -> 3l
  | Cr -> 4l
  | Cd -> 5l
  | Ohb -> 6l
  | Ehr -> 7l
  | _ -> failwith "Unexpected value in b_main"

let f_main t = match t
  with
  | Hpp -> 1l
  | Atkp -> 2l
  | Defp -> 3l
  | Spd -> 4l
  | _ -> failwith "Unexpected value in f_main"

let o_main t = match t
  with
  | Hpp -> 1l
  | Atkp -> 2l
  | Defp -> 3l
  | Phy -> 4l
  | Fire -> 5l
  | Ice -> 6l
  | Lng -> 7l
  | Wind -> 8l
  | Qua -> 9l
  | Img -> 10l
  | _ -> failwith "Unexpected value in o_main"

let r_main t = match t
  with
  | Be -> 1l
  | Er -> 2l
  | Hpp -> 3l
  | Atkp -> 4l
  | Defp -> 5l
  | _ -> failwith "Unexpected value in r_main"

let sub t = match t
  with
  | Hp -> 1l
  | Atk -> 2l
  | Def -> 3l 
  | Hpp -> 4l 
  | Atkp -> 5l 
  | Defp -> 6l 
  | Spd -> 7l
  | Cr -> 8l 
  | Cd -> 9l 
  | Ehr -> 10l 
  | Eres -> 11l 
  | Be -> 12l
  | _ -> failwith "Unexpected value in sub"