local QBCore = exports['qb-core']:GetCoreObject()
local hasGardenGloves = false

local function harvestLuck(hasGardenGloves)
    local luck = 0
    local amount = 1
    local chance = math.random(1, 100)

    print("gloves", hasGardenGloves)

    if hasGardenGloves then
        chance = chance - 10
    end
    if chance <= 10 then
        luck = luck + 1
    end


    chance = math.random(1, 100)
    if hasGardenGloves then
        chance = chance - 10
    end
    if chance <= 10 then
        luck = luck + 1
    end

    return amount + luck
end


RegisterNetEvent('lf-farming:server:harvestGreenPepper', function(hasGardenGloves)
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = harvestLuck(hasGardenGloves)

    if Player.Functions.AddItem('greenpepper', amount, true) then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['greenpepper'], 'add', amount)
    else
        TriggerClientEvent('QBCore:Notify', source, "Your pockets are full!", "error")
    end
end)

RegisterNetEvent('lf-farming:server:harvestTomato', function(hasGardenGloves)
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = harvestLuck(hasGardenGloves)

    if Player.Functions.AddItem('burger-tomato', amount, true) then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['burger-tomato'], 'add', amount)
    else
        TriggerClientEvent('QBCore:Notify', source, "Your pockets are full!", "error")
    end
end)

RegisterNetEvent('lf-farming:server:harvestApple', function(hasGardenGloves)
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = harvestLuck(hasGardenGloves)

    if Player.Functions.AddItem('bapple', amount, true) then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['bapple'], 'add', amount)
    else
        TriggerClientEvent('QBCore:Notify', source, "Your pockets are full!", "error")
    end
end)

RegisterNetEvent('lf-farming:server:harvestOrange', function(hasGardenGloves)
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = harvestLuck(hasGardenGloves)

    if Player.Functions.AddItem('orange', amount, true) then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['orange'], 'add', amount)
    else
        TriggerClientEvent('QBCore:Notify', source, "Your pockets are full!", "error")
    end
end)

RegisterNetEvent('lf-farming:server:harvestPotato', function(hasGardenGloves)
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = harvestLuck(hasGardenGloves)

    if Player.Functions.AddItem('potato', amount, true) then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['potato'], 'add', amount)
    else
        TriggerClientEvent('QBCore:Notify', source, "Your pockets are full!", "error")
    end
end)

RegisterNetEvent('lf-farming:server:harvestOnion', function(hasGardenGloves)
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = harvestLuck(hasGardenGloves)

    if Player.Functions.AddItem('onion', amount, true) then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['onion'], 'add', amount)
    else
        TriggerClientEvent('QBCore:Notify', source, "Your pockets are full!", "error")
    end
end)

RegisterNetEvent('lf-farming:server:harvestCorn', function(hasGardenGloves)
    local Player = QBCore.Functions.GetPlayer(source)
    local amount = harvestLuck(hasGardenGloves)

    if Player.Functions.AddItem('corn', amount, true) then
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['corn'], 'add', amount)
    else
        TriggerClientEvent('QBCore:Notify', source, "Your pockets are full!", "error")
    end
end)

RegisterNetEvent('lf-farming:server:glovesOff', function()
    local src = source
    local ped = GetPlayerPed(src)

    print("gloves off")
    SetPedComponentVariation(ped, 3, 0, 0, 0)
end)

RegisterNetEvent('lf-farming:server:glovesOn', function()
    local src = source
    local ped = GetPlayerPed(src)

    print("gloves on")
    SetPedComponentVariation(ped, 3, 227, 4, 0)
end)

QBCore.Functions.CreateUseableItem('gardengloves', function(source)
    local src = source

    TriggerClientEvent('lf-farming:client:gloveToggle', src)
end)