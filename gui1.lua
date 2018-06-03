gui1 = {}

local xavante = require "xavante" 
local filehandler = require "xavante.filehandler"
local cgiluahandler = require "xavante.cgiluahandler"
local redirect = require "xavante.redirecthandler"

--local datafile = require("luarocks_gui.gui1")
--local datafile = require("datafile")

function gui1.command()
    --local s = assert(datafile.path("gui1/0.0.1-1/pages/index.lp", "r"))
    --local s = assert(datafile.path("pages/index.lp", "r"))

    print("ayy lmao gui")

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

--gui1.command()

return gui1