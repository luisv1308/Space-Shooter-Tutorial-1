components {
  id: "player"
  component: "/main/scripts/player/player_main.script"
}
embedded_components {
  id: "bounty_hunter_sprite"
  type: "sprite"
  data: "default_animation: \"idle\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/player/tiles/bounty_hunter_tilesource.tilesource\"\n"
  "}\n"
  ""
  scale {
    x: 3.0
    y: 3.0
    z: 4.0
  }
}
embedded_components {
  id: "robot_sprite"
  type: "sprite"
  data: "default_animation: \"idle\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/player/tiles/robot_tilesource.tilesource\"\n"
  "}\n"
  ""
  scale {
    x: 3.0
    y: 3.0
  }
}
