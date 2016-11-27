do
local function is_pvlock(jtext)
if jtext:match("(.*)") and msg.to.type == 'user' and not is_sudo(msg) then
return true
end
return false
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
