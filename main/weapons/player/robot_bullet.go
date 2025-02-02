components {
  id: "bullet"
  component: "/main/scripts/weapons/bullet.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/weapons/player/tiles/robot_bullet_tilesource.tilesource\"\n"
  "}\n"
  ""
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
  "group: \"player_bullet\"\n"
  "mask: \"enemy\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: -1.4\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  data: 5.0\n"
  "  data: 10.0\n"
  "  data: 10.0\n"
  "}\n"
  "bullet: true\n"
  ""
}
embedded_components {
  id: "sound_fire"
  type: "sound"
  data: "sound: \"/assets/sounds/Weapons&Fight/SFX_shot4.wav\"\n"
  ""
}
