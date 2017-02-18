local function run(msg, matches)
    if matches[1] == "spam" and is_sudo(msg) then
    local num = matches[2]
     local text = matches[3]
 local chat_id = matches[4]
        for i=1,num do
            send_large_msg(chat_id, text, ok_cb, false)
        end
  end
end
 
return {
  patterns = {
  "[!#/](spam) (%d+) (.*) (.*)$",
  },
  run = run,
}
