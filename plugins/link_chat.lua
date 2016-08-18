do

local function mrblacklife(msg ,matches)
      local group_strict_lock = data[tostring(target)]['settings']['strict']
  if group_strict_lock == 'yes' and not is_momod(msg) then
    return 'Please Dont Send link.\nname: "..msg.from.print_name.."\nuser : "..msg.from.username.."\nStatus: User Kicked!'
  end
      local group_strict_lock = data[tostring(target)]['settings']['strict']
  if group_strict_lock == 'no' and not is_momod(msg) then
    return 'Please Dont Send link.\nname: "..msg.from.print_name.."\nuser : "..msg.from.username.."\nStatus: message deleted!'
               end
        end
end

return { 
    patterns = { 
        "https://telegram.me",
     "http://telegram.me",
    },
    run = mrblacklife,
    
}

end

-- S
