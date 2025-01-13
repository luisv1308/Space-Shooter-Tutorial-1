local Weapon = {}

function Weapon:new(factory_url, damage, speed, fire_rate, object_id)
    local instance = {
        factory_url = factory_url, -- Dirección del factory para crear disparos
        damage = damage or 10,
        speed = speed or 200,
        fire_rate = fire_rate or 0.5,
        fire_timer = 0, -- Temporizador para controlar el disparo
        object_id = object_id or nil, -- ID del objeto para enviar props en collectionfactory
    }
    setmetatable(instance, { __index = self })
    return instance
end

function Weapon:fire(position, direction)
    print(self.speed, "factory_url")
    local props = {}
    props[hash(self.object_id)] = {
        speed = self.speed,
        direction = direction,
        damage = self.damage
    }
    if self.fire_timer <= 0 then
        -- Crear el disparo usando el factory
        local projectile = collectionfactory.create(self.factory_url, position, nil, props)
        self.fire_timer = self.fire_rate
        return projectile
    end
end

function Weapon:update(dt)
    if self.fire_timer > 0 then
        self.fire_timer = self.fire_timer - dt
    end
end

return Weapon
