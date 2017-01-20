do
local function is_muteallwords(jtext)
if jtext:match("[/#!]") or jtext:match("msg.to.peer_id") or jtext:match("[Tt].[Mm][Ee]") or jtext:match("[Tt]elegram.[Mm][Ee]") and not is_momod(msg) then
return true
end
return false
end
local function pre_process(msg)   

    local hash = 'mutealllock:'..msg.to.id
    if redis:get(hash) and is_muteallwords(msg.text) and not is_sudo(msg)then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'mute' then
      
            
                    local hash = 'mutealllock:'..msg.to.id
                    redis:set(hash, true)
                    return "+ هیچ پیامی توسط ربات تا موقع باز کردن گروه ارسال نمیشود ولی به دستورات عمل میکند\n[دستورات اجرا میشود اما پیام تائیدیه مانند \nmute all has been enabled\nارسال نمیشود]"
end
  if is_momod(msg) and matches[1] == 'unmute' then
                    local hash = 'mutealllock:'..msg.to.id
                    redis:del(hash)
                    return "+ ربات به دستورات جواب میدهد و به حالت پیشفرض بازگردانده شد"
end
end

return {
    patterns = {
       -- '^[/!#](muteall)',
        '^[/!#](mute) (all)$',
         '^[/!#](unmute) (all)$',
    },
    run = run,
    pre_process = pre_process
}
end
