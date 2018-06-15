<!DOCTYPE html>
<html>

<?lua 
local lr = require("luarocks")
lr.remove(cgilua.POST.rock_name)

--local pl = require "pl.pretty"
--print(pl.write(lr.list()))
?>


<?lua 

print(io.open("remove.lp", "a"))
file = io.open("remove.lp", "a")
file:write("h")

?>
<head>
<!--<meta http-equiv="Refresh" content="10; url=list.lp">-->
</head>

<body>

<p> <?lua print(cgilua.POST.rock_name) ?>  is removed!  </p>

<form action="list.lp" method="get">
<button class="button" type="submit" name="rock_name" value="wow" >Go back, nibba</button>
</form>

</body>

</html>
eeeeeeeeh