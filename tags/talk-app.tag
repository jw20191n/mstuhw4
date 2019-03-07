<talk-app>
	<p class="bold">Move your mouse on BUN and SEAL. They can chit chat with each other.</p>

  <button type="button" name="button" onclick={ toggleEditor }>Teach BUN to talk</button>

  <div class="talk-list">
		<talk-item each={ talkList }></talk-item>
	</div>

	<talk-editor if={ creatingTalk }></talk-editor>

	<script>
		// console.log(this);
		var that = this;

		this.creatingTalk = false;

		this.toggleEditor = function(event) {
		  this.creatingTalk = true;
		};

		this.closeEditor = function(event) {
		  that.creatingTalk = false;
			that.update();
		};


    this.talkList = [{
      body: "I am bored."
    },{
      body: "Teach me something if you have time."
    }];

    this.remove = function(event) {
			console.log('EVENT:', event);
			var talkObj = event.item;
			var index = that.talkList.indexOf(talkObj);
			that.talkList.splice(index, 1);
			that.update();
		};

	</script>

	<style>
		:scope {
			display:  block;
      margin:auto;
			/* height: 10%; */
			/* width: 100%; */
      /* padding:20px; */
      text-align: left;

      padding-left: 20%;
			padding-top: 50px;
		}

    button{
      text-align: left;
    }

		.talk-list {
			margin-top: 20px;
		}

		p.bold{
			color:blue;
		}
	</style>

</talk-app>
