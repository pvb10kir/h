local function run(msg,matches)
local text = "*Your Text* : \n"..matches[1]
else
matches[1] = */kickme* 
return 'Khar khodeti'
  send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
description = "text to markdown",
usage = {
"!markdown *text* : text to bold",
"!markdown [text](link) : link to hyperlinkhyperlink",
"!markdown _text_ : text to italic",
},
patterns = {
"^[!/]markdown (.*)",
"^[!/]mk (.*)",
"^[!/]hyper (.*)",
},
run = run 
}
