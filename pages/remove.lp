<!DOCTYPE html>
<html>

	<?lua 
	arg = {}
	local lr = require("luarocks")

	local lib_start, lib_end = string.find(cgilua.POST.rock_tree , "lib")
	local rock_tree = string.sub(cgilua.POST.rock_tree, 1, lib_start-1)

	local check, err = nil, nil
	if cgilua.POST.force_fast == "no" then
		check, err = lr.remove(cgilua.POST.rock_name, cgilua.POST.version, rock_tree)
	elseif cgilua.POST.force_fast == "yes" then
		check, err = lr.remove(cgilua.POST.rock_name, cgilua.POST.version, rock_tree, "force-fast")
	end
	?>
	<head>
		<meta http-equiv="Refresh" content="100; url=list.lp">
	</head>

	<body>

		<?lua
		if type(err) == "table" and err[1] then
			print()
			print("This rock is a depenency of:")
			print()
			for _, rock in ipairs(err) do
				print("  - "..rock.name.." "..rock.version)
			end
		
		?>

		<form action="remove.lp" method="post">
		<input style="display:none;" name="version" id="version" value="<?lua= cgilua.POST.version ?>">
		<input style="display:none;" name="rock_tree" id="rock_tree" value="<?lua= cgilua.POST.rock_tree ?>">
		<input style="display:none;" name="rock_name" id="rock_name" value="<?lua= cgilua.POST.rock_name ?>">
		<button class="button" type="submit" name="force_fast" value="yes" >Force remove</button>
		</form>

		<?lua
		else
			if check == true then
		?>
			<p> <?lua print(cgilua.POST.rock_name..": "..cgilua.POST.version) ?>  is removed!  </p>
		<?lua
			else
		?>
			<p> <?lua print("Error :  "..err) ?> </p>

		<?lua 
			end
		end
		?>

		<form action="list.lp" method="get">
		<button class="button" type="submit" name="wow" value="wow" >Go back</button>
		</form>

	</body>

</html>