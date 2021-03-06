# luarocks-gui

LuaRocks is a package manager for Lua. This project is a web-browser based GUI of LuaRocks that allows users to search for rocks, list installed rocks, install and remove them, view rock details, etc. It uses the LuaRocks API for interfacing with the LuaRocks back-end.

## Installation

1. Install the `luarocks-api` branch. Follow [these](https://github.com/luarocks/luarocks-gui/wiki/Installation-instructions#installing-the-luarocks-api-branch) instructions.
2. Install `luarock-gui` by following [these](https://github.com/luarocks/luarocks-gui/wiki/Installation-instructions#installing-luarocks-gui) instructions.

**NOTE:** This project uses the [luarocks-api](https://github.com/luarocks/luarocks/tree/luarocks-api) branch of LuaRocks. So, you need to install that branch in order to run luarocks-gui.\
Keep in mind that this branch is still under development, so if you come across any API issues then please report them [here](https://github.com/luarocks/luarocks/issues).\
This is temporary until the the API gets merged into the main branch of LuaRocks.

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
This project has been made under Google summer of code 2018 for LuaRocks. \
Feedback, pull requests, criticism, contributions, etc. are welcome!
