
function run(msg, matches)
if matches[1] == 'update' and is_sudo(msg) then
local text = io.popen("git pull"):read('*all')
return text
end
end
return {
  patterns = {
    '^[#/!]update$'
  },
  run = run,
  moderated = true
}
