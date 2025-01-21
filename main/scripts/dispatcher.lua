-- dispatcher.lua
local M = {}

M.listeners = {}

function M.register(id)
    table.insert(M.listeners, id)
end

function M.broadcast(message_id, message)
    for _, id in ipairs(M.listeners) do
        msg.post(id, message_id, message)
    end
end

return M
