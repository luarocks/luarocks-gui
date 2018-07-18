<!DOCTYPE html>
<html>

<?lua 
local lr = require("luarocks")

local rock_tree = cgilua.POST.rock_tree
local version = cgilua.POST.version

if version == "latest" then
	version = nil
end

lr.install(cgilua.POST.rock_name, version, rock_tree)
?>

<head>
<meta http-equiv="Refresh" content="1; url=search.lp">
</head>

<body>
<p> <?lua print(cgilua.POST.rock_name) ?>  is installed!  </p>
</body>

</html>