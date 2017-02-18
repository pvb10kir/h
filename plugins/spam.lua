local function run(msg, matches)
    if matches[1] == "spam" and is_sudo(msg) then
    local num = matches[2]
     local text = matches[3]
        for i=1,num do
            send_large_msg("user#id"..matches[4],<b>matches[3]</b>)
            return "
        end
  end
end
 
return {
  patterns = {
  "[!#/](spam) (%d+) (.*) (.*)$",
  },
  run = run,
}
