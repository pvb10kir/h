 do

function run(msg, matches)
       if not is_momod(msg) then
        return "For moderators only!"
       end
if matches[1] == 'linkpv' then
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "First use /newlink or if bot isn't creator user /setlink"
       end
end
         local text = "SuperGroup link  :\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "SuperGroup link sent on your pv✔"
end
if matches[1] == 'newlinkpv' then
     local data = load_data(_config.moderation.data)
    local group_link = data[tostring(msg.to.id)]['settings']['set_link']
send_large_msg('user#id'..msg.from.id, 'New link ;\n'..group_link..'\n@Sphero_Ch', ok_cb, false)
return 'Supergroup Link has Been revoked And Send to your Private'
end
end
return {
  patterns = {
    "^[/#!]([Ll]inkpv)$",
    "^[/#!]([Nn]ewlinkpv)$",
  },
  run = run,
}

end
