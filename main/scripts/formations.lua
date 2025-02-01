local squads = require("main/scripts/squads")

return {
    [1] = {
            -- squads.side_by_side_5_fighter,
            -- squads.side_by_side_5_fighter_powerup_other,
            -- squads.h_formation_7_scout_powerup,
            -- squads.v_formation_9_fighter,
            -- squads.double_column_10_scout,
            -- squads.diagonal_left_5_scout,
            -- squads.diagonal_right_5_scout,
            -- squads.diagonal_left_5_fighter_diagonal_right_5_fighter,
            squads.boss_1
        
    },
    [2] = {
        --{type = "line_horizontal", count = 10, movement_pattern = hash("lineal"), 
           -- enemy_type = hash("scout")},
        --{type = "circle", count = 8, movement_pattern = hash("lineal"), 
           -- enemy_type = hash("scout")},
        {type = "triangle", count = 9, movement_pattern = hash("lineal"), 
            enemy_type = hash("scout")},
         -- {type = "zigzag", count = 10},
        -- {type = "diagonal", count = 5},
        -- {type = "rectangle_center", count = 12},
        -- {type = "rectangle_right", count = 12},
        -- {type = "h_formation", count = 7},
        -- {type = "v_formation", count = 9},
        -- {type = "double_column", count = 10},
         --{type = "random", count = 0},
         {type = "outside_diagonal_left", count = 1, movement_pattern = hash("hit_and_run")
            , enemy_type = hash("scout")},
         {type = "outside_diagonal_right", count = 1, movement_pattern = hash("hit_and_run"), 
            enemy_type = hash("scout")},
    }
}