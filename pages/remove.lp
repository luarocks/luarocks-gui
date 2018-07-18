<!DOCTYPE html>
<html>

<?lua 
local lr = require("luarocks")

local lib_start, lib_end = string.find(cgilua.POST.rock_tree , "lib")
local rock_tree = string.sub(cgilua.POST.rock_tree, 1, lib_start-1)

print(lr.remove(cgilua.POST.rock_name, cgilua.POST.version, rock_tree))
?>
<head>
<meta http-equiv="Refresh" content="1; url=list.lp">
</head>

<body>

<p> <?lua print(cgilua.POST.rock_name..": "..cgilua.POST.version) ?>  is removed!  </p>

<form action="list.lp" method="get">
<button class="button" type="submit" name="rock_name" value="wow" >ok</button>
</form>

</body>

</html>