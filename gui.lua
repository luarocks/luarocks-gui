local gui = {}

gui.help_summary = "Starts the LuaRocks web gui server"
gui.help_arguments = nil
gui.help = [[
This starts a local webserver to access the LuaRocks web gui.

You can view the gui by visting: http://localhost:8080/ from your web browser.
]]


function gui.command()

    -- Copas needs to patch "socket.http" to use the copas sockets. Hence
    -- it requires `socket.http` to not have been loaded. So let's clear it.
    -- (normally not necessary, but now LuaRocks already loaded LuaSocket)
    package.loaded["socket.http"] = nil

    local xavante = require "xavante"
    local filehandler = require "xavante.filehandler"
    local cgiluahandler = require "xavante.cgiluahandler"
    local redirect = require "xavante.redirecthandler"

    --local datafile = require("luarocks_gui.gui")
    --local datafile = require("datafile")

    --local s = assert(datafile.path("gui/0.0.1-1/pages/index.lp", "r"))
    --local s = assert(datafile.path("pages/index.lp", "r"))

    -- Define here where Xavante HTTP documents scripts are located
    local webDir = "pages"


    local simplerules = {

        { -- URI remapping example
            match = "^[^%./]*/$",
            with = redirect,
            params = {"index.lp"}
          },

        { -- cgiluahandler example
          match = {"%.lp$", "%.lp/.*$", "%.lua$", "%.lua/.*$" },
          with = cgiluahandler.makeHandler (webDir)
        },

        { -- filehandler example
          match = ".",
          with = filehandler,
          params = {baseDir = webDir}
        },
    }

    xavante.HTTP{
        server = {host = "*", port = 8080},

        defaultHost = {
          rules = simplerules
        }
    }
    xavante.start()
end

return gui