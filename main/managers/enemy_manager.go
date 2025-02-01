components {
  id: "enemy_manager"
  component: "/main/scripts/managers/enemy_manager.script"
}
embedded_components {
  id: "factory_enemy"
  type: "factory"
  data: "prototype: \"/main/enemies/enemy.go\"\n"
  ""
}
embedded_components {
  id: "small_asteroid_factory"
  type: "factory"
  data: "prototype: \"/main/enemies/asteroid_small.go\"\n"
  ""
}
embedded_components {
  id: "factory_asteroid"
  type: "factory"
  data: "prototype: \"/main/enemies/asteroid_large.go\"\n"
  ""
}
embedded_components {
  id: "factory_boss"
  type: "factory"
  data: "prototype: \"/main/enemies/boss.go\"\n"
  ""
}
