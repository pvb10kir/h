function MrBlackLife(msg, matches)
  local text = matches[1]
local text2 = matches[2]
  local url = "http://api.roonx.com/photo/pic4.php?text='..text..'&color='..text2..'"

   local file = download_to_file(url,'sphero.webp')
   send_document(get_receiver(msg) , file, ok_cb, false)

        
end


return {

  patterns = {
   "^[/!#]logo (.*) (.*)$"
  },
  run = MrBlackLife,
}
