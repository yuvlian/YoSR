module S = Tiny_httpd
open Protocol

let query_dispatch _req =
  let region_entry =
    let default = default_region_entry
      ~name:"yo_sr"
      ~display_name:"YoSR"
      ~title:"YoSR"
      ~env_type:"2"
      ~msg:"OK"
      ~dispatch_url:"http://127.0.0.1:21000/query_gateway"
      ()
    in
    [default]
  in

  let data = default_dispatch_region_data
    ~retcode:0l
    ~msg:"OK"
    ~region_list:region_entry
    ()
  in

  let encoder = Pbrt.Encoder.create () in
  encode_pb_dispatch_region_data data encoder;

  let buf = Pbrt.Encoder.to_string encoder in
  S.Response.make_string (Ok (Base64.encode_string buf))


let query_gateway _req =
  let data = default_gateserver
    ~retcode:0l
    ~ip:"127.0.0.1"
    ~port:23301l
    ~unk1:true
    ~unk2:true
    ~unk3:true
    ~unk4:true
    ~unk5:true
    ~unk6:true
    ~unk7:true
    ~use_tcp:true
    ()
  in

  let encoder = Pbrt.Encoder.create () in
  encode_pb_gateserver data encoder;

  let buf = Pbrt.Encoder.to_string encoder in
  S.Response.make_string (Ok (Base64.encode_string buf))
