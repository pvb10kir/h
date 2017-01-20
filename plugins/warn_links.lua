local function pre_process(msg) 
   if msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.text:match("[Tt].[Mm][Ee]/") or msg.text:match("@") and not is_momod(msg) then
      if redis:get('mate:'..msg.to.id ) then
        if redis:get('mate:'..msg.to.id..':'..msg.from.id) and is_link_msg and not is_momod(msg) then
         redis:del('mate:'..msg.to.id..':'..msg.from.id) 
             delete_msg(msg.id, ok_cb, false) 
             kick_user(msg.from.id, msg.to.id)
             send_large_msg(get_receiver(msg), 'کاربر ['..msg.from.first_name..'] شما به خاطر ارسال لینک اخراج شدید.\n@Sphero_Ch', ok_cb, false)
        else
            redis:set('mate:'..msg.to.id..':'..msg.from.id, true)
            send_large_msg(get_receiver(msg), "کاربر ["..msg.from.first_name.."] از ارسال لینک خود داری کنید در صورت تکرار از گروه حذف خواهید شد\n@Sphero_Ch" , ok_cb, false)
        end
    end
    end
  return  msg
end
       
local function run(msg, matches) 
  if matches[1] == 'warn links' then
    if is_momod(msg) then 
      redis:set('mate:'..msg.to.id , true) 
      send_large_msg(get_receiver(msg), 'فعال شد ازین به بعد کاربر در صورت ارسال لینک اخطار دریافت کرده و در صورت تکرار از گروه پاک خواهید شد\n@Sphero_Ch', ok_cb, false)  
    else 
      send_large_msg(get_receiver(msg), 'شما دسترسی ندارید' , ok_cb, false)  
    end
  end
  if matches[1] == 'unwarn links' then
    if is_momod(msg) then 
      redis:del('mate:'..msg.to.id ) 
      send_large_msg(get_receiver(msg), 'ازین به بعد تنها لینک پاک خواهد شد و کاربر اخطاری دریافت نمیکند', ok_cb, false)  
    else
      send_large_msg(get_receiver(msg), 'شما دسترسی ندارید' , ok_cb, false)  
   end 
  end 
end

return { 
    patterns = {
       "^[#!/](warn links)$",
       "^[#!/](unwarn links)$",
    }, 
    run = run, 
    pre_process = pre_process 
}
