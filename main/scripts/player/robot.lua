local Player = require "main.scripts.player.player"

local Robot = Player:new()

function Robot:new()
    -- Crear una nueva instancia basada en Player
    local instance = Player.new(self, "Robot Pilot", 120, 180, 20, 0.3, 0)
    setmetatable(instance, { __index = self })
    
    -- Atributos específicos del Robot
    instance.energy_shield = 50 -- Escudo de energía inicial
    instance.special_attack = "Concentrated Laser"

    return instance
end

function Robot:use_special()
    print("Usando ataque especial: " .. self.special_attack)
    -- Implementación del ataque especial
    factory.create("#laser_factory", go.get_position() + vmath.vector3(0, 20, 0))
end

function Robot:activate_shield(amount)
    -- Activa el escudo de energía y reduce daño recibido
    if self.energy_shield > 0 then
        print("Escudo activado, energía restante: " .. self.energy_shield)
        self.energy_shield = self.energy_shield - amount
        if self.energy_shield < 0 then
            self.energy_shield = 0
        end
    else
        print("Escudo agotado, recibiendo daño normalmente")
    end
end

function Robot:take_damage(amount)
    if self.energy_shield > 0 then
        self:activate_shield(amount)
    else
        -- Si el escudo está agotado, tomar daño directamente
        Player.take_damage(self, amount)
    end
end

return Robot
