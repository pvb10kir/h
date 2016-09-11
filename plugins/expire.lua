
local function pre_process(msg)
  local timetoexpire = 'unknown'
  local expiretime = redis:hget ('expiretime', get_receiver(msg))
  local now = tonumber(os.time())
  if expiretime then    
    timetoexpire = math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1
    if tonumber("0") > tonumber(timetoexpire) and not is_sudo(msg) then
    if msg.text:match('/') then
local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
      return reply_msg(msg.id, 'تاریخ اتقضای گروه به پایان رسید.\n ربات دیگر در گروه شما کار نخواهد کرد\nتمدید در @Sphero_Bot', ok_cb, false)
    else
      return reply_msg(msg.id, 'تاریخ اتقضای گروه به پایان رسید.\n ربات دیگر در گروه شما کار نخواهد کرد\nتمدید در @Sphero_Bot', ok_cb, false)
    end
end
  end
  if tonumber(timetoexpire) == 0 then
    if redis:hget('expires0',msg.to.id) then return msg end
    reply_msg(get_receiver(msg), '0 روز تا پایان تاریخ انقضای گروه باقی مانده است\nنسبت به تمدید اقدام کنید.\nنسبت به تمدید اقدام کنید.\nتمدید با مراجعه به @Sphero_Bot\n!!بخش امور ربات اسفرو/تمدید گپ')
    redis:hset('expires0',msg.to.id,'5')
  end
  if tonumber(timetoexpire) == 1 then
    if redis:hget('expires1',msg.to.id) then return msg end
    send_large_msg(get_receiver(msg), '1 روز تا پایان تاریخ انقضای گروه باقی مانده است\nنسبت به تمدید اقدام کنید.\nنسبت به تمدید اقدام کنید.\nتمدید با مراجعه به @Sphero_Bot\n!!بخش امور ربات اسفرو/تمدید گپ')
    redis:hset('expires1',msg.to.id,'5')
  end
  if tonumber(timetoexpire) == 2 then
    if redis:hget('expires2',msg.to.id) then return msg end
    send_large_msg(get_receiver(msg), '2 روز تا پایان تاریخ انقضای گروه باقی مانده است\nنسبت به تمدید اقدام کنید.\nنسبت به تمدید اقدام کنید.\nتمدید با مراجعه به @Sphero_Bot\n!!بخش امور ربات اسفرو/تمدید گپ')
    redis:hset('expires2',msg.to.id,'5')
  end
  if tonumber(timetoexpire) == 3 then
    if redis:hget('expires3',msg.to.id) then return msg end
    send_large_msg(get_receiver(msg), '3 روز تا پایان تاریخ انقضای گروه باقی مانده است\nنسبت به تمدید اقدام کنید.\nنسبت به تمدید اقدام کنید.\nتمدید با مراجعه به @Sphero_Bot\n!!بخش امور ربات اسفرو/تمدید گپ')
    redis:hset('expires3',msg.to.id,'5')
  end
  if tonumber(timetoexpire) == 4 then
    if redis:hget('expires4',msg.to.id) then return msg end
    send_large_msg(get_receiver(msg), '4 روز تا پایان تاریخ انقضای گروه باقی مانده است\nنسبت به تمدید اقدام کنید.\nنسبت به تمدید اقدام کنید.\nتمدید با مراجعه به @Sphero_Bot\n!!بخش امور ربات اسفرو/تمدید گپ')
    redis:hset('expires4',msg.to.id,'5')
  end
  if tonumber(timetoexpire) == 5 then
    if redis:hget('expires5',msg.to.id) then return msg end
    send_large_msg(get_receiver(msg), '5 روز تا پایان تاریخ انقضای گروه باقی مانده است\nنسبت به تمدید اقدام کنید.\nتمدید با مراجعه به @Sphero_Bot\n!!بخش امور ربات اسفرو/تمدید گپ!!')
    redis:hset('expires5',msg.to.id,'5')
  end
end
return msg
end
function run(msg, matches)
  if matches[1]:lower() == 'setexpire' then
    if not is_sudo(msg) then return end
    local time = os.time()
    local buytime = tonumber(os.time())
    local timeexpire = tonumber(buytime) + (tonumber(matches[2]) * 86400)
    redis:hset('expiretime',get_receiver(msg),timeexpire)
local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
return "تاریخ گروه برای "..matches[2].." روز دیگر تمدید شد."
else
    return "I Set Group Expire For "..matches[2].." Day📍."
  end
end
end
  if matches[1]:lower() == 'expire' then
    local expiretime = redis:hget ('expiretime', get_receiver(msg))
 local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')  
 if not expiretime and group_lang then    
return 'تاریخ ست نشده است' 
else
return 'Expire Time No set for this Group'
end
      local now = tonumber(os.time())
      return (math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1) .. " 📍 Day"
  end
end
return {
  patterns = {
    "^[!/]([Ss]etexpire) (.*)$",
  "^[!/]([Ee]xpire)$",
  },
  run = run,
  pre_process = pre_process
}
