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
