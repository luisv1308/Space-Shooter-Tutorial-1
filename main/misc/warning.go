components {
  id: "warning"
  component: "/main/scripts/levels/warning.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"warning\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/assets/tiles/warning.atlas\"\n"
  "}\n"
  ""
  position {
    x: 240.0
    y: 400.0
  }
  scale {
    x: 0.7
    y: 0.7
  }
}
