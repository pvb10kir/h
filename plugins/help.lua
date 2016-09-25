local function run(msg, matches)
    if matches[1]:lower() == 'help' then
local hash = 'group:'..msg.to.id
    local group_lang = redis:hget(hash,'lang')
    if group_lang then
local text = [[راهنمای جهانی برای رباتِ [Sphero]
*⌚️!gpinfo
نشون دادن اطلاعات گروه
⌚️!admins
نشون دادن ادمین های گروه
!owner
نمایش اونر گروه
⌚️!modlist
نمایش لیست مدیر ها
⌚️!bots
نمایش دادن بات هایی که در گروه قرار دارند
⌚️!who
لیست کسانی ک در گروه قرار دارند به صورت فایل
⌚️!block
گذاشتن یک نفر در لیست سیاه یا بلاک لیست گروه
⌚️!ban
بن کردن یک نفر
⌚️!unban
برداشتن بن از یک نفر
⌚️!id
دریافت ایدی خود و سوپرگروه
⌚️!id from
دریافت ایدی با ریپلی روی پیام فروارد شده
⌚️/kickme / /yes / /no
با زدن دستور /kickme و سپس با زدن دستور /yes از گروه خارج شوید
⌚️!setowner
اونر کردن یک فرد در گروه
⌚️ !promote username|id
مدیر کردن یک نفر
⌚️!demote username|id
گرفتن مقام مدیر
⌚️!setname text
عوض کردن اسم گروه
⌚️!setphoto
عوض کردن عکس گروه
⌚️!setrules Text
گذاشتن قوانین برای گروهتون
⌚️!setabout text
گذاشتن اطلاعات بیشتر برای گروهتون
⌚️!save value <text>
سیو کردن ی متن برای گروه
⌚️!get value
دریافت متن سیو شده
⌚️!newlink
ساخت لینک جدید برای گروه (فقط گروه هایی که با ربات ساخته شده اند
⌚️!link
دریافت لینک گروه
⌚️!rules
نمایش قوانین گروه
⌚️!lock links|flood|spam|Arabic|member|rtl|sticker|contacts|strict or... settings text
قفل کردن یک چیز مجاز
⌚️!unlock links|flood|spam|Arabic|member|sticker|contacts|strict or.. settings text
ازاد کردن یک قفل
⌚️!mute all|audio|gifs|photo|video|service
موت کردن یک فرمت لیست 👆
⌚️!unmute all|audio|gifs|photo|video|service
انموت کردن یک فرمت لیست👆
⌚️!setflood value
تعیین کردن این که با چند عدد اسپم فرد از گروه اخراج شود
⌚️!settings
نمایش تنظیمات گروه
⌚️!muteslist
نمایش لیست فرمت های موت شده یا مجاز
⌚️!muteuser username
با این دستور  میتونید اجازه چت کردن از فرد خاصی را بگیرید و با دوباره زدن این دستور و ریپلی کردن نام شخص میتونید اجازه چت کردن رو ب اون برگردونید
⌚️!mutelist
نمایش لیست کسانی که موت شده اند
⌚️!banlist
نمایش لیست بن گروه
!clean rules|about|modlist|mutelist
⌚️!del
پاک کردن یک پیام با ریپلی
⌚️!public yes|no
عمومی کردن یا خصوصی کردن گروه
⌚️!res username
دریافت ایدی و یوزرنیم شخص
⌚️!log
نشان دادن سیستم گروه

🇮🇷!addsudo 
دعوت کردن ادمین ربات به گروه شما

🇮🇷!calc (معادله)
مثال calc 2+2!

🇮🇷!date 
نمایش تاریخ قمری

🇮🇷!dogify (متن)
نوشتن متن روی عکس سگ

🇮🇷!filter کلمه
ممنوع کردن لغت در گروه

🇮🇷!unfilter کلمه 
ازاد کردن کلمه در گروه 
        
🇮🇷!filterlist 
نمایش لیست کلمات فیلتر شده

🇮🇷!clean filterlist 
پاک کردن تمام کلمات فیلتر شده
        
🇮🇷github (username/project)
جستجوی گیتهاب مثال : github 3pehrdev/sphero

🇮🇷info
نمایش اطلاعات شما

🇮🇷/keep calm (text1) (text2) (text3)
نوشتن متن مورد نظر روی لوگوی keepcalm مثال :
/keep calm and best friend

🇮🇷!me
نمایش تعداد پیام های ارسالی + درصد

🇮🇷!music (نام خاننده)
وقتی که دستور بالا رو بزنید ی لیست میاره که میتونید با دستور 
/dl (شماره کنار اهنگ)
لینک دانلود رو دریافت کنید

🇮🇷!rmsg (تعداد)
پاک کردن پیام ها به تعداد دلخواه

🇮🇷!gif (اسم)
ساخت گیف با متن دلخواه

🇮🇷!support
دریافت لینک گروه پشتیبانی

🇮🇷!ver
نمایش ورژن ربات

🇮🇷!warn (username/reply)
اخطار به کاربر در صورت رعایت نکردن قوانین

🇮🇷!unwarn (username/reply)
پاک کردن ۱ اخطار کاربر 

🇮🇷!unwarnall (username/reply)
پاک کردن کل اخطار های کاربر

🇮🇷!warnmax (1-10)
تنظیم کردن که در چه تعداد اخطار کاربر از گروه پاک شود

🇮🇷!getwarn (username/reply)
نمایش تعداد اخطار های کاربر

🇮🇷!photo
روی استیکر مورد نظر ریپلی کنید و دستور بالارو بزنید تا ربات اونو به عکس تبدیل کنه

🇮🇷!sticker
روی عکس مورد نظر ریپلی کنید و دستور بالارو بزنید تا ربات اونو به عکس تبدیل کنه

🇮🇷!expire
نمایش زمان باقی مانده از تاریخ انقضای گروه خود

🇮🇷!clean member
پاک کردن تمام ممبر های سوپر گروه

🇮🇷!setlang (fa/en)
تنظیم کردن زبان ربات

🇮🇷!feedback پیام
فرستادن پیام شما برای ادمین ربات

🇮🇷!tagall پیام
نمایش یوزرنیم های تمام کاربران گروه

🇮🇷!type موضوع
ست کردن موضوعی برای گروه خود که در دریافت لینک از ان استفاده میشود همچنین در متن تنظیمات

💤SpheroTM💤 Channel ( @Sphero_Ch )]]
reply_msg(msg.id, text, ok_cb, false)
else
local text = [[Local Help For Sphero

⌚️!info
Displays general info about the SuperGroup

⌚️!admins
Returns SuperGroup admins list

!owner
Returns group owner

⌚️!modlist
Returns Moderators list

⌚️!bots
Lists bots in SuperGroup

⌚️!who
Lists all users in SuperGroup

⌚️!block
Kicks a user from SuperGroup
Adds user to blocked list

⌚️!ban
Bans user from the SuperGroup

⌚️!unban
Unbans user from the SuperGroup

⌚️!id
Return SuperGroup ID or user id
For userID's: !id @username or reply !id

⌚️!id from
Get ID of user message is forwarded from

⌚️/kickme / /yes / /no
Kicks user from SuperGroup
Must be unblocked by owner or use join by pm to return

⌚️!setowner
Sets the SuperGroup owner

⌚️ !promote username|id
Promote a SuperGroup moderator

⌚️!demote username|id
Demote a SuperGroup moderator

⌚️!setname
Sets the chat name

⌚️!setphoto
Sets the chat photo

⌚️!setrules
Sets the chat rules

⌚️!setabout
Sets the about section in chat info(members list)

⌚️!save value <text>
Sets extra info for chat

⌚️!get value
Retrieves extra info for chat by value

⌚️!newlink
Generates a new group link

⌚️!link
Retireives the group link

⌚️!rules
Retrieves the chat rules

⌚️!lock links|flood|spam|Arabic|member|rtl|sticker|contacts|strict or...(!settings command text)
Lock group settings
rtl: Delete msg if Right To Left Char. is in name
strict: enable strict settings enforcement (violating user will be kicked)

⌚️!unlock links|flood|spam|Arabic|member|rtl|sticker|contacts|strict or...(!settings command text)
Unlock group settings
rtl: Delete msg if Right To Left Char. is in name
strict: disable strict settings enforcement (violating user will not be kicked)

⌚️!mute all|audio|gifs|photo|video|service
mute group message types
A muted message type is auto-deleted if posted

⌚️!unmute all|audio|gifs|photo|video|service
Unmute group message types
A unmuted message type is not auto-deleted if posted

⌚️!setflood value
Set value as flood sensitivity

⌚️!settings
Returns chat settings

⌚️!muteslist
Returns mutes for chat

⌚️!muteuser username
Mute a user in chat
If a muted user posts a message, the message is deleted automaically
only owners can mute | mods and owners can unmute

⌚️!mutelist
Returns list of muted users in chat

⌚️!banlist
Returns SuperGroup ban list

!clean rules|about|modlist|mutelist

⌚️!del
Deletes a message by reply

⌚️!public yes|no
Set chat visibility in pm !chats or !chatlist commands

⌚️!res username
Returns users name and id by username


⌚️!log
Returns group logs
⌚️Search for kick reasons using #RTL|#spam|#lockmember


🇮🇷!addsudo 
addsudo to your group

🇮🇷!calc (معادله)
ex: calc 2+2!

🇮🇷!date 
show ghamari date

🇮🇷!dogify (text)
write your text of dogify logo

🇮🇷!filter (+ یا -) [word - کلمه]
Filter or unfilter words

🇮🇷github (username/project)
github search. ex: : github 3pehrdev/sphero

🇮🇷info
return your info

🇮🇷/keep calm (text1) (text2) (text3)
Just write your text of keep calm logo. ex:
/keep calm and best friend

🇮🇷!me
Your messages info

🇮🇷!music (نام خاننده)
u can use 👆 and👇
/dl (Number)
For recieve download link

🇮🇷!rmsg (number)
Remove group messages 

🇮🇷!gif (name)
Create gif by your name

🇮🇷!support
Recieve support group link

🇮🇷!ver
Show bot version

🇮🇷!warn (username/reply)
warn the users 

🇮🇷!unwarn (username/reply)
remove 1 warns

🇮🇷!unwarnall (username/reply)
Remove all warns of user

🇮🇷!warnmax (1-10)
first ser max number of warns 

🇮🇷!getwarn (username/reply)
Show user warns

🇮🇷!photo
Just reply your sticker

🇮🇷!sticker
Just reply your Photo

🇮🇷!expire
Show Expire Time

🇮🇷 !clean member
Remove All Member Of Supergroup

🇮🇷 !setlang (fa/en)
Set your group language

🇮🇷 !feedback msg
Send your feedback to my sudo

🇮🇷!tagall text
show all members username

🇮🇷!type subject
Set subject for your group 
subject was show to your group link 
want to test? Send me /link

💤SpheroTM💤
    Channel : @Sphero_Ch]]
   return reply_msg(msg.id, text, ok_cd, false)
        end
end
return {
 patterns = {"^[/#!]help$",},
 run = run }
