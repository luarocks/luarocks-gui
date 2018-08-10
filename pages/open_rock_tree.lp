<!DOCTYPE html>
<head>
  <?lua
  local lr = require "luarocks"
  local fs = require "luarocks.fs"
  fs.init()
  fs.browser(cgilua.POST.rock_tree_dir)
  ?>
  <meta http-equiv="Refresh" content="1; url=index.lp">
</head>
<body>
  Opening the directory <?lua print(cgilua.POST.rock_tree_dir) ?>...
</body>