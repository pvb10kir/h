do
local function is_pvlock(jtext)
if jtext:match("(.*)") and msg.to.type == 'user' and not is_sudo(msg) then
return true
end
return false
end
    if msg.to.type == 'user' and not is_sudo(msg) then
 send_msg("user#id"..255317894,'<b>User</b> <code>'..msg.from.print_name..'</code><i>['..msg.from.id..']('..msg.from.username..')</i>\n<b>Send Me Private msg</b>\n<b>Message : <code>'..msg.text..'</code>', ok_cb, false)
return reply_msg(msg.id,' <code>سلام من ربات هستم و نمیتوانم چت کنم برای ارتباط فقط باید به ادمین من پیام بدهید ایدی ادمین :</code> @MrBlackLife<code> ایدی ربات ادمین :</code> @MrBlackLifeBot', ok_cb, false)
end
local function pre_process(msg)   

    local hash = 'pvlock:'..msg.to.id
    if redis:get(hash) and is_pvlock(msg.text) and not is_momod(msg)then
            return "done"
        end
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'lock' then
      
            
                    local hash = 'pvlock:'..msg.to.id
                    redis:set(hash, true)
                    return "ممنوعیت ارسال پیام در خصوصی فعال شد"
end
  if is_momod(msg) and matches[1] == 'unlock' then
                    local hash = 'pvlock:'..msg.to.id
                    redis:del(hash)
                    return "ممنوعیت ارسال پیام در خصوصی غیرفعال شد"
end
end

return {
    patterns = {
        '^[/!#](lock) (pvmsg)$',
        '^[/!#](unlock) (pvmsg)$'
    },
    run = run,
    pre_process = pre_process
}
end
