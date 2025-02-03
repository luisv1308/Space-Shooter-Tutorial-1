local Weapon = {}
local last_sound_time = 0
local sound_cooldown = 0.4 -- Ajusta según la velocidad de la metralleta

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
    local props = {}
    props[hash(self.object_id)] = {
        speed = self.speed,
        direction = direction,
        damage = self.damage
    }
    --print("PROPS: ", self.fire_timer)
    if self.fire_timer <= 0 then
        -- Crear el disparo usando el factory
        --print(self.factory_url)
        local projectile = collectionfactory.create(self.factory_url, position, nil, props)
        self.fire_timer = self.fire_rate
        
        -- Controlar el sonido desde aquí
        -- Obtener la referencia al objeto dentro de la colección que tiene el sonido
        local bullet_sound = projectile[hash(self.object_id)] -- Ajusta "bullet" si el nombre es diferente
        
        -- Controlar la reproducción del sonido
        local current_time = socket.gettime()
        if current_time - last_sound_time >= sound_cooldown then
            msg.post(bullet_sound, "play_shoot_sound")
            last_sound_time = current_time
        end
        return projectile
    end
end

function Weapon:update(dt)
    if self.fire_timer > 0 then
        self.fire_timer = self.fire_timer - dt
    end
end

return Weapon
