local Weapon = require "main.scripts.weapons.weapon"

local RobotWeapon = Weapon:new()

function RobotWeapon:new(factory_url)
    local instance = Weapon.new(self, factory_url, 20, 300, 0.4, "/robot_bullet") -- Personaliza propiedades
    setmetatable(instance, { __index = self })
    return instance
end

return RobotWeapon
