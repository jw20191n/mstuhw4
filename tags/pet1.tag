<pet1>
  <img onmouseover={speak} src="img/neutral.gif">
  <p>BUN</p>
  <p class="joke" if={visible}>{data}{myCurrentJoke}</p>

  <script>
    //make gigi object  observable
    var that = this;

    //initial state/propoerty
    this.visible = false;
    this.data = "";
    this.myJokes = [
      {
        value: " Haha"
      }, {
        value: " No"
      }, {
        value: " Zzz"
      }, {
        value: " Oh"
      }, {
        value: " Hmmmmm"
      }
    ];


    this.myCurrentJoke = "temp joke";

    this.selectJoke = function(){
      var max = that.myJokes.length;
      var tempIndex = Math.floor(Math.random() * Math.floor(max));
      that.myCurrentJoke = that.myJokes[tempIndex].value;
    }

    this.clearData = function(){
      this.data = "";
    }

    this.hide = function () {
      this.visible = false;
    }

    this.speak = function () {
      this.clearData();
      this.selectJoke();
      // embed a trigger to inform mimi + pass data
      observable.trigger('pet1Speak', this.myCurrentJoke);
      this.visible = true;
      setTimeout(function () {
        that.hide();
        that.update();
      }, 1000);
    }

    this.wait = function(){
      setTimeout(function () {
        that.respond();
      }, 1000);
    }

    this.respond = function () {
      that.selectJoke();
      that.visible = true;
      that.update();
      // console.log(this);
      setTimeout(function () {
        that.hide();
        that.update();
      }, 1000);
    }

    observable.on('pet2Speak', function(passedData){
      that.data = passedData;
      that.wait();
    });

  </script>

  <style>
    :scope {
      margin: auto;
      /* color: red; */
      /* background-color: green; */
    }

    img {
      width: 200px;
    }

    p.joke{
      color:red;
    }
  </style>
</pet1>
