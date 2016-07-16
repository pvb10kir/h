local function run(msg)
local text = [[*!kickme 📛
kickme 📛
/kickme 🎊*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^!kickme$",
"^kickme$",
},
 run = run }
