local function run(msg, matches)
if matches[1]:lower() == 'setcmd' then
        if is_owner(msg) then
            hash = 'cmdset:'..msg.to.id
            redis:set(hash, matches[2])
                        reply_msg(msg.id, 'cmds set to '..matches[2]..' .', ok_cb, false)
        end
  end
end
return { 
patterns = { 
'^[!/#]setcmd (.*)$',
},
run = run,
}
end
