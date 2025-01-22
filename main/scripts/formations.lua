return {
    [1] = {
         {type = "side_by_side", count = 5, movement_pattern = hash("side_by_side"), 
            enemy_type = hash("fighter"), other = {
               type = "outside_diagonal_right", count = 5, movement_pattern = hash("hit_and_run"), 
               enemy_type = hash("scout"),}},
         {type = "h_formation", count = 7, movement_pattern = hash("lineal"), 
            enemy_type = hash("scout")},
         {type = "v_formation", count = 9, movement_pattern = hash("lineal"), 
            enemy_type = hash("fighter")},
         {type = "double_column", count = 10, movement_pattern = hash("lineal"), 
            enemy_type = hash("scout")},
         --{type = "random", count = 0},
         {type = "outside_diagonal_left", count = 5, movement_pattern = hash("hit_and_run")
            , enemy_type = hash("scout")},
         {type = "outside_diagonal_right", count = 5, movement_pattern = hash("hit_and_run"), 
            enemy_type = hash("scout")},
         {type = "side_by_side", count = 5, movement_pattern = hash("side_by_side"), 
            enemy_type = hash("fighter")},
         {type = "h_formation", count = 7, movement_pattern = hash("lineal"), 
            enemy_type = hash("scout")},
         {type = "v_formation", count = 9, movement_pattern = hash("lineal"), 
            enemy_type = hash("fighter")},
         {type = "double_column", count = 10, movement_pattern = hash("lineal"), 
            enemy_type = hash("scout")},
         --{type = "random", count = 0},
         {type = "outside_diagonal_left", count = 5, movement_pattern = hash("hit_and_run"), 
            enemy_type = hash("scout")},
         {type = "outside_diagonal_right", count = 5, movement_pattern = hash("hit_and_run"), 
            enemy_type = hash("scout")},
         {type = "outside_diagonal_left", count = 5, movement_pattern = hash("hit_and_run"), 
            enemy_type = hash("fighter"), other = {
               type = "outside_diagonal_right", count = 5, movement_pattern = hash("hit_and_run"), 
               enemy_type = hash("fighter"),}},
        {type = "circle", count = 8, movement_pattern = hash("zigzag"), 
            enemy_type = hash("scout")},
        -- {type = "triangle", count = 9, movement_pattern = hash("lineal")},
         -- {type = "zigzag", count = 10},
        -- {type = "diagonal", count = 5},
        -- {type = "rectangle_center", count = 12},
        -- {type = "rectangle_right", count = 12},
        
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