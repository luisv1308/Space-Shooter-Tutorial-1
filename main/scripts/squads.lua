local squads = {
    side_by_side_5_fighter = {
        type = "side_by_side", count = 5, movement_pattern = hash("side_by_side"),
        enemy_type = hash("fighter")
    },
    side_by_side_5_fighter_powerup_other = {
        type = "side_by_side", count = 5, movement_pattern = hash("side_by_side"),
        enemy_type = hash("fighter"), powerup = {type = hash("weapon_speed"), enemy_number = 4},
        other = {
            type = "outside_diagonal_right", count = 2, movement_pattern = hash("hit_and_run"),
            enemy_type = hash("scout")
        }
    },
    h_formation_7_scout_powerup = {
        type = "h_formation", count = 7, movement_pattern = hash("lineal"),
        enemy_type = hash("scout"), powerup = {type = hash("weapon_speed"), enemy_number = 4}
    },
    v_formation_9_fighter = {
        type = "v_formation", count = 9, movement_pattern = hash("lineal"),
        enemy_type = hash("fighter")
    },
    double_column_10_scout = {
        type = "double_column", count = 10, movement_pattern = hash("lineal"),
        enemy_type = hash("scout")
    },
    diagonal_left_5_scout = {
        type = "outside_diagonal_left", count = 5, movement_pattern = hash("hit_and_run"),
        enemy_type = hash("scout")
    },
    diagonal_right_5_scout = {
        type = "outside_diagonal_right", count = 5, movement_pattern = hash("hit_and_run"),
        enemy_type = hash("scout")
    },
    diagonal_left_5_fighter_diagonal_right_5_fighter = {
        type = "outside_diagonal_left", count = 5, movement_pattern = hash("hit_and_run"),
        enemy_type = hash("fighter"),
        other = {
            type = "outside_diagonal_right", count = 5, movement_pattern = hash("hit_and_run"),
            enemy_type = hash("fighter")
        }
    },
    boss_1 = {
        type = "side_by_side", count = 1, movement_pattern = hash("side_by_side"),
        enemy_type = hash("boss"), boss_name = hash("boss_1")
    },
    boss_2 = {
        type = "side_by_side", count = 2, movement_pattern = hash("side_by_side"),
        enemy_type = hash("boss"), boss_name = hash("boss_2")
    },
    boss_3 = {
        type = "side_by_side", count = 3, movement_pattern = hash("side_by_side"),
        enemy_type = hash("boss"), boss_name = hash("boss_3")
    },
    level_1_dialogue_1 = {
        type = "dialogue_event", count = 1, text = "Hola, es hora de empezar la accion!", 
        texture = "bounty_hunter", speed = 0.05
    },
    level_1_dialogue_2 = {
        type = "dialogue_event", count = 1, text = "Bien hecho!", 
        texture = "friend_robot", speed = 0.05
    },
    level_1_dialogue_3 = {
        type = "dialogue_event", count = 1, text = "Hola, es hora de empezar la accion!", 
        texture = "friend_robot", speed = 0.05
    }
}

return squads
