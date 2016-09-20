local function run(msg, matches)
local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
local text = 'تست کار دادن ریپلی دو زبانه با موفقیت انجام شد👊\nپلاگین سالم است'
reply_msg(msg.id, text, ok_cb, false)
else
local text = 'Reply 2 lang test done successfully\nplugin fixed'
reply_msg(msg.id, text, ok_cb, false)
end
end
return {
patterns = {
"[!/]reply test$",
},
run = run,
}
