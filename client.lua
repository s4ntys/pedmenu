ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx_pedmenu:setPed')
AddEventHandler('esx_pedmenu:setPed', function(pedModel)
    local modelHash = GetHashKey(pedModel)
    
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
        Wait(1)
    end
    
    SetPlayerModel(PlayerId(), modelHash)
    SetModelAsNoLongerNeeded(modelHash)
    
    -- Reset oblečenia aby ped vyzeral správne
    SetPedDefaultComponentVariation(PlayerPedId())
    ESX.ShowNotification('Tvoj ped bol zmenený!')
end)