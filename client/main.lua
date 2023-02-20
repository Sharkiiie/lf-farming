local QBCore = exports['qb-core']:GetCoreObject()
Config = Config or {}
Targets = {}
Props = {}
local hasGardenGloves = false

-- RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
CreateThread(function()
    for i = 1, #Config.Locations do
        print(i)
        -- local RequireJob = Config.Locations[i].job

        -- if RequireJob == 'public' then RequireJob = nil end

        Targets['Farm' .. i] =
            exports['qb-target']:AddBoxZone('Farm' .. i, Config.Locations[i].coords, Config.Locations[i].legth, Config.Locations[i].width, {
                name = 'Farm' .. i,
                debugPoly = Config.Locations[i].debug,
                useZ = true,
                heading = Config.Locations[i].heading
            }, {
                options = {
                    {
                        event = Config.Locations[i].event,
                        icon = Config.Locations[i].icon,
                        label = Config.Locations[i].label,
                        job = Config.Locations[i].job,
                    },
                },
                distance = 2.5
            })

        if Config.Locations[i].prop then
            RequestModel(Config.Locations[i].prop)
            while not HasModelLoaded(Config.Locations[i].prop) do Citizen.Wait(1) end
            Props[#Props + 1] = CreateObject(Config.Locations[i].prop, Config.Locations[i].coords, false, false, false)
            SetEntityHeading(Props[#Props], math.random(1, 359) + 0.0)
            FreezeEntityPosition(Props[#Props], true)
        end
    end
end)
-- end)


RegisterNetEvent('lf-farming:client:pickGreenPepper', function()
    TriggerEvent('animations:client:EmoteCommandStart', { "kneel3" })
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("pickGreenPepper", "Picking Green Peppers...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:harvestGreenPepper', hasGardenGloves)
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end)

RegisterNetEvent('lf-farming:client:pickTomato', function()
    TriggerEvent('animations:client:EmoteCommandStart', { "kneel3" })
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("pickTomato", "Picking Tomatos...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:harvestTomato', hasGardenGloves)
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end)

RegisterNetEvent('lf-farming:client:pickApple', function()
    TriggerEvent('animations:client:EmoteCommandStart', { "kneel3" })
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("pickapple", "Picking Apples...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:harvestApple', hasGardenGloves)
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end)

RegisterNetEvent('lf-farming:client:pickOrange', function()
    TriggerEvent('animations:client:EmoteCommandStart', { "kneel3" })
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("pickOrange", "Picking Oranges...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:harvestOrange', hasGardenGloves)
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end)

RegisterNetEvent('lf-farming:client:pickPotato', function()
    TriggerEvent('animations:client:EmoteCommandStart', { "garden" })
    QBCore.Functions.Progressbar("pickPotato", "Harvesting Potatos...", 7000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:harvestPotato', hasGardenGloves)
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end)

RegisterNetEvent('lf-farming:client:pickOnion', function()
    TriggerEvent('animations:client:EmoteCommandStart', { "kneel3" })
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("pickonion", "Picking Onions...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:harvestOnion', hasGardenGloves)
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end)

RegisterNetEvent('lf-farming:client:pickCorn', function()
    TriggerEvent('animations:client:EmoteCommandStart', { "kneel3" })
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("pickCorn", "Picking Corn...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:harvestCorn', hasGardenGloves)
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end)

local function glovesOff()
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("glovesoff", "Removing Gloves...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:glovesOff')
        hasGardenGloves = false
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end

local function glovesOn()
    TriggerEvent('animations:client:EmoteCommandStart', { "picklock" })
    QBCore.Functions.Progressbar("gloveson", "Putting On Gloves...", 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
        TriggerServerEvent('lf-farming:server:glovesOn')
        hasGardenGloves = true
    end, function() -- Canceled
        TriggerEvent('animations:client:EmoteCommandStart', { "c" })
    end)
end

RegisterNetEvent('lf-farming:client:gloveToggle', function()
    if hasGardenGloves then
        glovesOff()
    else
        glovesOn()
    end
end)


AddEventHandler('onResourceStop', function(r)
    if r ~= GetCurrentResourceName() then return end

    for k, _ in pairs(Targets) do exports['qb-target']:RemoveZone(k) end
    for i = 1, #Props do DeleteEntity(Props[i]) end
end)
