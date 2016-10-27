local function run(msg, matches)
if not is_sudo(msg) then
return false
end
local bot_id = 267388512 --for example 271787100
if matches[1] == "leave" then
chat_del_user("chat#id"..matches[2], 'user#id'..bot_id, ok_cb, false)
leave_channel("channel#id"..matches[2], ok_cb, false)
send_large_msg('channel#id'..matches[2], 'ربات به دستور سودو از گروه خارج شد \nمراجعه کنید @MrBlackLife برای اطلاعات بیشتر به\n@Sphero_Ch' )
return "Success! Bot leave from "..matches[2]
end
end
return {
  patterns = {
     "^[!#/](leave)_(.*)$"
  },
     run = run
}
