   function run(msg, matches)
if matches[1]:lower() == 'bchyper' and matches[2] and is_sudo(msg) then
    local data = load_data(_config.moderation.data)
local groups = 'groups'
      for k,v in pairs(data[tostring(groups)]) do
        chat_id =  v
        local chat = 'chat#id'..chat_id
        local channel = 'channel#id'..chat_id
      send_api_msg(msg, get_receiver_api(msg), matches[2], true, 'md')
send_api_msg(msg, get_receiver_api(msg), matches[2], true, 'md')
end
  end
      end 
return {
  patterns = {
"^(bchyper (.*))$",
  },
  run = run
  }
