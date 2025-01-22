components {
  id: "enemy_main_script"
  component: "/main/scripts/enemies/enemy_main_script.script"
}
embedded_components {
  id: "sprite_scout"
  type: "sprite"
  data: "default_animation: \"scout\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/enemies/tiles/enemy_scout_tilesource.tilesource\"\n"
  "}\n"
  ""
  position {
    x: -1.5
  }
  scale {
    x: 3.0
    y: 3.0
  }
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"enemy\"\n"
  "mask: \"player\"\n"
  "mask: \"player_bullet\"\n"
  "mask: \"enemy_collision\"\n"
  "mask: \"enemy\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 9.0\n"
  "  data: 10.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "explosion_factory"
  type: "factory"
  data: "prototype: \"/main/misc/explotion.go\"\n"
  ""
}
embedded_components {
  id: "sprite_fighter"
  type: "sprite"
  data: "default_animation: \"fighter\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "size {\n"
  "  x: 8.0\n"
  "  y: 8.0\n"
  "}\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/enemies/tiles/enemy_scout_tilesource.tilesource\"\n"
  "}\n"
  ""
  scale {
    x: 3.0
    y: 3.0
  }
}
