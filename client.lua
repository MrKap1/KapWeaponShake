Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        
        -- Only run logic if the player is actually shooting
        if IsPedShooting(ped) then
            local _, weaponHash = GetCurrentPedWeapon(ped, true)
            
            -- Determine intensity: check Config table first, otherwise use Default
            local intensity = Config.CustomWeights[weaponHash] or Config.DefaultIntensity
            
            -- Apply the shake
            ShakeGameplayCam(Config.ShakeName, intensity)
        end

        Citizen.Wait(0)
    end
end)