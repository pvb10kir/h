local function parsed_url(link)
  local parsed_link = URL.parse(link)
  local parsed_path = URL.parse_path(parsed_link.path)
  return parsed_path[2]
end

local function run(msg,matches)
			local mrblacklife = "user#id"..255317894 --Put Your Telegram-ID Here
		if msg.service and msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(our_id) then
			local texi_add = 'User '..string.gsub(msg.from.print_name, '_', ' ')..' ['..msg.from.id..'] Add me to '..string.gsub(msg.to.print_name, '_', ' ')..' ['..msg.to.id..']\n@Sphero_Ch'
	send_msg(mrblacklife, texi_add, ok_cb, false)
	end
		if msg.service and msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(our_id) then
			local texi_del = 'User '..string.gsub(msg.from.print_name, '_', ' ')..' ['..msg.from.id..'] Remove me from '..string.gsub(msg.to.print_name, '_', ' ')..' ['..msg.to.id..']\n@Sphero_Ch'
		send_msg(mrblacklife, texi_del, ok_cb, false)
	end
		if matches[1] == "import" and is_admin(msg) then --join by group link
			local hash = parsed_url(matches[2])
			local texi = string.gsub(msg.from.print_name, '_', ' ')..' Invited Me By This Link\n'..matches[2]
		send_msg(mrblacklife, texi, ok_cb, false)
			import_chat_link(hash,ok_cb,false)
		end
	end
	return {
		patterns = { 
	"^!!tgservice (chat_add_user)$",
	"^!!tgservice (chat_del_user)$",
	"^[#!/](import) (.*)$",
  },
	run = run
  }
