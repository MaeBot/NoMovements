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
    local RandomSleepy = math.random(1174, 1332)
              -- exhausted
                    if tblua:GetPixelColor(276, 631) == "0xFFFFFF" then
                    tblua:Sleep(RandomSleepy)
                    tblua:PressKey(0x36)
                    else
              local RandomAtk = math.random(630, 1294)
                if tblua:GetPixelColor(777, 65) == "0x1E1E1E" then
                 if tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x31)
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x26)
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x46)
                 else
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x31)
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x46)
                 end
                elseif tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x31)
                  tblua:Sleep(RandomAtk)
                  tblua:PressKey(0x46)
                end
                end
            else
                    local crx = math.random(1030, 1594)
                    local crxxx = math.random(1530, 2894)
                    -- Skill learn
                    if tblua:GetPixelColor(215, 255) == "0x1CD1D3" then
                    tblua:Sleep(crx)
                        tblua:PressKey(0x1B)
                    -- Exp screen F
                    elseif tblua:GetPixelColor(590, 245) == "0x1CD1D3" then
                    tblua:Sleep(crx)
                    tblua:PressKey(0x1B)
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
                        tblua:Sleep(crx)
                    end
            end
          end
        end
      end
    end
  end