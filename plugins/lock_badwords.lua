local function run(msg)

    local data = load_data(_config.moderation.data)

     if data[tostring(msg.to.id)]['settings']['lock_fosh'] == 'yes' then


if msg.to.type == 'channel' and not is_momod(msg) then
	 delete_msg(msg.id,ok_cb,false)

        return 
      end
   end
end

return {patterns = {
      "[Kk][Ii][Rr]",
      "[Kk][Oo][Ss]",
"[Ss][Ii][Kk]",
"کون",
"کص",
"کیر",
"نگاییدم",
"کوس",
}, run = run}
