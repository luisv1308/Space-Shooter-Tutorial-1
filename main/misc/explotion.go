components {
  id: "explotion"
  component: "/main/scripts/explotion.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"explotion\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/player/tiles/miscellaneus.tilesource\"\n"
  "}\n"
  ""
  position {
    z: -0.6
  }
  scale {
    x: 3.0
    y: 3.0
  }
}
embedded_components {
  id: "sound"
  type: "sound"
  data: "sound: \"/assets/sounds/Weapons&Fight/SFX_explosion1.wav\"\n"
  ""
}
