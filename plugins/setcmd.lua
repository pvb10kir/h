local function run(msg, matches)
if matches[1]:lower() == 'setcmd' and is_momod(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:hset(hash, matches[2])
             return 'دستورات گروه تنظیم شد روی فارسی .'
  end
end
        end
return { 
patterns = { 
'^[!/#]setcmd (.*)$',
},
run = run,
}
