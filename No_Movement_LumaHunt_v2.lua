-------------------------------------------------------------------------
----- No Movement Luma Hunt v2: Wait on luma -----
----- Created by MaeBot for TemBot by NhMarco -----
-------------------------------------------------------------------------

--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

tblua:Sleep(1000)

 while(true)
 do            
    --loop if minimap not detected
    while tblua:IsInWorld() == false
    do
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        local RandomCheck = tblua:GetSleepTime()
        tblua:Sleep(RandomCheck)
        if tblua:CheckLuma() == true then
          tblua:SendTelegramMessage("Luma Found!")
          tblua:TestMessage("Luma Found!")
          tblua:PressKey(0x71)
        else
          --Else no Luma, so run away
         while tblua:IsInFight() == true do
          local RandomRun = tblua:GetSleepTime()
          tblua:GetSleepTime()
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
          tblua:Sleep(RandomRun)
          tblua:PressKey(0x38)
         end		  
        end
      end
    end
  end
