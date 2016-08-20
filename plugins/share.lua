local function mrblacklife(msg, matches)
 if matches[1]:lower() == "share" or "phone" or "number" then
    send_contact(get_receiver(msg), 639080452513, Sphero, @spheroCh, ok_cb, false)
return  "Sphero Contact✋👆"
end
end
return {
patterns = {
"^[!/#]share$",
"^[!/#]phone$",
"^[!/#]number$",
},
run = mrblacklife
}
