local function run(msg, matches)
if matches[1] == '/kickme' then
local hash = 'kick:'..msg.to.id..':'..msg.from.id
     redis:set(hash, "waite")
      local text = '*Hi* _"..msg.from.username.."_\n*Are you sure?*\n*Send Me* /yes *Or* /no'
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')    
end

    if msg.text then
	local hash = 'kick:'..msg.to.id..':'..msg.from.id
      if msg.text:match("^/yes$") and redis:get(hash) == "waite" then
	  redis:set(hash, "ok")
	elseif msg.text:match("^/no$") and redis:get(hash) == "waite" then
	send_api_msg(get_receiver_api(msg), "*Ok* "..msg.from.username..",\n *You're Free As a Bird*", true, 'md')
	  redis:del(hash, true)

      end
    end
	local hash = 'kick:'..msg.to.id..':'..msg.from.id
	 if redis:get(hash) then
        if redis:get(hash) == "ok" then
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false)
         local text = '*User* ["..msg.from.print_name.."](https://telegram.me/hack_app_sec) *Succefulli Kicked*'
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')   
 end
      end
    end

return {
  patterns = {
  "/kickme",
  "^/yes$",
  "^/no$"
  },
  run = run,
}
