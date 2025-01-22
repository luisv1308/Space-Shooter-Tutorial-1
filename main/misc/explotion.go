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
    z: 1.0
  }
  scale {
    x: 3.0
    y: 3.0
  }
}
