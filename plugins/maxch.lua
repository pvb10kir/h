local function mrblacklife(msg, matches)
  if matches[1] == 'maxchar' and is_momod(msg) then
redis:set('max_char'..msg.to.id,matches[2])
    return 'maxchar has been set to '..matches[2]..' chatracters.'
    end
end
local function pre_process(msg)
    if string.len(matches[1]) > redis:get('max_char'..msg.to.id) and not is_momod(msg) then
  delete_msg(msg.id,ok_cb,false)
return 'More than '..redis:get('max_char'..msg.to.id)..' characters are not allowed'
  end
    end
    return {
  patterns = {
  "^[!/#](maxchar) (.*)$",
  "(.*)"
  },
  run = mrblacklife,
  }
