function run(msg, matches)
local receiver = get_receiver(msg)
if matches[1]:lower() == 'leave' and matches[2] and is_sudo(msg) then 
leave_channel(receiver,matches[2], ok_cb, false)
end
end
return {
patterns = {
'^[#!/](leave)(.*)$',
},

run = run
}
