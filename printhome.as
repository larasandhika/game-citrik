package 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.printing.PrintJob;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author racoongames
	 */
	public class printhome extends MovieClip 
	{
		[Embed(source="assets gray/PIAGAM/Button Cetak.png")]
		private const _img:Class;
		
		[Embed(source="assets gray/LEVEL1/button home.png")]
		private const _home:Class;
		
		private var bmp:Bitmap = new _img();
		private var bmphome:Bitmap = new _home();
		
		private var img:MovieClip = new MovieClip;
		private var home:MovieClip = new MovieClip;
		
		//private var content:MovieClip = new MovieClip;
		private var contentX:Number = 0;
		private var contentY:Number = 0;
		
		public function printhome()
		{
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		private function added(event:Event):void
		{
			
			x = 10;
			y = 600;
			img.name = "img1";
			img.addChild(bmp);
			home.addChild(bmphome);
			
			home.x = 20;
			
			addChild(home);
			
			//content = FP.engine;
			contentX = FP.engine.scaleX;
			contentY = FP.engine.scaleY;
			
			removeEventListener(Event.ADDED_TO_STAGE, added);
			addEventListener(MouseEvent.CLICK, backhome);
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(event:Event):void
		{
			if (globalvar.gamelevel != "level4print")
			{
				removeChild(home);
				removeEventListener(MouseEvent.CLICK, backhome);
				removeEventListener(Event.ENTER_FRAME, loop);
			}
		}
		
		function backhome(evt:MouseEvent)
		{
			globalvar.gamelevel = "mainmenu";
			globalvar.gameload = true;
			
			removeEventListener(MouseEvent.CLICK, backhome);
		}
	}
	
}