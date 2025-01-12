local Player = {}

function Player:new(name, health, speed, attack_damage, fire_rate, fire_timer)
	local instance = {
		name = name or "Player",
		health = health or 100,
		speed = speed or 200,
		attack_damage = attack_damage or 10,
        fire_rate = fire_rate or 0.2,
        fire_timer = fire_timer or 0,
		direction = vmath.vector3(1, 0, 0), -- Direccion inicial
	}
	setmetatable(instance, { __index = self })
	return instance
end

function Player:move(input)
	self.direction = input
	-- Lógica de movimiento
end

function Player:take_damage(amount)
	self.health = self.health - amount
	if self.health <= 0 then
		print("Player muerto")
		self:die()
	end
end

function Player:die()
	-- Enviar mensaje
	msg.post("#", "player_die")
	-- Lógica de muerte
	go.delete()
end


return Player
