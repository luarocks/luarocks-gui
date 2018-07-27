# luarocks-gui

LuaRocks is a package manager for Lua. This project is a web-browser based GUI of LuaRocks that allows users to search for rocks, list installed rocks, install and remove them, view rock details, etc. It uses the LuaRocks API for interfacing with the LuaRocks back-end.

## Installation
Just install using LuaRocks, by running this command:
```
luarocks install luarocks-gui
```
Or download/clone this repository and run this in the luarocks-gui directory:
```
luarocks build
```

## Usage

After a successful installation, run:
```
luarocks gui
```
This will automatically open up a browser window (of your default browser) and run there.\
Note: By default luarocks-gui runs on port ```8080```.

## GUI

The web-GUI has 5 main pages:

#### Index/landing page
This page shows the list of rock-trees configured in your current setup.

#### list rocks page
This page shows the list of rocks installed in all of the rock-trees in your system.\
You can filter the results based on a particular rock-tree, or some keyworks/queries.\
\
Each rock has 3 buttons along with it:
- Details: shows further details for a rock.
- Documentation: Opens the directory containing documentation of the rock.
- Remove: Removes the rock from LuaRocks.

#### search rocks page
This page lets you search for any rock on the internet.\
Shows the the list of rocks based on your query.\
\
Each rock has 2 buttons along with it:
- View on luarocks.org: Redirects to [luarocks.org](https://luarocks.org) and with the same query you entered.
- Install: Installs the rock. (Uses the rock-version and rock-tree you select in the drop-down menus)

#### advanced page
This page lets you manage your [rockspec](https://github.com/luarocks/luarocks/wiki/Creating-a-rock#writing-a-rockspec) with ease.\
You can:
- lint a rockspec
- write a new version for an existing rockspec
- write a new rockspec

#### about page
This page shows you the informantion about luarocks-gui.


## Dependencies

This rock depends on:
- [xavante](https://keplerproject.github.io/xavante/)
- [wsapi-xavante](https://keplerproject.github.io/xavante/)
- [cgilua](https://keplerproject.github.io/cgilua/)
- [datafile](https://github.com/hishamhm/datafile)

This project also uses:
- [Bulma](https://github.com/jgthms/bulma)
- [Vue](https://github.com/vuejs/vue)

--------------------------------------------------------------------
Feedback, pull requests, criticism, contributions, etc. are welcome!
