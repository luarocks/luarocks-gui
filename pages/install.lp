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
            <h3 class="title is-3">Install Rock:</h3>
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

          <?lua
          local lr = require("luarocks")
          
          local rock_tree = cgilua.POST.rock_tree
          local version = cgilua.POST.version
          
          if version == "latest" then
            version = nil
          end
          
          missing_deps, err = lr.check_missing_dependencies(cgilua.POST.rock_name, version, rock_tree)
          
          -- To check if any dependencies need to be installed along with the requested rock
          if type(missing_deps) == "table" and missing_deps[1] then
          ?>
          
          <!-- box header -->
          <div class="box-header column is-12">
            <h4 class="title is-4">
              <?lua print(cgilua.POST.rock_name.." - "..cgilua.POST.version) ?> has installed these dependencies:
            </h4>
          </div>
          <!-- box header end -->

          <div class="column is-12">

            <ul>
              <?lua
              for _, rock in ipairs(missing_deps) do
              ?>
                <li>
                  <?lua print("  - "..rock.name) ?>
                </li>

              <?lua
              end
              ?>
            </ul>
          </div>

          <?lua
          end 

          -- Use the LuaRocks CLI to install the requested rock
          -- by deafult use 'keep' to not unistall any other existing versions
          if version == nil then
            os.execute("luarocks install ".."--keep "..cgilua.POST.rock_name.." --tree="..rock_tree)
          else
            os.execute("luarocks install ".."--keep "..cgilua.POST.rock_name.." "..version.." --tree="..rock_tree)
          end

          ?>
          <div class="column is-12">
            <p>
              Please read the messages in the terminal to confirm the installation of <?lua print(cgilua.POST.rock_name) ?> 
            </p>
          </div>

          <div class="column is-2">
            <form action="search.lp" method="get">
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
