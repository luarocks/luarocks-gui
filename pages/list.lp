
<head>
    <title>Luarocks GUI</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

    <style>
        .list-item {
        margin: 1em;
        }
    </style>

</head>

<body>

  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="index.lp">LuaRocks</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="list.lp">List</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Search</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container" style="margin-top:30px">
    
    <div class="row">
      <div class="list-item col-sm-10 offset-1">
        <h2>Installed Rocks:</h2>
      </div>
    </div>

    <?lua
    local lr = require "luarocks"
    list_of_rocks = lr.list()
    for i, data_table in ipairs(list_of_rocks) do
    ?>
    
    <div class="row">
      <div class="list-item col-sm-10 offset-1">
        <h4> <?lua print(data_table[1]) ?> </h4>
        <h6> <?lua print(data_table[2]) ?> </h6>
        <p> <?lua print(data_table[4]) ?> </p>
        <button id="show_details" class="btn">show details</button>
        <button id="documentation" class="btn">documentation</button>
        <button id="remove" class="btn">remove</button>
      </div>
    </div>

    <?lua
    end
    ?>
    
  </div>

  <div class="jumbotron text-center">
    <p>Footer</p>
  </div>

</body>