-- Working

---------------------------------------------------
------ No Movement Luma Hunt : Wait on luma -------
----- Created by MaeBot for TemBot by NhMarco -----
---------------------------------------------------

--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

tblua:Sleep(1000)

 while(true)
 do            
    --loop if minimap not detected
    while tblua:IsInWorld() == false do
    tblua:Sleep(100)
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        local RandomChecks = tblua:GetSleepTime()
        if RandomChecks < 201 then
        RandomChecks = 201
        end
        local RandomCheck = math.random(100, RandomChecks)
        tblua:Sleep(RandomCheck)
        if tblua:CheckLuma() == true then
          tblua:SendTelegramMessage("Luma Found!")
          tblua:TestMessage("Luma Found!")
          tblua:PressKey(0x71)
        else
          --Else no Luma, so run away
         while tblua:IsInFight() == true do
          local RandomR = tblua:GetSleepTime()
        if RandomR < 201 then
        RandomR = 201
        end
          local RandomRun = math.random(200, RandomR)
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
