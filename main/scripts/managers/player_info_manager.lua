local M = {}

-- Variable para guardar la URL del jugador
M.player_url = nil

-- Función para registrar la URL del jugador
function M.set_player(url)
    M.player_url = url
end

-- Función para obtener la URL del jugador
function M.get_player()
    return M.player_url
end

return M