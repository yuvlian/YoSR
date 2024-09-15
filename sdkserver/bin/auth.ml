module S = Tiny_httpd

let risky_api_check _req =
  S.Response.make_string (Ok
    "{\"data\": {}, \"message\": \"OK\", \"retcode\": 0}")

let mdk_shield_login _req =
  S.Response.make_string (Ok
    "{\"data\": {\"account\": {\"area_code\": \"**\", \"email\": \"YoSR\", \
      \"country\": \"ID\", \"is_email_verify\": \"1\", \"token\": \"camel\", \
      \"uid\": \"1\"}, \"device_grant_required\": false, \
      \"reactivate_required\": false, \"realperson_required\": false, \
      \"safe_mobile_required\": false}, \"message\": \"OK\", \"retcode\": 0}")

let granter_login_v2 _req =
  S.Response.make_string (Ok
    "{\"data\": {\"account_type\": 1, \"combo_id\": \"1\", \"combo_token\": \"camel\", \
      \"data\": \"{\\\"guest\\\": false}\", \"heartbeat\": false, \"open_id\": \"1\"}, \
      \"message\": \"OK\", \"retcode\": 0}")
