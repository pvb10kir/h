do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
local user = 245112043 -- اینجا شناسه عددی خودتان را قرار بدید
user = 'user#id'..user
end
if is_owner(msg) then
    if msg.from.username ~= nil then
      if string.find(msg.from.username , 'MrBlackLife') then --اینجا دقیقا یوزرنیم  bot
          return ""
          end
if msg.to.type == 'channel' or 'chat' then
local channel = 'channel#id'..msg.to.id
chat_add_user(chat, user, ok_cb, false)
channel_invite(channel, user, ok_cb, false)
return ""
end
elseif not is_owner(msg) then
return ''
end
end
end
return {
description = "insudo",
usage = {
"!addhelper",
"add" },
patterns = {
"^[!/]add$",
"^(.*)$",
},
run = run
}
end
