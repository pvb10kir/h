do
local function run(msg, matches)

  delete_msg(msg.id, ok_cb, true)
    return "🔖 (@"..msg.from.username..") your message was deleted (number msg chracters not allowed)"
 end
local function run(msg, matches)
  if ( tonumber(string.len(matches[1])) > 350 ) then
  delete_msg(msg.id, ok_cb, true)
  if (is_momod(msg)) then
      return nil
  else
     delete_msg(msg.id, ok_cb, true)
  return "🔖 (@"..msg.from.username..") your message was deleted (number msg chracters not allowed)"
    end
  end 
  if matches[1]:lower() == 'setchar' then
      if not is_momod(msg) then
        return
      end
      if tonumber(matches[2]) < 1 or tonumber(matches[2]) > 2000 then
        local text = "Range is [1-2000]"
        return reply_msg(msg.id, text, ok_cb, false)
      end
  -- if ( tonumber(string.len(matches[1])) > 650 ) then
  delete_msg(msg.id, ok_cb, true)
 if (is_momod(msg)) then
      return nil
  else
      channel_kick("channel#id"..msg.to.id, "user#id"..msg.from.id, ok_cb, false)
  return "🔖User (@"..msg.from.username..") removed from group \nreason ; send spam (number chracters not allowed spamming!)"
    end
  end 
end
end
return {
  patterns = {
    "^(.*)",
    "^(.+)",
  "^[#/](setchar) (.*)",
  },
  run = run,
}
end
