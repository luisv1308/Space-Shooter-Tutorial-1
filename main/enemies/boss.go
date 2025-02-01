components {
  id: "boss_script"
  component: "/main/scripts/bosses/boss_script.script"
}
embedded_components {
  id: "boss1"
  type: "sprite"
  data: "default_animation: \"boss1\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/enemies/tiles/bosses.tilesource\"\n"
  "}\n"
  ""
  position {
    z: 1.0
  }
  scale {
    x: 5.0
    y: 5.0
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
  "  data: 35.0\n"
  "  data: 30.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "projectile_factory"
  type: "factory"
  data: "prototype: \"/main/weapons/enemies/boss_projectile.go\"\n"
  ""
}
