<head>
  <title>LuaRocks GUI</title>
  <!-- styles and fonts -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.css">
  <link rel="stylesheet" href="list.css">
  <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/vue@2.5.16/dist/vue.js"></script>

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
          <a class="navbar-item is-active">List rocks</a>
          <a class="navbar-item" href="search.lp">Search rocks</a>
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
            <h3 class="title is-3">Installed Rocks:</h3>
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


           <?lua

          list_of_rocks = nil
          lr = nil
          collectgarbage()


          local lr = require "luarocks"

          --local pl = require "pl.pretty"
          --print(pl.write(lr.list()))


          --print(io.open("list.lp", "a"))
          file = io.open("list.lp", "a")
          file:write("e")

          local list_of_rocks = lr.list()
          count_of_rocks = 0
          for i, data_table in ipairs(list_of_rocks) do
          --list_of_rocks = lr.list()
          if count_of_rocks >5 then break end
          local show = lr.show(data_table[1])
          homepage, doc_dir, files = lr.doc(data_table[1])
          count_of_rocks = count_of_rocks + 1
          ?>

            <!-- list item -->
            <div class="box" id="box<?lua= i ?>">
              <!-- box header -->
              <div class="box-header">
                <h4 class="title is-4"> <?lua print(data_table[1]) ?> </h4>
                <small> <?lua print(data_table[2]) ?> </small>
                <br>
                <small> <?lua if show["summary"] then print(show["summary"]) end ?> </small>
              </div>
              <!-- box header end -->
              <!-- box content -->
              <div class="box-content">
                <div class="has-text columns">
                  <div class="column is-1">
                    <a class="button" id="details" v-on:click="is_active = !is_active">Details</a>
                    <!--<a class="button" id="docs">Documentation</a>-->
                    <!--<a class="button" id="remove" v-on:click="remove_rock ('<lua data_table[1] ?>')" href="list.lp">Remove</a>-->
                  </div>
                  <div class="column is-8">
                    <form action="open_doc_dir.lp" method="post">
                      <button class="button" id="docs" type="submit" name="doc_dir" value="<?lua= doc_dir ?>" >Documentation</button>
                    </form>
                  </div>
                  <div class="column is-2">
                    <form action="remove.lp" method="post">
                      <button class="button" id="remove" type="submit" name="rock_name" value="<?lua= data_table[1] ?>" >Remove</button>
                    </form>
                  </div>

                </div>
                <div class="box-content-text" v-show="is_active">
                  <p> <?lua if show["detailed"] then print(show["detailed"]) end ?> </p>
                  <a href="<?lua print(homepage) ?>" target="_blank"> <?lua print(homepage) ?> </a>
                </div>
              </div>
              <!-- box content end -->
            </div>
            <!-- list item end -->


          <?lua
          end
          ?>


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

<script>
for (x = 1; x <= <?lua= count_of_rocks ?> ; x++) {
  new Vue({
  el: '#box'+x,
  data: {
      is_active: false
  },
  methods: {
    remove_rock : function (rock_name) {
      // call lua
      <?lua print("wouw") ?>
      <?lua print(" ?> rock_name; <?lua ") ?>
      console.log(rock_name);
    }
  }
});
}
</script>

<?lua
list_of_rocks = nil
lr = nil
collectgarbage()
?>
hhheeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee