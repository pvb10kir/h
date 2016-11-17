local function tosticker(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = './data/sstickers/'..msg.from.id..'.webp'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    --send_document(get_receiver(msg), file, ok_cb, false)
    redis:del("photo:setsticker")
	return reply_msg(msg.id, 'your avatar was saved!\nyou can see your avatar by /me . info . /myavatar', ok_cb, false)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Try again later.', ok_cb, false)
  end
end
local function tosticker2(msg, success, result)
  local receiver = get_receiver(msg)
  if success then
    local file = './data/sstickers/'..msg.from.id..'.webp'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    --send_document(get_receiver(msg), file, ok_cb, false)
    redis:del("photo:setsticker")
	return reply_msg(msg.reply_id, 'your avatar was saved!\nyou can see your avatar by /me . info . /myavatar', ok_cb, false)
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Try again later.', ok_cb, false)
  end
end

local function run(msg,matches)
    local receiver = get_receiver(msg)
    local group = msg.to.id
	if not msg.reply_id then
    if msg.media then
       if msg.media.type == 'photo' and redis:get("photo:setsticker") then
        if redis:get("photo:setsticker") == 'waiting' then
          load_photo(msg.id, tosticker, msg)
        end
       end
    end
    if matches[1] == "setavatar" then
     redis:set("photo:setsticker", "waiting")
     return reply_msg(msg.id, 'ok now send your photo', ok_cb, false)
    end
	end
if msg.reply_id then
	 if msg.to.type == 'photo' and redis:get("photo:sticker") then
        if redis:set("photo:sticker", "waiting") then
        end
       end
    if matches[1]:lower() == "setavatar" then
     redis:get("photo:sticker")  
     load_photo(msg.reply_id, tosticker2, msg)
    end
	end
	local files = './data/sstickers/'..msg.from.id..'.webp'
	if matches[1]:lower() == 'myavatar' then
	if not files then
	return "You Don't have avatar please set it By /setavatar"
	else
	return send_document(msg.id, files, ok_cb, false) --send_document(get_receiver(msg), files, ok_cb, false)
end
end
end
return {
  patterns = {
 "^(setavatar)$",
 "^(myavatar)$",
 "%[(photo)%]",
  },
  run = run,
}
