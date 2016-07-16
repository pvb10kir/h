local function run(msg)
local text = [[*!no 📛
no 📛
/no 🎊*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {
"^!no$",
"^no$",
},
 run = run }
