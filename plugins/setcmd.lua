local function run(msg, matches)
if matches[1]:lower() == 'setcmd' then
        if is_owner(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:hset(hash, matches[2])
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
