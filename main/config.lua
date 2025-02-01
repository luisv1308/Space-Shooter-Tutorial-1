local M = {}

-- Configuraciones generales
M.game_title = "Mi Juego Increíble"
M.screen_width = 480
M.screen_height = 640

-- Configuraciones de jugador
M.player = {
    max_health = 100,
    speed = 300,
    fire_rate = 1.0
}

-- Configuraciones de enemigos
M.enemies = {
    spawn_time = 5,
    goblin = {
        health = 50,
        damage = 10,
        speed = 100
    },
    orc = {
        health = 100,
        damage = 20,
        speed = 80
    }
}

-- Configuraciones de powerups
M.powerups = {
    duration = 10,
    weapon_speed = {
        duration = 10,
        effect = 0.5
    },
    speed = {
        duration = 10,
        effect = function(player) player.speed = player.speed * 1.5 end
    },
    shield = {
        duration = 5,
        effect = function(player) player.shield = true end
    }
}

return M
