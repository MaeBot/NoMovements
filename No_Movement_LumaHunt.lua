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
        local RandomCheck = math.random(237, 581)
        tblua:Sleep(RandomCheck)
        if tblua:CheckLuma() == true then
          tblua:SendTelegramMessage("Luma Found!")
          tblua:TestMessage("Luma Found!")
          tblua:PressKey(0x71)
        else
          --Else no Luma, so run away
          while tblua:IsInWorld() == false
          do
            if tblua:IsInFight() == true then
              local RandomRun = math.random(430, 994)
              tblua:Sleep(RandomRun)
              tblua:PressKey(0x38)
            else
              local RandomSleepzz = math.random(455, 694)
              tblua:Sleep(RandomSleepzz)
            end
          end
        end
      end
    end
  end
