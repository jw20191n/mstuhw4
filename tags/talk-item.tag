<talk-item>
	<span>BUN said:</span>
	<span>{ body }</span>
	<button class="cancel" type="button" onclick={ parent.remove }>
		<img src="img/cancel.png" width="20px" height="20px">
		</button>

  <script>
		<!-- console.log(this.parent); -->
	</script>

	<style>
	:scope {
		display: block;
		/* border: 1px solid pink; */
		text-align: left;
		/* margin-left: 40%; */
	}

	button.cancel{
		display: inline-block;
		margin:0;
		padding:0;
		border-color: white;
		color:white;
	}
	</style>
</talk-item>
