local function run(msg, matches)
if matches[1] == '/kickme' then
local hash = 'kick:'..msg.to.id..':'..msg.from.id
     redis:set(hash, "waite")
local hash2 = 'group:'..msg.to.id
    local group_lang = redis:hget(hash2,'lang')
    if group_lang then
			local text = 'سلام\nایا مطمين هستید که میخواهید از پروه خارج شوید؟\nاگر بله /yes \n. اگر نه /no \nرا بفرستید'
			send_api_msg(msg, get_receiver_api(msg), text, true, 'md')   
			else
      local text = '*Hi*,\n*Are you sure?*\n*Send Me /yes Or /no*'
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')    
end
		end
    if msg.text then
	local hash = 'kick:'..msg.to.id..':'..msg.from.id
      if msg.text:match("^/yes$") and redis:get(hash) == "waite" then
	  redis:set(hash, "ok")
	elseif msg.text:match("^/no$") and redis:get(hash) == "waite" then
		local hash2 = 'group:'..msg.to.id
    local group_lang = redis:hget(hash2,'lang')
    if group_lang then
				local text = 'باشه من شما را اخراج نخواهم کرد'
					send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
				else
				local text = '*ok*, _ you are free as a bird_'
	send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
	  redis:del(hash, true)
end
      end
    end
	local hash = 'kick:'..msg.to.id..':'..msg.from.id
	 if redis:get(hash) then
        if redis:get(hash) == "ok" then
         channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false)
				local text = 'کاربر به دستور خود از گروه اخراج شد'
				    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')  
				else
         local text = '*User* *Succefulli Kicked*'
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')   
 end
      end
    end
end
return {
  patterns = {
  "^/kickme$",
  "^/yes$",
  "^/no$"
  },
  run = run,
}
