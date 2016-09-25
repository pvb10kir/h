local function run(msg, matches, callback, extra)
if matches[1]:lower() == 'setcmd' and matches[2] then
        if is_owner(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:set(hash, matches[2])
local hash2 = 'group:'..msg.to.id
    local group_lang = redis:hget(hash2,'lang')
    if group_lang then
             return 'دستورات گروه تنظیم شد روی '..matches[2]..' .'
else
    return 'done cmds set to '..matches[2]..' .'
        end
  end
end
return { 
patterns = { 
'^[!/#]setcmd (.*)$',
},
run = run,
}
