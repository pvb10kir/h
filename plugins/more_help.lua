local function run(msg)
local text = [[*🇮🇷!addsudo 
دعوت کردن ادمین ربات به گروه شما

🇮🇷!calc (معادله)
مثال calc 2+2!

🇮🇷!date 
نمایش تاریخ قمری

🇮🇷!dogify (متن)
نوشتن متن روی عکس سگ

🇮🇷!filter (+ یا -) [word - کلمه]
ممنوع کردن لغت در گروه

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

SpheroTM*]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^[/#!]more help$",},
 run = run }
