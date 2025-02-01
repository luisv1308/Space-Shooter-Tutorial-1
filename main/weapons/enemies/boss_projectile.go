components {
  id: "boss_projectile"
  component: "/main/scripts/weapons/boss_projectile.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"bullet4\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/tiles/bullets.tilesource\"\n"
  "}\n"
  ""
  scale {
    x: 4.0
    y: 4.0
  }
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"enemy_bullet\"\n"
  "mask: \"player\"\n"
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
  "  data: 5.0\n"
  "  data: 5.0\n"
  "  data: 10.0\n"
  "}\n"
  "bullet: true\n"
  ""
}
