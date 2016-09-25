local function run(msg, matches, callback, extra)
if matches[1]:lower() == 'setcmd' and matches[2] then
        if is_owner(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:set(hash, matches[2])
             return 'دستورات گروه تنظیم شد روی '..matches[2]..' .'
  end
end
        end
return { 
patterns = { 
'^[!/#]setcmd (.*)$',
},
run = run,
}
