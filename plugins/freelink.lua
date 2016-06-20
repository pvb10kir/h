local function run(msg, matches)
local hyperlink = matches[1]
local hypertext = matches[2]
local group_link = data[tostring(msg.to.id)]['settings']['set_link']
if is_momod(msg) then
local text = '*Link for* _'..msg.to.title..'_ :\n😐😐😐😐😐😐😐😐😐\n😐😐😐😐😐😐😐😐😐\n😐😐😐😐😐😐😐😐😐\n😐'..hypertext..'😐['..hyperlink..']('..group_link..')\n😐😐😐😐😐\n[Bot Dev](http://telegram.me/mrblacklife)\n[Ch For Free Groups](http://telegram.me/spheroch)'
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
end
return {
description = 'hyper link For free groups',
usage = { 
'!freelink [link text] [text]',
},
patterns = {
'^![Ff]reelink (.*) (.*)',
},
run = run,
moderated = true
}
