local gui = {}

gui.help_summary = "Starts the LuaRocks web gui server"
gui.help_arguments = nil
gui.help = [[
This starts a local webserver to access the LuaRocks web gui.

You can view the gui by visting: http://localhost:8080/ from your web browser.
]]


function gui.command()

    local port = 8080

    -- Copas needs to patch "socket.http" to use the copas sockets. Hence
    -- it requires `socket.http` to not have been loaded. So let's clear it.
    -- (normally not necessary, but now LuaRocks already loaded LuaSocket)
    package.loaded["socket.http"] = nil

    local fs = require "luarocks.fs"
    local copas = require "copas"
    local datafile = require "datafile"
    local xavante = require "xavante"
    local redirect = require "xavante.redirecthandler"
    local filehandler = require "xavante.filehandler"
    local cgiluahandler = require "xavante.cgiluahandler"


    -- Define here where Xavante HTTP documents scripts are located
    local path = datafile.path("pages/index.lp", "r")
    local webDir = path:sub(1, -1 - #("/index.lp"))

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


    -- create the webserver
    xavante.HTTP{
        server = {host = "*", port = port},

        defaultHost = {
          rules = simplerules
        }
    }

    -- schedule a task to open the webbrowser
    copas.addthread(function()
        copas.sleep(0.1)  -- wait for a tiny bit to allow Xavante to start
        print("Serving the LuaRocks gui on 'http://localhost:" .. port .. "'.")
        local ok = fs.browser("http://localhost:" .. port)
        if not ok then
          print("WARNING: Failed to open the browser, please visit the url manually.")
        end
    end)

    xavante.start()
end

return gui
