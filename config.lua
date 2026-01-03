Config = {}

Config.ShakeName = "SMALL_EXPLOSION_SHAKE"

-- Default intensity for any weapon not listed in the CustomWeights table
Config.DefaultIntensity = 0.05

Config.CustomWeights = {
    [`WEAPON_PISTOL`] = 0.1,
    [`WEAPON_COMBATPISTOL`] = 0.12,
    [`WEAPON_APPISTOL`] = 0.15, 
    [`WEAPON_CARBINERIFLE`] = 0.2,
    [`WEAPON_PUMPSHOTGUN`] = 0.4,
    [`WEAPON_HEAVYSNIPER`] = 0.7,
    [`WEAPON_MICROSMG`] = 0.15,
}