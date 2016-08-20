local function mrblacklife(msg, matches)
if matches[1] == "addnumber" then
    phone = matches[2]
    first_name = msg.from.print_name
    last_name = msg.from.id
    add_contact(phone, first_name, last_name, ok_cb, false)
   return "User With Phone +"..matches[2].." AKA "..msg.from.print_name.." has been added"
end
 if matches[1] == "sendnumber" then
    phone = matches[2]
    first_name = msg.from.print_name
    last_name = msg.from.id
    send_contact(get_receiver(msg), phone, first_name, last_name, ok_cb, false)
end
end
return {
patterns = {
"^[!/#]addnumber (.*)$",
"^[!/#]sendnumber (.*)$",
},
run = mrblacklife
}
