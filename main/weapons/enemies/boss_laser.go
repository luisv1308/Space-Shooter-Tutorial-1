components {
  id: "boss_laser"
  component: "/main/scripts/enemies/boss_laser.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"laser_blue\"\n"
  "material: \"/assets/sprite.material\"\n"
  "blend_mode: BLEND_MODE_ADD\n"
  "slice9 {\n"
  "  y: 2.0\n"
  "  w: 20.0\n"
  "}\n"
  "size {\n"
  "  x: 8.0\n"
  "  y: 24.0\n"
  "}\n"
  "size_mode: SIZE_MODE_MANUAL\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/tiles/laser.tilesource\"\n"
  "}\n"
  ""
  position {
    y: -30.0
  }
  scale {
    x: 6.0
    y: 6.0
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
  "      y: -60.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "  }\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      y: -200.0\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 3\n"
  "    count: 3\n"
  "  }\n"
  "  data: 5.0\n"
  "  data: 120.0\n"
  "  data: 10.0\n"
  "  data: 25.0\n"
  "  data: 10.0\n"
  "  data: 10.0\n"
  "}\n"
  ""
}
embedded_components {
  id: "sound_fire"
  type: "sound"
  data: "sound: \"/assets/sounds/Weapons&Fight/SFX_laser(loop).wav\"\n"
  "looping: 1\n"
  "gain: 0.7\n"
  ""
}
