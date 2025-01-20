local Utilities = {}

function Utilities.round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end

function Utilities.clamp(value, min, max)
    return math.min(math.max(value, min), max)
end

function Utilities.lerp(start, finish, amount)
    return start + (finish - start) * amount
end

function Utilities.lerp_vector3(start, finish, amount)
    return vmath.lerp(start, finish, amount)
end

function Utilities.lerp_color(start, finish, amount)
    return vmath.lerp(start, finish, amount)
end 

function Utilities.lerp_color_vector3(start, finish, amount)    
    return vmath.lerp(start, finish, amount)
end

function Utilities:shuffle_table(tbl)
    for i = #tbl, 2, -1 do
        local j = math.random(i)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end    
    return tbl
end

return Utilities