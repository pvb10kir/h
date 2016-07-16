local function run(msg)
local text = [[*!yes 📛
yes 📛
/yes 🎊*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^!yes$",
"^yes$",
},
 run = run }
