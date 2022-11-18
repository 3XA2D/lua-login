-- ------------  --
--  import file  --
-- ------------- --

require("data.user")
require("data.pass")

---------
-- var --
---------

local name
local password

-- -------- --
-- function --
-- -------- --

local function username_check(Username, name)
	for key_a, value_a in pairs(Username) do
		if value_a == name then
			return true
		end
	end
	return false
end

local function pass_check(Pass, password)
	for key_b, value_b in pairs(Pass) do
		if value_b == password then
			return true
		end
	end
	return false
end

-- --------- --
-- main code --
-- --------- --

print("enter your Username")
name = io.read()

print("enter your password")
password = io.read()

if username_check(Username, name) == true and pass_check(Pass, password) == true then
	print("welcome")
else
	print("error")
end
