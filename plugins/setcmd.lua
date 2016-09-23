do
local function run(msg, matches, callback, extra)
local hash = 'group:'..msg.to.id
local cmds_lang = redis:hget(hash,'cmds')
if matches[1] == 'setcmd' and  matches[2] == 'en' and is_owner(msg) then 
    
   redis:hdel(hash,'cmds')
        return 'Group cmds Set To : en'
end



if matches[1] == 'setcmd' and matches[2] == 'fa' and is_owner(msg) then
redis:hset(hash,'cmds',matches[2])
        return 'دستورات گروه شما روی فارسی تنظیم شد'
end
if matches[1] == 'cmds' then
if cmds_lang then 
return "دستورات گروه شما هم اکنون روی فارسی قرار دارد"
else
return "Group Lang : en"
end
end
end
return {
  patterns = {
    "^[!#/]([Ss][Ee][Tt]cmd) ([Ff][Aa])$",
  "^[!#/]([Ss][Ee][Tt]cmd) ([Ee][Nn])$",
  "^[!#/](cmds)"
  },
  run = run
}
end
