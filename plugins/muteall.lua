
do
local function pre_process(msg)
 local hash = 'muteall:'..msg.to.id
  if redis:get(hash) and msg.to.type == 'channel' and not is_momod(msg)  then
   delete_msg(msg.id, ok_cb, false)
       end
    return msg
 end
 
local function run(msg, matches)
 if matches[1] == 'muteall' and is_momod(msg) then
       local hash = 'muteall:'..msg.to.id
       if not matches[2] then
              redis:set(hash, true)
             return "mute all has been enabled"
 else
-- by @Blackwolf_admin 
local hour = string.gsub(matches[2], 'h', '')
 local num1 = tonumber(hour) * 3600
local minutes = string.gsub(matches[3], 'm', '')
 local num2 = tonumber(minutes) * 60
local second = string.gsub(matches[4], 's', '')
 local num3 = tonumber(second) 
local num4 = tonumber(num1 + num2 + num3)
redis:setex(hash, num4, true)
 return "گروه تعطیل شد به مدت\n⏺ ساعت : "..matches[2].."\n⏺ دقیقه : "..matches[3].." \n⏺ ثانیه : "..matches[4]..""
 end
 end
if redis:ttl(hash) == 1 then
return 'گروه ازاد شد و ممبر ها اجازه چت کردن دارند'..matches[5]..'.'
end
if matches[1] == 'unmute all' and is_momod(msg) then
               local hash = 'muteall:'..msg.to.id
        redis:del(hash)
          return ""
  end
end
return {
   patterns = {
     -- '^[/!#](muteall)$',
      '^[/!#](unmute all)$',
   '^[/!#](muteall) (.*) (.*) (.*) (.*)$',
 },
run = run,
  pre_process = pre_process
}
end
