<html>
<head>
<?lua
os.execute('xdg-open "$HOME/../..'..cgilua.POST.doc_dir..'"')
?>
<meta http-equiv="Refresh" content="1; url=list.lp">
</head>
<body onLoad="loaded()">
Opening the directory <?lua print(cgilua.POST.doc_dir) ?>...
</body>