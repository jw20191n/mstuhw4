<pet2>
  <img onmouseover={speak} src="img/cute.gif">
  <p>SEAL</p>
  <p class="joke" if={visible}>{data}{myCurrentJoke}</p>

  <script>
    //make a copy of my pet object and call it that
    var that = this;

    //initial state/propoerty
    this.visible = false;
    this.myCurrentJoke = "temp joke";
    this.data = "";
    this.myJokes = [
      {
        value: " what?"
      }, {
        value: " why?"
      }, {
        value: " what do you mean?"
      }, {
        value: " stop!"
      }, {
        value: " ok."
      }
    ]
    this.hide = function () {
      this.visible = false;
    }

    this.clearData = function(){
      this.data = "";
    }

    this.selectJoke = function(){
      var max = that.myJokes.length;
      var tempIndex = Math.floor(Math.random() * Math.floor(max));
      that.myCurrentJoke = that.myJokes[tempIndex].value;
    }

    observable.on('pet1Speak', function(passedData){
      that.data = passedData;
      that.wait();
    });


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

    this.speak = function () {
      this.clearData();
      console.log(this.data);
      this.selectJoke();

      //console.log(that.myCurrentJoke);
      observable.trigger('pet2Speak', that.myCurrentJoke);
      this.visible = true;

      this.update();
      // console.log(this);
      setTimeout(function () {
        that.hide();
        that.update();
      }, 1000);
    }

  </script>

  <style>
    :scope {
      margin: auto;
      /* color: red; */
      /* background-color: yellow; */
    }

    img {
      width: 30%;
    }
    p.joke{
      margin-left: 55%;
      color:red;
    }

  </style>
</pet2>
