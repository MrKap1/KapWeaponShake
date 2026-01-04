local isLoopRunning = false

local function startWeaponLoop()
    if isLoopRunning then return end -- Prevent multiple loops from stacking
    isLoopRunning = true

    CreateThread(function()
        -- Loop stays active as long as the player has a weapon in their hand
        while cache.weapon do
            local ped = cache.ped
            
            if IsPedShooting(ped) then
                -- Get current weapon and intensity inside the loop
                local currentWeapon = cache.weapon
                local intensity = Config.CustomWeights[currentWeapon] or Config.DefaultIntensity
                
                ShakeGameplayCam(Config.ShakeName, intensity)
            end
            
            Wait(0)
        end
        
        isLoopRunning = false
    end)
end

-- Listen for weapon changes
lib.onCache('weapon', function(value)
    -- If value exists (not false/nil), player has a weapon
    if value then
        startWeaponLoop()
    end
end)