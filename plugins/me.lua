do

local function run(msg, matches)
  if matches[1] == 'me' then
    if is_sudo(msg) then
	  send_document(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      return "You're sudo!"
    elseif is_admin(msg) then
	  send_document(get_receiver(msg), "./files/me/admin.webp", ok_cb, false)
      return "You're admin!"
    elseif is_owner(msg) then
	  send_document(get_receiver(msg), "./files/me/leader.webp", ok_cb, false)
      return "You're the Leader!"
    elseif is_momod(msg) then
	  send_document(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
      return "You're a moderator!"
    else
	  send_document(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      return "You're just a member!"
    end
  end
end

return {
  patterns = {
    "^[!#$/]([Mm]e)$",
    "^([Mm]e)$"
    },
  run = run
}
end

--[[BY @MehdiHS:)]]