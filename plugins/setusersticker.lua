local function run(msg, matches)
if msg.reply_id then
if msg.to.type == 'document' and redis:get("sticker:photo") then
if redis:set("sticker:photo", "waiting") then
end
end
if matches[1]:lower() == "setinfo" then
 redis:get("sticker:photo")  
load_document(msg.reply_id, tophoto, msg)
return "#DONE\nSticker has been Set!"
end
end
if matches[1]:lower() == 'me' then
local file = './info/'..msg.from.id..'.webp'
send_document(get_receiver(msg),file,ok_cb,true)
end
if matches[1]:lower() == 'info' then
local file = './info/'..msg.from.id..'.webp'
send_document(get_receiver(msg),file,ok_cb,true)
end
return {
  patterns = {
'^[#!/](setinfo)$',
"^[#!/](me)$",
"^[#!/](info)$",
    },
  run = run
}
