local function run(msg)
    local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
        local text = 'کار میکنند (/) دستورات این پلاگین فقط با '
            send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
        else
local text = [[_plugin kickme Patterns_
_Only work by_ *[/]*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
    end
return {
 patterns = {
"^!kickme$",
"^kickme$",
"^!yes$",
"^yes$",
"^!no$",
"^no$",
},
 run = run }
