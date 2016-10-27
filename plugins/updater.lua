local function reload_plugins( )
  plugins = {}
  return load_plugins()
end

function run(msg, matches)
if matches[1] == 'update' and is_sudo(msg) then
local text = io.popen("git pull"):read('*all')
  reply_msg(msg.id,text..'\n----------------\nAll Plugins Updated from github😍!\nAnd Bot Was Reloaded😘',ok_cb,false)
end
  reload_plugins(true)
end
return {
  patterns = {
    '^[#/!]update$'
  },
  run = run,
  moderated = true
}
