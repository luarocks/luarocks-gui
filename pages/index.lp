<div class="page-header">
	<h1>Welcome to luarocks GUI</h1>
</div>
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

<?lua
local lr = require "luarocks"
print(lr.version()) 
?>
<h2>This is calling the LuaRocks API! The LuaRocks version is: <%= lr.version() %>. </h2>