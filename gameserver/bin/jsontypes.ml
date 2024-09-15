open Yojson.Basic.Util

type sub_affix = {
  sub : string;
  cnt : int32;
  step : int32;
}

type relic_part = {
  name : string;
  lv : int32;
  m_affix : string;
  s_affix_one : sub_affix;
  s_affix_two : sub_affix;
  s_affix_three : sub_affix;
  s_affix_four : sub_affix;
}

type relic = {
  head : relic_part;
  hand : relic_part;
  body : relic_part;
  foot : relic_part;
  orb : relic_part;
  rope : relic_part;
}

type lightcone = {
  name : string;
  promo : int32;
  lv : int32;
  rank : int32;
}

type slot = {
  index : int32;
  name : string;
  lv : int32;
  rank : int32;
  promo : int32;
  max_trace : bool;
  multipath : string;
  energy : int32;
  use_tech : bool;
  lightcone : lightcone;
  relic : relic;
}

type wave = int32 list

type battle = {
  waves : wave list;
  stage_id : int32;
  rounds_limit : int32;
}

type data = {
  slot1 : slot option;
  slot2 : slot option;
  slot3 : slot option;
  slot4 : slot option;
  battle : battle option;
}

let sub_affix_of_json json =
  {
    sub = json |> member "sub" |> to_string;
    cnt = json |> member "cnt" |> to_int |> Int32.of_int;
    step = json |> member "step" |> to_int |> Int32.of_int;
  }

let relic_part_of_json json =
  {
    name = json |> member "name" |> to_string;
    lv = json |> member "lv" |> to_int |> Int32.of_int;
    m_affix = json |> member "m_affix" |> to_string;
    s_affix_one = json |> member "s_affix_one" |> sub_affix_of_json;
    s_affix_two = json |> member "s_affix_two" |> sub_affix_of_json;
    s_affix_three = json |> member "s_affix_three" |> sub_affix_of_json;
    s_affix_four = json |> member "s_affix_four" |> sub_affix_of_json;
  }

let relic_of_json json =
  {
    head = json |> member "head" |> relic_part_of_json;
    hand = json |> member "hand" |> relic_part_of_json;
    body = json |> member "body" |> relic_part_of_json;
    foot = json |> member "foot" |> relic_part_of_json;
    orb = json |> member "orb" |> relic_part_of_json;
    rope = json |> member "rope" |> relic_part_of_json;
  }

let lightcone_of_json json =
  {
    name = json |> member "name" |> to_string;
    promo = json |> member "promo" |> to_int |> Int32.of_int;
    lv = json |> member "lv" |> to_int |> Int32.of_int;
    rank = json |> member "rank" |> to_int |> Int32.of_int;
  }

let slot_of_json json =
  {
    index = json |> member "index" |> to_int |> Int32.of_int;
    name = json |> member "name" |> to_string;
    lv = json |> member "lv" |> to_int |> Int32.of_int;
    promo = json |> member "promo" |> to_int |> Int32.of_int;
    rank = json |> member "rank" |> to_int |> Int32.of_int;
    max_trace = json |> member "max_trace" |> to_bool;
    multipath = json |> member "multipath" |> to_string;
    energy = json |> member "energy" |> to_int |> Int32.of_int;
    use_tech = json |> member "use_tech" |> to_bool;
    lightcone = json |> member "lightcone" |> lightcone_of_json;
    relic = json |> member "relic" |> relic_of_json;
  }

let wave_of_json json = json |> to_list |> List.map (fun x -> x |> to_int |> Int32.of_int)

let battle_of_json json =
  {
    waves = json |> member "waves" |> to_list |> List.map wave_of_json;
    stage_id = json |> member "stage_id" |> to_int |> Int32.of_int;
    rounds_limit = json |> member "rounds_limit" |> to_int |> Int32.of_int;
  }

let data_of_json json =
  {
    slot1 = json |> member "slot1" |> to_option slot_of_json;
    slot2 = json |> member "slot2" |> to_option slot_of_json;
    slot3 = json |> member "slot3" |> to_option slot_of_json;
    slot4 = json |> member "slot4" |> to_option slot_of_json;
    battle = json |> member "battle" |> to_option battle_of_json;
  }