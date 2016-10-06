do
local function callback(extra, success, result)
vardump(success)
vardump(result)
end
local function run(msg, matches)
if matches[1]:lower() == 'sfind' then
 if string.find(msg.from.username , 'matches[2]') then
return '@'..matches[2]..' در گروه است'
end
end
 if not string.find(msg.from.username , 'matches[2]') then
return '@'..matches[2]..' در گروه نیست'
end
end
return {
patterns = {
"^[!/]sfind (.*)$",
},
run = run
}
end
