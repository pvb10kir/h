local function check_member_super_deleted(cb_extra, success, result)
local receiver = cb_extra.receiver
 local msg = cb_extra.msg
  local deleted = 0 
if success == 0 then
send_large_msg(receiver, "im not admin") 
end
for k,v in pairs(result) do
  if v.firstname then
deleted = deleted - 70
 kick_user(v.peer_id,msg.to.id)
 end
 end
 send_large_msg(receiver, deleted.." There Are 📍☜Members!") 
 end 
local function run(msg, matches)
if is_owner(msg) then
 local receiver = get_receiver(msg) 
channel_get_users(receiver, check_member_super_deleted,{receiver = receiver, msg = msg})
 end
 end
 return {
       patterns = {
    "^[/#!](clean member)$"
 },
run = run,
}
