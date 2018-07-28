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
            <h3 class="title is-3">lint / new version:</h3>
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
            lfs = require("lfs")
            lfs.chdir("../../../../../..")

            local lr = require("luarocks")

            if cgilua.POST.action == "lint" then
              ok, err = lr.lint(cgilua.POST.rockspec_name)
              print(ok)
              print(" || ")
              print(err)
              if ok == true then
                print(" || No problems with the rockspec:"..cgilua.POST.rockspec_name)
              end
            elseif cgilua.POST.action == "new_version" then
              ok, err = lr.new_version(cgilua.POST.rockspec_name)
              print(ok)
              print(" || ")
              print(err)
            else
              print("unidentified action")
            end
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