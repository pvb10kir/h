local function run(msg, matches, callback, extra)
if matches[1]:lower() == 'setcmd' and matches[2];lower() == 'fa' then
        if is_owner(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:set(hash, fa)
             return 'دستورات گروه تنظیم شد روی فارسی .'
  end
end
        end
return { 
patterns = { 
'^[!/#]setcmd fa$',
},
run = run,
}
