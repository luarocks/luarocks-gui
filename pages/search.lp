
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
          <a class="navbar-item is-active">Search rocks</a>
          <a class="navbar-item" href="advanced.lp">Advanced</a>
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
            <h3 class="title is-3">Search Rocks:</h3>
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

          <!-- search bar -->
          <div class="search-bar box column is-12">
            <div class="field has-addons">
              <div class="control is-expanded">
                <input class="input has-text-centered" type="search" placeholder="rock name to search">
              </div>
              <div class="control">
                <a class="button">Search</a>
              </div>
            </div>
          </div>
          <!-- search bar end -->

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
                <a class="button" id="view_on">View on luaRocks.org</a>
                <a class="button" id="install">Install</a>
              </div>
              <div class="box-content-text" v-show="is_active">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nulla tortor, congue a venenatis at, ornare eu dui. Mauris vehicula malesuada nisl, at tristique nibh pretium vitae. Donec mattis, neque et auctor condimentum, libero mauris</p>
              </div>
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
                <a class="button" id="view_on">View on luaRocks.org</a>
                <a class="button" id="install">Install</a>
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