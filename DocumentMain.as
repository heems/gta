package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;	
	
	public class DocumentMain extends MovieClip {
		private var player:Player;
		private var keys:Array = [];

		
		public function DocumentMain() {
			player = new Player();
			addChild(thePlayer);
			thePlayer.x = stage.stageWidth * 0.5;
			thePlayer.y = stage.stageHeight * 0.5;

			this.addEventListener(Event.ENTER_FRAME, update);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUpHandler);			

		}
		
		private function keyDownHandler(e:KeyboardEvent):void
		{
			keys[e.keyCode] = true;
		}		
		
		private function keyUpHandler(e:KeyboardEvent):void
		{
			keys[e.keyCode] = false;
		}		
		
		public function update(e:Event):void
		{
			if (keys[Keyboard.RIGHT])
			{
				player.x += 5;
			}
			if (keys[Keyboard.LEFT])
			{
				player.x -= 5;
			}
			if (keys[Keyboard.UP]) 
			{
				player.y -= 5;
			}
			if (keys[Keyboard.DOWN])
			{
				player.y += 5;
			}
		}

	}
	
}
