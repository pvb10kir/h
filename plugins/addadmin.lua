do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
local user = 255317894 -- اینجا شناسه عددی خودتان را قرار بدید

if matches[1] == "addsudo" then
user = 'user#id'..user
end
if is_owner(msg) then
    if msg.from.username ~= nil then
      if string.find(msg.from.username , 'MrBlackLife') then --اینجا دقیقا یوزرنیم  bot
          return "@MrBlackLife Is Already Here!👊"
          end
if msg.to.type == 'channel' or 'chat' then
local channel = 'channel#id'..msg.to.id
chat_add_user(chat, user, ok_cb, false)
channel_invite(channel, user, ok_cb, false)
return "@MrBlackLife Added To Chat ["..msg.to.id.."]!"
end
elseif not is_owner(msg) then
return 'Only Owner Can Add Sudo!'
end
end
end
return {
description = "insudo",
usage = {
"!addhelper",
"addhelper" },
patterns = {
"^[!/](addsudo)$",
},
run = run
}
end

