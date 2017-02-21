local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" Last Messages Has Been Removed!', ok_cb, false)
  else
    send_msg(extra.chatid, 'ℹ️Msgs Has Been Removed!', ok_cb, false)
  end
end
local function run(msg, matches)
       if redis:get("id:"..msg.to.id..":"..msg.from.id) then
     local wtf = redis:ttl("id:"..msg.to.id..":"..msg.from.id)
          send_api_msg(msg, get_receiver_api(msg), '`برای جلوگیری از هنگ شدن ربات *"..x.."*\nثانیه دیگر امتحان کنید.`', true, 'md')
    else
    redis:setex("id:"..msg.to.id..":"..msg.from.id, 10, true
  if matches[1] == 'rmsg' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 10000 or tonumber(matches[2]) < 1 then
        return "Eror"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "ℹ️Only For The SuperGroups"
    end
  else
    return "ℹ️Only For The Owner"
  end
end

return {
    patterns = {
        '^[/!#](rmsg) (%d*)$'
    },
    run = run
}
