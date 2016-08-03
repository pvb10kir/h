local function run(msg)
local text = [[*Local Help For* [Sphero](http://telegram.me/sphero)

*⌚️!info
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
⌚️Search for kick reasons using #RTL|#spam|#lockmember*

_👌Thx For See This👌
More Cmds Send me_ [/more_help](https://telegram.me/sphero)

*SpheroTM*

[برای ادد کردن رایگان بات به سوپر گروه هاتون روی همین متن زده و
از طریق دکمه (پیام رسان - Private) لینک گروه خود را برای ما ارسال کنید تا در اسرع وقت ربات رو ب گروه شما بیاریم](http://telegram.me/sphero_bot)]]
    send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
return {
 patterns = {"^[/#!]help$",},
 run = run }
