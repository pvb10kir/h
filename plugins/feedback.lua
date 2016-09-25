do local function run(msg, matches)
	local data = load_data(_config.moderation.data)
	local settings = data[tostring(msg.to.id)]['settings']
	local group_link = data[tostring(msg.to.id)]['settings']['set_link']
	if not group_link then
		group_link = "لينک ندارد"
	end
	local message = 'new feedback\n'
	
	.."> Name  "..msg.from.print_name.."\n"
	.."> Username @"..msg.from.username.."\n"
	.."> id  "..msg.from.id.."\n"
	.."> group link  "..group_link.."\n"	
	.."\n"..matches[1]
	local userid = 'user#id255317894'
	send_large_msg(userid, message)
		local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
			return 'پیام شما برای تیم پشتیبانی ارسال شد'
			else
	return "feedback sent to @MrBlackLife"
end
		end

return {
	description = "s",
	usage = {
		"feedback (pm) : ارسال نظر به سودو",
	},
	patterns = {
		"^![Ff]eedback (.*)$",
	},
	run = run,
}
end
