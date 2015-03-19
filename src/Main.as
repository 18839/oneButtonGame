package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import tools.PerformanceTester;
	
	/**
	 * ...
	 * @author erwin
	 */
	public class Main extends Sprite 
	{
		private var animations:Vector.<Animation>;
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			
			
			animations = new Vector.<Animation>();
			for (var i:int = 0; i < 100; i++) 
			{
				var anim:Animation = new Animation(new SpriteSheet.TestSheet(),5,5, 25, 50, 50);
				addChild(anim);
				
				anim.x = Math.random() * stage.stageWidth;
				anim.y = Math.random() * stage.stageHeight;
				
				anim.animate();
				
				
			}
			
			var performancetest:PerformanceTester = new PerformanceTester();
			addChild(performancetest);
		}
		
	}
	
}