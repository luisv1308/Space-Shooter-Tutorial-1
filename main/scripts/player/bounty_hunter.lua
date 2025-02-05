local Player = require "main.scripts.player.player"

local BountyHunter = Player:new()

function BountyHunter:new()
    -- Crear una nueva instancia basada en Player
    local instance = Player.new(self, "Bounty Hunter", 30, 3, 300, 15, 1.25, 0)
    setmetatable(instance, { __index = self })

    -- Atributos específicos de Bounty Hunter
    instance.special_attack = "Plasma Shot"
    instance.bounty_collected = 0 -- Recompensas recolectadas
    
    return instance
end

function BountyHunter:use_special()
    print("Usando ataque especial: " .. self.special_attack)
    -- Aquí podrías implementar la lógica para disparar un proyectil especial
    -- Ejemplo: Crear un proyectil especial
    factory.create("#special_bullet_factory", go.get_position() + vmath.vector3(0, 20, 0))
end

function BountyHunter:collect_bounty(amount)
    self.bounty_collected = self.bounty_collected + amount
    print("Bounty recolectado: " .. amount .. ", Total: " .. self.bounty_collected)
end

return BountyHunter
