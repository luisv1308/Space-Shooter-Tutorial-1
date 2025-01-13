local Weapon = require "main.scripts.weapons.weapon"

local BountyHunterWeapon = Weapon:new()

function BountyHunterWeapon:new(factory_url)
    local instance = Weapon.new(self, factory_url, 15, 500, 0.3, "/bounty_hunter_bullet") -- Personaliza propiedades
    setmetatable(instance, { __index = self })
    return instance
end

return BountyHunterWeapon
