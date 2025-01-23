components {
  id: "asteroid_large"
  component: "/main/scripts/enemies/asteroid_large.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"asteroide_large\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/enemies/tiles/asteroid_large.tilesource\"\n"
  "}\n"
  ""
  position {
    z: 1.0
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
  "  data: 20.0\n"
  "  data: 15.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "explosion_big_factory"
  type: "factory"
  data: "prototype: \"/main/misc/explotion_big.go\"\n"
  ""
}
