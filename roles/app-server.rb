name "app-server"
description "Setup app-server with ruby managed by rbenv"
run_list [
  "recipe[app-server]", 
  "recipe[base]"
]
