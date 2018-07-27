<!DOCTYPE html>

<head>
  <title>LuaRocks GUI</title>
  <!-- styles -->
  <link rel="stylesheet" href="bulma.min.css">
  <link rel="stylesheet" href="main.css">
  <link rel="stylesheet" href="index.css">
  <!-- styles end -->
  <meta http-equiv="Refresh" content="100; url=list.lp">
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
            <h3 class="title is-3">Remove Rock:</h3>
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
          
          local lib_start, lib_end = string.find(cgilua.POST.rock_tree , "lib")
          local rock_tree = string.sub(cgilua.POST.rock_tree, 1, lib_start-1)

          local check, err = nil, nil
          if cgilua.POST.force_fast == "no" then
            check, err = lr.remove(cgilua.POST.rock_name, cgilua.POST.version, rock_tree)
          elseif cgilua.POST.force_fast == "yes" then
            check, err = lr.remove(cgilua.POST.rock_name, cgilua.POST.version, rock_tree, "force-fast")
          end
          
          if type(err) == "table" and err[1] then
          ?>

          <!-- box header -->
          <div class="box-header column is-12">
            <h4 class="title is-4">
              <?lua print(cgilua.POST.rock_name.." - "..cgilua.POST.version) ?> is a depenency of:
            </h4>
          </div>
          <!-- box header end -->

          <div class="column is-12">

            <ul>
              <?lua
              for _, rock in ipairs(err) do
              ?>
                <li>
                  <?lua print("  - "..rock.name.." "..rock.version) ?>
                </li>

              <?lua
              end
              ?>
            </ul>
          </div>

          <div class="column is-2">
            <form action="remove.lp" method="post">
              <input style="display:none;" name="version" id="version" value="<?lua= cgilua.POST.version ?>">
              <input style="display:none;" name="rock_tree" id="rock_tree" value="<?lua= cgilua.POST.rock_tree ?>">
              <input style="display:none;" name="rock_name" id="rock_name" value="<?lua= cgilua.POST.rock_name ?>">
              <button class="button" type="submit" name="force_fast" value="yes">Force remove</button>
            </form>
          </div>

          <?lua
          else
            if check == true then
          ?>
            <div class="column is-12">
              <p>
                <?lua print(cgilua.POST.rock_name..": "..cgilua.POST.version) ?> is removed!
              </p>
            </div>
            <?lua
            else
            ?>
              <div class="column is-12">
                <p>
                  <?lua print("Error :  "..err) ?>
                </p>
              </div>
          <?lua 
            end
          end
          ?>
          <div class="column is-2">
            <form action="list.lp" method="get">
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