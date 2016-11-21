function MrBlackLife(msg, matches)
  local text = matches[1]
local text2 = matches[2]
  local url = "http://api.roonx.com/photo/pic4.php?text='..text..'&color='..text2..'"

   local file = download_to_file(url,'sphero.jpg')
   send_photo2(get_receiver(msg), file, "  لطفا در کانال زیر عضو شوید:\n@Sphero_Ch", rmtmp_cb, cb_extra)

        
end


return {

  patterns = {
   "^[/!#]logo (.*) (.*)$"
  },
  run = MrBlackLife,
}
