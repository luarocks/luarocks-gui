package = "luarocks-gui"
version = "0.0.0-1"

description = {
   summary = "GUI module for Lua 5.x",
   license = "",
   homepage = "https://github.com/jiteshpabla/luarocks-gui",
}

dependencies = {
   "lua >= 5.0, < 5.4 "
}

source = {
   url = "git://github.com/jiteshpabla/luarocks-gui"
}

build = {
   type = "builtin",
   modules = {
      ['luarocks_gui.gui1'] = "gui1.lua",
   },
   copy_directories = { "pages" }
}

