--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

tblua:Sleep(1500)

 while(true)
 do
    local RandomSleep = math.random(74, 132)
    tblua:Sleep(RandomSleep)
            
    --loop if minimap not detected
    while tblua:IsInWorld() == false
    do
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        local RandomCheck = math.random(137, 281)
        tblua:Sleep(RandomCheck)
        if tblua:CheckLuma() == true then
          tblua:SendTelegramMessage("Luma Found!")
          tblua:TestMessage("Luma Found!")
          tblua:PressKey(0x71)
        else
          --Else no Luma, so run away
         while tblua:IsInFight() == true do
          local RandomRun = math.random(130, 254)
          local RunAwayR = math.random(8)
		  if RunAwayR == 8 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          elseif RunAwayR == 7 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  elseif RunAwayR == 6 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  elseif RunAwayR == 5 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  elseif RunAwayR == 4 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  elseif RunAwayR == 3 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  elseif RunAwayR == 2 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  elseif RunAwayR == 1 then
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
		  tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          end		  
         end
        end
      end
    end
  end
