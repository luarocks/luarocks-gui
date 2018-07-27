<!DOCTYPE html>
<?lua 
local lr = require("luarocks")
if cgilua.POST.action == "lint" then
ok, err = lr.lint(cgilua.POST.rockspec_name)
print(ok, err)
elseif cgilua.POST.action == "new_version" then
ok, err = lr.new_version(cgilua.POST.rockspec_name)
print(ok, err)
else
print("unidentified action")
end
?>
<head>
<!--<meta http-equiv="Refresh" content="1; url=advanced.lp">-->
</head>

<body>
  <form action="advanced.lp" method="get">
    <button class="button" type="submit">ok, go back</button>
  </form>
</body>