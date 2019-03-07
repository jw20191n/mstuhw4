<talk-editor>
  <p>Teaching Board</p>

  <div>
		<span>Type in what you want to teach the pet:</span>
    <input type="text" ref="info" value="">
	</div>


	<button type="button" onclick={ sendMessage }>Teach</button>
	<button type="button" onclick={ parent.closeEditor }>Cancel</button>

	<script>
		console.log(this);

		this.sendMessage = function(event) {
			var newTalk = {
        body:this.refs.info.value
			};
			this.parent.talkList.push(newTalk);
      this.parent.update();
			this.parent.closeEditor();
		};
	</script>

	<style>
		:scope {
			display: block;
			background-color: pink;
			color: black;
			padding: 10px;
			position: fixed;
			right: 20%;
      bottom: 30%;
			width: 300px;
			height: 200px;
      text-align: left;
		}

    button{
      background-color: white;
      color:grey;
      margin-top:10px;
    }

    input{
      margin-top: 10px;
    }

	</style>
</talk-editor>
