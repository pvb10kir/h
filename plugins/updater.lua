function run(msg, matches)
if not is_sudo(msg) then
return 'Only for the sudo'
end
text = io.popen("git pull "):read('*all')
  return text
end
return {
  patterns = {
    '^[#/!]update$'
  },
  run = run,
  moderated = true
}
