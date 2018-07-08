<!DOCTYPE html>
<head>
  <title>LuaRocks GUI</title>
  <!-- styles and fonts -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.css">
  <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
  <link rel="stylesheet" href="index.css">
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
          <a class="navbar-item" href="advanced.lp">Advanced</a>
        </div>
        <div class="navbar-end">
          <a class="navbar-item is-active" href="about.lp">About</a>
          <a class="navbar-item" href="help.lp">Help</a>
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
          <div class="columns is-vcentered">
            <div class="column is-3 is-offset-3 has-text-centered">
            <img src="https://upload-images.jianshu.io/upload_images/741742-960f8b55139d5cfc.png">
            </div>
            <div class="column is-4 has-text-left">
            <h1 class="title is-1">LuaRocks<br>GUI</h1>
            </div>
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
        <div class=" box columns column is-multiline is-12 is-vcentered">
          <!-- list of details -->
          
            <div class="box-content-text has-text-right column is-6">
              <p> <strong> Version: </strong> </p>
            </div>
            <div class="has-text column is-6">
              <p>dev</p>
            </div>
            <div class="box-content-text has-text-right column is-6">
              <p> <strong> Made by: </strong> </p>
            </div>
            <div class="has-text column is-6">
              <a href="https://github.com/luarocks/">luarocks</a>
            </div>
            <div class="box-content-text has-text-right column is-6">
              <p> <strong> License: </strong> </p>
            </div>
            <div class="has-text column is-6">
              <a href="https://github.com/luarocks/luarocks/wiki/License">MIT</a>
            </div>
          

          <!-- list of details end -->
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