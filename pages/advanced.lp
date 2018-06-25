
<head>
  <title>LuaRocks GUI</title>
  <!-- styles and fonts -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.css">
  <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
  <link rel="stylesheet" href="list.css">
  <!-- styles and fonts end -->
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
          <a class="navbar-item">About</a>
          <a class="navbar-item">Help</a>
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
              <div class="file has-name">
                <label class="file-label">
                  <input class="file-input" type="file" name="resume">
                  <span class="file-cta">
                    <span class="file-icon">
                      <i class="fa fa-upload"></i>
                    </span>
                    <span class="file-label">
                      Choose a rockspec
                    </span>
                  </span>
                  <span class="file-name">
                    example.rockpec
                  </span>
                </label>
              </div>
              <div class="has-text">
                <a class="button" id="remove">lint</a>
                <a class="button" id="new_version">new version</a>
              </div>
            </div>
            
            <div class="box box-content">
              <div class="box-content-text">
                <h5 class="title is-5">New rockspec</h5>
              </div>
              
              <!-- rockspec form -->
              <div class="has-text form">
                
                
                <div class="field is-horizontal">
                  <div class="field-label is-normal">
                    <label class="label">Name (rock)</label>
                  </div>
                  <div class="field-body">
                    <div class="field">
                      <p class="control is-expanded">
                        <input class="input" type="text" placeholder="eg. rock_name">
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
                        <input class="input is-danger" type="text" placeholder="eg. home/user/example.rockspec">
                      </div>
                      <p class="help is-danger">
                        This field is required
                      </p>
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
                        <input class="input" type="text" placeholder="eg. example.rockspec">
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
                        <input class="input" type="text" placeholder="eg. MIT">
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
                        <textarea class="textarea" placeholder=""></textarea>
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
                        <textarea class="textarea" placeholder=""></textarea>
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
                        <input class="input" type="text" placeholder="eg. example.com">
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
                          <input type="checkbox" name="member">
                          5.1
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" name="member">
                          5.2
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" name="member">
                          5.3
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" name="member">
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
                          <select>
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
                        <input class="input" type="text" placeholder="A comma-separated list of libraries that C files need to link to.">
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
              <!-- rockspec form end -->
              
              
            </div>
            <!-- box content end -->
            
          </div>
          <!-- list item end -->

          <!-- list item -->
          <div class="box" id="vue-app">
            <!-- box header -->
            <div class="box-header">
              <h4 class="title is-4">Name of rock</h4>
              <small>some details</small>
            </div>
            <!-- box header end -->
            <!-- box content -->
            <div class="box-content">
              <div class="box-content-text">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla tortor, congue a venenatis at, ornare eu dui. Mauris vehicula malesuada nisl, at tristique nibh pretium vitae. Donec mattis, neque et auctor condimentum, libero mauris.</p>
              </div>
              <div class="has-text">
                <a class="button" id="details" v-on:click="is_active = !is_active">Details</a>
                <a class="button" id="docs">Documentation</a>
                <a class="button" id="remove">Remove</a>
              </div>
              <div class="box-content-text" v-show="is_active">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla tortor, congue a venenatis at, ornare eu dui. Mauris vehicula malesuada nisl, at tristique nibh pretium vitae. Donec mattis, neque et auctor condimentum, libero mauris</p>
              </div>
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
    <div class="container">
      <div class="has-text-centered">
        <p>do we even need a footer?</p>
        <a href="https://luarocks.org">LuaRocks website</a>
      </div>
    </div>
  </div>
  <!-- footer end -->
</body>