if Config.Framework == 'esx' then
    ESX = exports['es_extended']:getSharedObject()
elseif Config.Framework == 'qbcore' then
    QBCore = exports['qb-core']:GetCoreObject()
end

RegisterNetEvent('pedmenu:setPed')
AddEventHandler('pedmenu:setPed', function(pedModel)
    local modelHash = GetHashKey(pedModel)
    
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    
    SetPlayerModel(PlayerId(), modelHash)
    SetModelAsNoLongerNeeded(modelHash)
    
    -- Reset clothes to make ped look right
    SetPedDefaultComponentVariation(PlayerPedId())
    
    if Config.Framework == 'esx' then
        ESX.ShowNotification('Tvoj ped bol zmenený!')
    elseif Config.Framework == 'qbcore' then
        QBCore.Functions.Notify('Tvoj ped bol zmenený!', 'success')
    end
end)