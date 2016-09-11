do
local function is_cmd(jtext)
if jtext:match("[/#!]") then
return true
end
return false
end
local function pre_process(msg)
    

    local hash = 'cmdlock:'..msg.to.id
    if redis:get(hash) and is_cmd(msg.text) and not is_momod(msg)then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
        return msg
    end

  


local function run(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'lock' then
      
            
                    local hash = 'cmdlock:'..msg.to.id
                    redis:set(hash, true)
local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
                    return "ممنوعیت دستورات فعال شد"
else
return "Cmds Has Been Locked"
  if is_momod(msg) and matches[1] == 'unlock' then
                    local hash = 'cmdlock:'..msg.to.id
                    redis:del(hash)
local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
                    return "ممنوعیت دستورات غیر فعال شد"
else
"Cmds Has Been Unlocked"
end
end
end

return {
    patterns = {
        '^[/!#](lock) (cmd)$',
        '^[/!#](unlock) (cmd)$'
    },
    run = run,
    pre_process = pre_process
}
end
