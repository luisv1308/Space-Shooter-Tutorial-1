components {
  id: "explotion"
  component: "/main/scripts/explotion.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"explotion_blue\"\n"
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
    x: 5.0
    y: 5.0
  }
}
