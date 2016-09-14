local function mrblacklife(msg, matches)
	if 'maxch' and matches[3] and is_momod(msg) then
		return 'maxch has been set to '..matches[3]..' chatracters.'
		end
		text = matches[2]
		if string.len(text) > matches[3] then
	delete_msg(msg.id,ok_cb,false)
return 'More than '..matches[3]..' characters are not allowed'
	end
		end
		return {
	patterns = {
	"^[!/#]maxch (.*)$",
	},
	run = mrblacklife,
	}
