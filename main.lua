-- ------------  --
--  import file  --
-- ------------- --

require("data.database")

-- -------- --
-- variable --
-- -------- --

local isAuth = false
local username
local userpass

-- -------- --
-- function --
-- -------- --

local function Auth(un, up)
  for i = 1, #Database, 1 do
    if un == Database[i]['name'] then
      if up == Database[i]['pass'] then
        isAuth = true
      end
    end
  end
end

-- --------- --
-- main code --
-- --------- --

io.write("Enter username: ")
username = io.read()

io.write("Enter password: ")
userpass = io.read()

Auth(username, userpass)
if isAuth == true then
  print('Welcome')
else
  print('Error')
end
