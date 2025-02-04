local Enemy = {}
Enemy.__index = Enemy

function Enemy.new(properties)
    local self = setmetatable({}, Enemy)
    self.id = properties.id
    self.health = properties.health or 10
    self.speed = properties.speed or 50
    self.attack_power = properties.attack_power or 1
    self.patrol_points = properties.patrol_points or {}
    self.detection_range = properties.detection_range or 50
    self.attack_range = properties.attack_range or 200
    self.speed = properties.speed or 20
    self.target_reach_threshold = properties.target_reach_threshold or 35
    self.attack_damage = properties.attack_damage or 10
    self.position = properties.position or vmath.vector3(0, 500, 0)
    self.initial_position = properties.position or vmath.vector3(0, 500, 0)
    self.current_patrol_index = 0
    self.attack_timer = 0
    self.attack_cooldown = 2
    self.weapon = properties.weapon or nil
    self.movement_pattern = properties.movement_pattern or "linear"
    self.amplitude = properties.amplitude or 5
    self.direction = self.direction or 1 -- Si no se pasa, usa 1 por defecto
    self.time = 0 -- Tiempo acumulado para wave
    self.center_screen = vmath.vector3(240, 300, 0)
    self.level = properties.level or 1
    self.points = properties.points or 0

    return self
end

function Enemy:move()
    -- Lógica de movimiento
end

function Enemy:take_damage(damage)
    self.health = self.health - damage
    if self.health <= 0 then
        self:die()
    end
end

-- Checar si esta fuera de la pantalla
function Enemy:is_out_of_bounds()
    return (self.position.x < -400 or self.position.x > 900) or self.position.y < -100 or self.position.y > 1200
end

function Enemy:die()
    -- Lógica de muerte

end

-- Función para determinar si debe patrullar
function Enemy:should_patrol()
    return not self:is_player_in_range() and #self.patrol_points > 0
end

-- Verifica si el jugador está dentro del rango de detección
function Enemy:is_player_in_range(player_url)
    local player_position = self:get_player_position(player_url)
    local distance = vmath.length(player_position - self.position)
    return distance <= self.detection_range
end

-- Verifica si el jugador está dentro del rango de ataque
function Enemy:is_player_in_attack_range(player_url)
    local player_position = self:get_player_position(player_url)
    local distance = vmath.length(player_position - self.position)
    return distance <= self.attack_range
end

-- Mueve al enemigo hacia un objetivo
function Enemy:move_towards(target, dt)
    local target_position = target

    -- Agregar un desplazamiento aleatorio
    local offset = vmath.vector3(math.random(-40, 40), math.random(-40, 40), 0)
    local adjusted_target = target_position + offset

    -- Mover hacia el objetivo ajustado
    local direction = vmath.normalize(adjusted_target - self.position)
    self.position = self.position + direction * self.speed * dt

    -- Si el jugador existe
    if target_position then
        local player_pos = target_position
        local enemy_pos = go.get_position(go.get_id())

        -- Calcular la dirección hacia el jugador
        local direction = player_pos - enemy_pos
        local distance = vmath.length(direction)

        -- Normalizar la dirección
        if distance > 0 then
            direction = vmath.normalize(direction)
        end

        -- Mover al enemigo
        local speed = self.speed  -- Usa la velocidad definida para el enemigo
        local move_vector = direction * self.speed * dt

        -- -- Comprobar la distancia entre este enemigo y los otros enemigos
        -- if active_enemies then
        --     --local enemy_pos = go.get_position(self.url)
        --     for _, other_enemy_url in ipairs(active_enemies) do
        --         if msg.url(other_enemy_url) ~= go.get_id() then
        --             -- Checar que objeto existe 
        --             if does_object_exist(other_enemy_url) then
        --                 local other_enemy_pos = go.get_position(other_enemy_url)
        --                 local separation_vector = enemy_pos - other_enemy_pos
        --                 local separation_distance = vmath.length(separation_vector)

        --                 -- Si está demasiado cerca, aplica una corrección
        --                 if separation_distance < 55 and vmath.length(separation_vector) > 0 then  -- Ajusta este valor de distancia mínima
        --                     move_vector = move_vector + vmath.normalize(separation_vector) * 0.2
        --                 end
        --             end
                    
        --         end
        --     end
        -- end

        -- Actualizamos la posición
        go.set_position(enemy_pos + move_vector, go.get_id())
    end
