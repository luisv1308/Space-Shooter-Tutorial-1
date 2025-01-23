local PowerUp = {}
PowerUp.__index = PowerUp

function PowerUp:new(type, duration, effect, position)
    local instance = {
        type = type,       -- Tipo de power-up (e.g., "speed", "shield")
        duration = duration, -- Duración del efecto
        effect = effect or nil,    -- Función que aplica el efecto
        position = position or vmath.vector3(0, 0, 0), -- Posición del power-up 
    }
    setmetatable(instance, PowerUp)
    return instance
end

function PowerUp:apply(player)
    if self.effect then
        self.effect(player)
    end
    player.powerup_timer = self.duration
    player.active_powerup = self.type
end

return PowerUp
