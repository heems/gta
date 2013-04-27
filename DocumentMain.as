package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;	
	
	public class DocumentMain extends MovieClip {
		private var player:Player;
		
		public function DocumentMain() {
			player = new Player();
			addChild(thePlayer);
			thePlayer.x = stage.stageWidth * 0.5;
			thePlayer.y = stage.stageHeight * 0.5;

			this.addEventListener(Event.ENTER_FRAME, gameLoop);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHandler);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUpHandler);			

		}
		
		private function keyDownHandler(e:KeyboardEvent):void
		{
			switch (e.keyCode)
			{
				case 83 ://down
					//  move bg
					break;
				case 68 ://right
					//  move bg
					break;
				case 87 ://up
					//  move bg
					break;
				case 65 :// left
					//  move bg
					break;
				default:
					break;
			}
		}		
		
		private function keyUpHandler(e:KeyboardEvent):void
		{

			switch (e.keyCode)
			{
				case 83 ://down
					//  stop player anim
					break;
				case 68 ://right
					
					break;
				case 87 ://up
					
					break;
				case 65 :// left
					
					break;
				default:
					break;
			}
		}		
	}
	
}
