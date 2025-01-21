local Weapon = require "main.scripts.weapons.weapon"

local EnemyBullet1 = Weapon:new()

function EnemyBullet1:new(factory_url)
    local instance = Weapon.new(self, factory_url, 1, 250, 1.2, "/enemy_bullet_1") -- Personaliza propiedades
    setmetatable(instance, { __index = self })
    return instance
end

return EnemyBullet1
