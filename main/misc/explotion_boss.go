components {
  id: "explotion"
  component: "/main/scripts/explotion.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"explotion_purple\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/player/tiles/miscellaneus.tilesource\"\n"
  "}\n"
  ""
  position {
    z: 1.0
  }
  scale {
    x: 10.0
    y: 10.0
  }
}
embedded_components {
  id: "sound"
  type: "sound"
  data: "sound: \"/assets/sounds/Weapons&Fight/SFX_explosion3.wav\"\n"
  "gain: 2.0\n"
  ""
}
