<!DOCTYPE html>
<head>
  <?lua
  local lr = require "luarocks"
  print(lr.open_doc(cgilua.POST.doc_dir, cgilua.POST.doc_file))
  ?>
  <meta http-equiv="Refresh" content="1; url=list.lp">
</head>
<body>
  Opening the directory <?lua print(cgilua.POST.doc_dir) ?>...
</body>