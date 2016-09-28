   function run(msg, matches)
if matches[1]:lower() == 'f2a' and msg.reply_id then
local pm = msg.reply_id
    local data = load_data(_config.moderation.data)
local groups = 'groups'
      for k,v in pairs(data[tostring(groups)]) do
        chat_id =  v
        local chat = 'chat#id'..chat_id
        local channel = 'channel#id'..chat_id
      fwd_msg(chat,pm,ok_cb,false)
fwd_msg(channel,pm,ok_cb,false)
end
  end
      end 
return {
  patterns = {
"^(f2a)$",
  },
  run = run
  }
