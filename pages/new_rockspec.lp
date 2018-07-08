<!DOCTYPE html>
<html>

<?lua 
local lr = require("luarocks")

local function luaver_format()

	luavers = ""
	
	if cgilua.POST.luaver_5_1 then
		luavers = luavers.."5.1"
	end

	if cgilua.POST.luaver_5_2 then
		if luavers == "" then
			luavers = luavers.."5.2"
		else
			luavers = luavers..",5.2"
		end
	end

	if cgilua.POST.luaver_5_3 then
		if luavers == "" then
			luavers = luavers.."5.3"
		else
			luavers = luavers..",5.3"
		end
	end

	if cgilua.POST.luaver_5_4 then
		if luavers == "" then
			luavers = luavers.."5.4"
		else
			luavers = luavers..",5.4"
		end
	end

	return luavers
end


name = nil
version = nil
local table = {}

--[[ the if statement do not work
if cgilua.POST.name then
	name = cgilua.POST.name
elseif cgilua.POST.location then
	table["location"] = tostring(cgilua.POST.location)
elseif cgilua.POST.output then
	table["output"] = tostring(cgilua.POST.output)
elseif cgilua.POST.license then
	table["license"] = tostring(cgilua.POST.license)
elseif cgilua.POST.summary then
	table["summary"] = tostring(cgilua.POST.summary)
elseif cgilua.POST.description then
	table["detailed"] = tostring(cgilua.POST.description)
elseif cgilua.POST.homepage then
	table["homepage"] = tostring(cgilua.POST.homepage)
elseif cgilua.POST.rockspec_format then
	table["rockspec_format"] = tostring(cgilua.POST.rockspec_format)
elseif cgilua.POST.c_libraries then
	table["lib"] = tostring(cgilua.POST.c_libraries)
end
--]]

name = cgilua.POST.name
table["location"] = tostring(cgilua.POST.location)
table["output"] = tostring(cgilua.POST.output)
table["license"] = tostring(cgilua.POST.license)
table["summary"] = tostring(cgilua.POST.summary)
table["detailed"] = tostring(cgilua.POST.description)
table["homepage"] = tostring(cgilua.POST.homepage)
table["rockspec_format"] = tostring(cgilua.POST.rockspec_format)
table["lib"] = tostring(cgilua.POST.c_libraries)

table["lua-version"] = luaver_format()

ok, err = lr.write_rockspec(table, name, version)
print(ok, err) 

?>

<head>
<!--<meta http-equiv="Refresh" content="1; url=advanced.lp">-->
</head>

<body>

<form action="advanced.lp" method="get">
<button class="button" type="submit" name="rock_name" value="wow" >ok, go back</button>
</form>

</body>

</html>
