--Importing TemBotLua
import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

t = 1

tblua:Sleep(1500)

 while(true)
 do
    local RandomSleep = math.random(74, 132)
    tblua:Sleep(RandomSleep)
    if tblua:IsInWorld() == true then
    t = 1
    end
            
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
    local RandomSleepy = math.random(174, 332)
              -- exhausted
                    if tblua:GetPixelColor(276, 631) == "0xFFFFFF" then
                    tblua:Sleep(RandomSleepy)
                    tblua:PressKey(0x36)
                    tblua:Sleep(RandomSleepy)
                    else
              local RandomAtk = math.random(630, 1294)
                if tblua:GetEnemyCount() == 2 then
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x31)
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x26)
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x46)
                elseif tblua:GetEnemyCount() == 1 then
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x31)
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x46)
                end
                end
            else
                    local crx = math.random(1530, 2294)
                    local cr = math.random(544, 889)
                    -- Skill learn
                    if tblua:GetPixelColor(215, 255) == "0x1CD1D3" then
                    tblua:Sleep(crx)
                    tblua:PressKey(0x1B)
                    -- Exp screen F
                    elseif tblua:GetPixelColor(590, 245) == "0x1CD1D3" then
                    tblua:Sleep(cr)
                    tblua:PressKey(0x46)
                    -- Swap dead tem
                    elseif tblua:GetPixelColor(1180, 455) == "0x1E1E1E" then
                    local swap = math.random(4)
                      if swap == 4 then
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                      elseif swap == 3 then
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                      elseif swap == 2 then
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                      elseif swap == 1 then
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                      end
                    else
                        tblua:Sleep(cr)
                    end
            end
          end
        end
      end
    end
  end