<!DOCTYPE html>

<head>
  <title>LuaRocks GUI</title>
  <!-- styles -->
  <link rel="stylesheet" href="bulma.min.css">
  <link rel="stylesheet" href="main.css">
  <link rel="stylesheet" href="list.css">
  <!-- styles end -->
  <meta http-equiv="Refresh" content="100; url=search.lp">
</head>

<?lua
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
?>

<body>
  <!-- navbar -->
  <nav class="navbar">
    <div class="container">
      <div class="navbar-brand">
        <a class="navbar-item" href="index.lp"><img src="luarocks_logo_only.png"><strong>LuaRocks</strong></a>
      </div>
      <div id="navbarMenu" class="navbar-menu">
        <div class="navbar">
          <a class="navbar-item" href="list.lp">List rocks</a>
          <a class="navbar-item" href="search.lp">Search rocks</a>
          <a class="navbar-item" href="advanced.lp">Advanced</a>
        </div>
        <div class="navbar-end">
          <a class="navbar-item" href="about.lp">About</a>
        </div>
      </div>
    </div>
  </nav>
  <!-- navbar end -->

  <!-- page header -->
  <div class="main-header">
    <section class="hero">
      <div class="hero-body">
        <div class="container">
          <div class="has-text-left">
            <h3 class="title is-3">Write new rockspec:</h3>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- page header end -->

  <!-- main page content -->
  <div class="main-content">
    <div class="container">
      <div class="columns">
        <div class=" box columns column is-multiline is-12">

          <div class="column is-12">
            <?lua 

            local lfs = require("lfs")
            lfs.chdir("../../../../../..")
            lfs.chdir(tostring(cgilua.POST.location))

            local lr = require("luarocks")

            local name = nil
            local version = nil
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

            --name = cgilua.POST.name
            --version = cgilua.POST.version

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
          </div>
          <div class="column is-2">
            <form action="advanced.lp" method="get">
              <button class="button" type="submit">Go back</button>
            </form>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- main page content end -->

  <!-- footer -->
  <div class="footer">
    <small>
    <div class="container">
      <div class="has-text-centered">
        <a href="https://luarocks.org">LuaRocks</a>
      </div>
      <div class="has-text-centered">
        <a href="https://github.com/jiteshpabla/luarocks-gui">Source</a>
        &#9679;
        <a href="https://github.com/jiteshpabla/luarocks-gui/issues">Issues</a>
        &#9679;
        <a href="https://gitter.im/luarocks/luarocks">Gitter-chat</a>
      </div>
    </div>
    </small>
  </div>
  <!-- footer end -->

</body>