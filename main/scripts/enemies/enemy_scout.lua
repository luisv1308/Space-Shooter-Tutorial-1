local Enemy = require "main/scripts/enemies/enemy"

local Scout = {}
Scout.__index = Scout
setmetatable(Scout, { __index = Enemy })

function Scout:new(properties)
    local self = Enemy.new({
        health = properties.health or 5,
        speed = properties.speed or 100,
        attack_power = properties.attack_power or 1,
        position = properties.position or vmath.vector3(0, 500, 0)
    })
    setmetatable(self, Scout)
    return self
end

function Scout:move()
    -- Movimiento específico para el Scout
end

return Scout