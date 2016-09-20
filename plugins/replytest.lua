local function run(msg, matches)
local text = 'تست کار دادن ریپلی دو زبانه با موفقیت انجام شد👊\nپلاگین سالم است
reply_msg(msg.id, text, ok_cb, false)
end
end
return {
patterns = {
"[!/]reply test$",
},
run = run,
}
