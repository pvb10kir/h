 local function pre_process(msg) 
  local MrBlackLife = msg['id']
  local user = msg.from.id
  local chat = msg.to.id
  local hash = 'mate:'..chat..':'..user
 local is_link_msg = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.text:match("[Tt].[Mm][Ee]/") or msg.text:match("@")
  if is_link_msg and not is_momod(msg) then
    if redis:get(hash) and is_link_msg and not is_momod(msg) then 
   return 'کاربر ['..msg.from.first_name..'] شما به دلیل ارسال 2 بار لینک از گروه اخراج شدید'
      delete_msg(msg.id, ok_cb, false) 
      redis:del(hash) 
      kick_user(user, chat)
    else
      return "کاربر ["..msg.from.first_name.."] از ارسال لینک خود داری کنید در صورت تکرار از گروه حذف خواهید شد\n@Sphero_Ch" 
      redis:set(hash, true)
    end
  end
  return  msg
end
       

local function run(msg, matches) 
  local MrBlackLife = msg['id'] 
  if matches[1] == 'warn links' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:set(hash, true) 
      return 'فعال شد ازین به بعد کاربر در صورت ارسال لینک اخطار دریافت کرده و در صورت تکرار از گروه پاک خواهد شد\n@Sphero_Ch'
    else 
      return 'شما دسترسی ندارید' 
    end
  end
  if matches[1] == 'unwarn links' then
    if is_momod(msg) then 
      local hash = 'mate:'..msg.to.id 
      redis:del(hash) 
      return 'ازین به بعد تنها لینک پاک خواهد شد و کاربر اخطاری دریافت نمیکند'
    else
      return 'شما دسترسی ندارید' 
    end 
  end 
end
return { 
    patterns = {
"^[#!/](warn links)$",
"^[#!/](unwarn links)$"
 
    }, 
     
run = run, 
    pre_process = pre_process 
}
