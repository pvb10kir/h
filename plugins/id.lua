do function run(msg, matches)
   local hash = 'groupcmds:'..msg.to.id
    local group_cmds = redis:hget(hash,'cmds')
if matches[1]:lower() == 'ایدی' or 'id' then
local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
if redis:get("id:"..msg.to.id..":"..msg.from.id) then
return "فقط در هر دقیقه یک بار میتوانید استفاده کنید"
end
redis:setex("id:"..msg.to.id..":"..msg.from.id, 60, true)
local text = "["..msg.from.print_name.."](https://Telegram.Me/"..(msg.from.username or 'sphero_ch')..")\n*lایدی شماl* : _"..msg.from.id.."_\n*lایدی گروهl :* _"..msg.to.id.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
else
redis:setex("id:"..msg.to.id..":"..msg.from.id, 60, true)
local text = "["..msg.from.print_name.."](https://Telegram.Me/"..(msg.from.username or 'sphero_ch')..")\n*Your *#*ID* : _"..msg.from.id.."_\n*Group *#*ID :* _"..msg.to.id.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
end
end
return {
description = "show your id",
usage = {
moderator = {
"!id : show your userid and information" },
},
patterns = {
"^[!/#]([Ii][Dd])$",
"^ایدی$",
-- "^[Ii][Dd]$", --For lock cmds
},
run = run
}
end
