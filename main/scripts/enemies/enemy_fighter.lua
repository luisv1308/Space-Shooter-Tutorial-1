local Enemy = require "main/scripts/enemies/enemy"
local EnemyBullet1 = require "main/scripts/weapons/enemy_bullet_1"

local Scout = {}
Scout.__index = Scout
setmetatable(Scout, { __index = Enemy })

function Scout:new(properties)
    local self = Enemy.new({
        health = properties.health or 5,
        speed = properties.speed or 180,
        attack_power = properties.attack_power or 1,
        position = properties.position or vmath.vector3(0, 650, 0),
        initial_position = properties.position or vmath.vector3(0, 650, 0),
        level = properties.level or 1,
        weapon = properties.weapon or EnemyBullet1:new(msg.url("/factories#enemy_bullet_1_factory")),
        movement_pattern = properties.movement_pattern or "linear",
        amplitude = properties.amplitude or 2,
        attack_range = properties.attack_range or 400
    })
    setmetatable(self, Scout)
    return self
end

function Scout:move()
    -- Movimiento específico para el Scout
end

return Scout