end

-- Obtiene el siguiente punto de patrullaje
function Enemy:get_next_patrol_point()
    self.current_patrol_index = self.current_patrol_index + 1
    if self.current_patrol_index > #self.patrol_points then
        self.current_patrol_index = 1
    end
    return self.patrol_points[self.current_patrol_index]
end

-- Mover a posición inicial
function Enemy:move_to_initial_position(dt)
    target = self.initial_position
    self:move_towards(target, dt)
end

-- Verifica si alcanzó el objetivo
function Enemy:has_reached_target(target)
    local distance = vmath.length(target - self.position)
    return distance <= self.target_reach_threshold
end

-- Obtiene la posición del jugador
function Enemy:get_player_position(player_url)
    return go.get_position(player_url) -- Suponiendo que el jugador tiene un ID conocido
end

-- Realiza el ataque
function Enemy:perform_attack(player_url)
    print("El enemigo está atacando al jugador")
    local my_position = go.get_position()
    local player_position = self:get_player_position(player_url)
    print("Posicion del jugador: " .. player_position.x .. ", " .. player_position.y)
    -- Dispara al jugador
    if self.weapon then
        self.weapon:fire(my_position, player_position)
    end
    --msg.post("player", "take_damage", { damage = self.attack_damage })
end

function  Enemy:apply_movement_pattern(dt)
    if self.movement_pattern == hash(string.lower("lineal")) then
        lineal_movement(self, dt)
    elseif self.movement_pattern == hash(string.lower("zigzag")) then
        zigzag_movement(self, dt)
    elseif self.movement_pattern == hash(string.lower("wave")) then
        wave_movement(self, dt)
    elseif self.movement_pattern == hash(string.lower("hit_and_run")) then
        self:move_towards(self.center_screen, dt)
    elseif self.movement_pattern == hash(string.lower("side_by_side_right")) then
        side_by_side_right_movement(self, dt)
    elseif self.movement_pattern == hash(string.lower("side_by_side_left")) then
        print("side_by_side_left")
        side_by_side_left_movement(self, dt)
    end
    go.set_position(self.position, go.get_id())
end

function lineal_movement(self, dt)
    self.position.y = self.position.y - self.speed * dt
    go.set_position(self.position)
end

function zigzag_movement(self, dt)
    local speed = 100
    self.position.x = self.position.x + self.direction * speed * dt
    self.position.y = self.position.y - speed * dt

    -- Cambiar dirección al alcanzar un límite
    if self.position.x > 400 or self.position.x < 100 then
        self.direction = -self.direction
    end
    go.set_position(self.position)
end

function wave_movement(self, dt)
    local speed = 50
    local amplitude = 1
    local frequency = 2

    self.position.x = self.initial_position.x + math.sin(self.time * frequency) * amplitude
    self.position.y = self.position.y - speed * dt
    self.time = self.time + dt

    go.set_position(self.position)
end

function side_by_side_right_movement(self, dt)
    --print("Posicion del enemigo: " .. self.position.x .. ", " .. self.position.y)
    self.position.x = self.position.x + self.speed * dt
    go.set_position(self.position)
    
end

function side_by_side_left_movement(self, dt)
    self.position.x = self.position.x - self.speed * dt
    go.set_position(self.position)
end

function does_object_exist(id)
    return pcall(function(id) go.get_position(id) end, id) == true
end

return Enemy
