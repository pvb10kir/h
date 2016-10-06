do
local function run(msg, matches)
local group = matches[2]
local user = msg.from.id

    if matches[1]:lower() == "join" then
       channel_invite_user("channel#id"..support, 'user#id'..user, ok_cb, false)
       send_large_msg("channel#id"..group, 'Hi @'..msg.from.username.. ' \nWelcome To '..group..'\n@Sphero_Ch')
       return "You Have Been Added To Teamus Support"
    end
 end
return {
  patterns = {
    "^([Jj]oin (.*))$",
  },
  run = run
}
end
