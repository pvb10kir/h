local function run(msg)
local text = [[_plugin kickme Patterns_
_Only work by_ *[/]*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
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
