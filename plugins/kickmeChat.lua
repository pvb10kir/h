local function run(msg)
local text = [[*!kickme 📛
kickme 📛
/kickme 🎊
---------
!yes 📛
yes 📛
/yes 🎊
----------
!no 📛
no 📛
/no 🎊*]]
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
