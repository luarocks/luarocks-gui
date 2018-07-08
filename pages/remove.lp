<!DOCTYPE html>
<html>

<?lua 
local lr = require("luarocks")
lr.remove(cgilua.POST.rock_name, cgilua.POST.version)
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