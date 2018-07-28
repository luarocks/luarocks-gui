package = "luarocks-gui"
version = "0.0.0-1"

description = {
   summary = "GUI module for LuaRocks 3.x",
   license = "MIT",
   homepage = "https://github.com/jiteshpabla/luarocks-gui",
}

dependencies = {
   "lua >= 5.1, < 5.4 ",
   "xavante",
   "wsapi-xavante",
   "cgilua",
   "datafile",
   "luafilesystem",
}

source = {
   url = "git://github.com/jiteshpabla/luarocks-gui"
}

build = {
   type = "builtin",
   modules = {
      ['luarocks.cmd.external.gui'] = "gui.lua",
   },
   copy_directories = { "pages" }
}
