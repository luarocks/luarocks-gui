<!DOCTYPE html>
<html>

<?lua 
local lr = require("luarocks")
lr.install(cgilua.POST.rock_name, cgilua.POST.version)
?>

<head>
<meta http-equiv="Refresh" content="1; url=search.lp">
</head>

<body>
<p> <?lua print(cgilua.POST.rock_name) ?>  is installed!  </p>
</body>

</html>