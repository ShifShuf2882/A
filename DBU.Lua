getgenv().autofarm = false;
getgenv().hpfarm = false;
getgenv().autorebirth = false;
getgenv().autostrength = false;

local lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))() --the lib
local window = lib:CreateWindow("Auto Farm") --copy if you want to make a new window
local folder1 = window:CreateFolder("Auto Farm")
-----------------------------------------------FUNCTIONS BELLOW
--function farm()
  --  spawn(function()
    --    while getgenv().autofarm == true do

    --        local args = {
     --            [1] = workspace.Others.NPCs:FindFirstChild("X Fighter Trainer")
--}

--game:GetService("ReplicatedStorage").Package.Events.Qaction:InvokeServer(unpack(args))

     --    wait()
     --   end
  --  end)
--end


function hpfarm()
    spawn(function()
        while getgenv().hpfarm == true do

            local args = {
                [1] = "Blacknwhite27"
}

game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
        wait()
        end
    end)
end


function autorebirth()
    spawn(function()
        while getgenv().autorebirth == true do

game:GetService("ReplicatedStorage").Package.Events.reb:InvokeServer()

        wait()
        end
    end)
end


function autostr()
    spawn(function()
        while getgenv().autostrength == true do

            local args = {
                 [1] = "Blacknwhite27",
                 [2] = 1
}

game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))



        wait()
        end
    end)
end


------------------------------------
-- folder1:Toggle("Auto Farm First Quest",function(bool)   --the windows 
 --   getgenv().autofarm = bool
 --   print('Auto Farm Is: ', bool)
  --  if bool then
 --       farm();
 --   end
-- end)


 folder1:Toggle("Auto Farm HP/Defense",function(bool)   --the windows 
    getgenv().hpfarm = bool
    print('HP Farming Is: ', bool)
    if bool then
        hpfarm();
    end
 end)



 folder1:Toggle("Farm Strength + Speed",function(bool)   --the windows 
    getgenv().autostrength = bool
    print('Auto Strength Is: ', bool)
    if bool then
        autostr();
    end
 end)



 folder1:Toggle("Auto Rebirth",function(bool)   --the windows 
    getgenv().autorebirth = bool
    print('Auto Rebirth Is: ', bool)
    if bool then
        autorebirth();
    end
 end)




--[[
If you were to make a folder inside a window do 


local folder1 = lib:CreateFolder("Name of the folder")
]]
