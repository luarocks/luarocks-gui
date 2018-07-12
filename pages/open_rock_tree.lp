<!DOCTYPE html>
<html>
<head>
<?lua
os.execute('xdg-open "$HOME/../..'..cgilua.POST.rock_tree_dir..'"')
?>
<meta http-equiv="Refresh" content="1; url=index.lp">
</head>
<body onLoad="loaded()">
Opening the directory <?lua print(cgilua.POST.rock_tree_dir) ?>...
</body>
</html>