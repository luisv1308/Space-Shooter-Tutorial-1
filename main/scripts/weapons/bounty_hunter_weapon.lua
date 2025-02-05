local Weapon = require "main.scripts.weapons.weapon"

local BountyHunterWeapon = Weapon:new()

function BountyHunterWeapon:new(factory_url)
    local instance = Weapon.new(self, factory_url, 10, 400, 0.5, "/bounty_hunter_bullet") -- Personaliza propiedades
    instance.avatar = "bounty_hunter_bullet"
    setmetatable(instance, { __index = self })
    return instance
end

return BountyHunterWeapon
