<!DOCTYPE html>
<head>
  <title>LuaRocks GUI</title>
  <!-- styles -->
  <link rel="stylesheet" href="bulma.min.css">
  <link rel="stylesheet" href="main.css">
  <link rel="stylesheet" href="index.css">
  <!-- styles end -->
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
          <a class="navbar-item is-active">Advanced</a>
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
            <h3 class="title is-3">Advanced functions:</h3>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- page header end -->

  <!-- main page content -->
  <div class="main-content">
    <div class="container">
      <div class="columns is-multiline">
        <div class="column is-12">

          <!-- list item -->
          <div class="box" id="vue-app">
            <!-- box header -->
            <div class="box-header">
              <h3 class="title is-3">For rockspec:</h3>
            </div>
            <!-- box header end -->
            <!-- box content -->
            <div class="box box-content">
              <div class="box-content-text">
                <h5 class="title is-5">Existing rockspec</h5>
              </div>

              <form action="lint_and_new_version.lp" method="get">

                <div class="has-text form column is-12">

                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">rockspec path</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <p class="control is-expanded">
                          <input class="input" type="text" name="rockspec_name" placeholder="eg. example-0.0.0-1.rockspec || currently works only in the same directory">
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="field is-horizontal">
                    <div class="field-label">
                      <!-- Left empty for spacing -->
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <div class="control">
                          <button class="button" id="lint" type="submit" name="action" value="lint" >lint</button>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="field is-horizontal">
                    <div class="field-label">
                      <!-- Left empty for spacing -->
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <div class="control">
                          <button class="button" id="new_version" type="submit" name="action" value="new_version" >new_version</button>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </form>

            </div>
            
            <div class="box box-content">
              <div class="box-content-text">
                <h5 class="title is-5">New rockspec</h5>
              </div>
              
              <!-- rockspec form -->
              <form action="new_rockspec.lp" method="post">
                <div class="has-text form">
                  
                  
                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">Name (rock)</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <p class="control is-expanded">
                          <input class="input" type="text" placeholder="eg. rock_name" name="name">
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">Location</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <div class="control">
                          <input class="input is-danger" type="text" placeholder="eg. home/user/example.rockspec" name="location">
                        </div>
                        <!--
                        <p class="help is-danger">
                          This field is required
                        </p>
                        -->
                      </div>
                    </div>
                  </div>
                  
                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">output file</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <p class="control is-expanded">
                          <input class="input" type="text" placeholder="eg. example.rockspec" name="output">
                        </p>
                      </div>
                    </div>
                  </div>
                  
                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">License</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <p class="control is-expanded">
                          <input class="input" type="text" placeholder="eg. MIT" name="license">
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">Summary</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <div class="control">
                          <textarea class="textarea" placeholder="" name="summary"></textarea>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">Detailed description</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <div class="control">
                          <textarea class="textarea" placeholder="" name="description"></textarea>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">Homepage</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <p class="control is-expanded">
                          <input class="input" type="text" placeholder="eg. example.com" name="homepage">
                        </p>
                      </div>
                    </div>
                  </div>
                  
                  <div class="field is-horizontal">
                    <div class="field-label">
                      <label class="label">Lua versions supported</label>
                    </div>
                    <div class="field-body">
                      <div class="field is-narrow">
                        <div class="control">
                          <label class="checkbox">
                            <input type="checkbox" name="luaver_5_1">
                            5.1
                          </label>
                          <label class="checkbox">
                            <input type="checkbox" name="luaver_5_2">
                            5.2
                          </label>
                          <label class="checkbox">
                            <input type="checkbox" name="luaver_5_3">
                            5.3
                          </label>
                          <label class="checkbox">
                            <input type="checkbox" name="luaver_5_4">
                            5.4
                          </label>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="field is-horizontal">
                    <div class="field-label">
                      <label class="label">Rockspec format</label>
                    </div>
                    <div class="field-body">
                      <div class="field is-narrow">
                        <div class="control">
                          <div class="select">
                            <select name="rockspec_format">
                              <option>Select</option>
                              <option>1.0</option>
                              <option>2.0</option>
                              <option>3.0</option>
                            </select>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <div class="field is-horizontal">
                    <div class="field-label is-normal">
                      <label class="label">C libraries</label>
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <p class="control is-expanded">
                          <input class="input" type="text" placeholder="A comma-separated list of libraries that C files need to link to." name="c_libraries">
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="field is-horizontal">
                    <div class="field-label">
                      <!-- Left empty for spacing -->
                    </div>
                    <div class="field-body">
                      <div class="field">
                        <div class="control">
                          <button class="button">
                            Create rockspec
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                </div>
              </form>
              <!-- rockspec form end -->
              
              
            </div>
            <!-- box content end -->
            
          </div>
          <!-- list item end -->

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
