local function run(msg, matches, callback, extra)
if matches[1]:lower() == 'setcmd' and matches[2]  == 'en' then
        if is_owner(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:set(hash, matches[2])
local hash2 = 'group:'..msg.to.id
    local group_lang = redis:hget(hash2,'lang')
    if group_lang then
             return 'دستورات گروه روی انگلیسی تنظیم شد '
else
           return 'done cmds set to en'
        end
  end
end
if matches[1]:lower() == 'setcmd' and matches[2]  == 'fa' then
    if is_owner(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:set(hash, matches[2])
local hash2 = 'group:'..msg.to.id
    local group_lang = redis:hget(hash2,'lang')
    if group_lang then
             return 'دستورات گروه روی  فارسی تنظیم شد '
else
           return 'done cmds set to fa'
        end
  end
end
end
return { 
patterns = { 
'^[!/#]setcmd en$',
'^[!/#]setcmd fa$',
},
run = run,
}
