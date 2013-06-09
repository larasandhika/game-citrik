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
	public class printing extends MovieClip 
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
		
		public function printing()
		{
			addEventListener(Event.ADDED_TO_STAGE, added);
		}
		private function added(event:Event):void
		{
			
			x = 800;
			y = 600;
			img.name = "img1";
			img.addChild(bmp);
			home.addChild(bmphome);
			
			home.x = 20;
			
			addChild(img);
			
			//content = FP.engine;
			contentX = FP.engine.scaleX;
			contentY = FP.engine.scaleY;
			
			removeEventListener(Event.ADDED_TO_STAGE, added);
			addEventListener(MouseEvent.CLICK, printContent);
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(event:Event):void
		{
			if (globalvar.gamelevel != "level4print")
			{
				removeChild(img);
				removeEventListener(MouseEvent.CLICK, printContent);
				removeEventListener(Event.ENTER_FRAME, loop);
			}
		}
		
		function printContent(evt:MouseEvent)
		{
			var printJob:PrintJob = new PrintJob();
			
			if (printJob.start())
			{
				if (FP.engine.width > printJob.pageWidth)
				{
					FP.engine.width = printJob.pageWidth;
					FP.engine.scaleY = FP.engine.scaleX;
				}
				
				printJob.addPage(FP.engine);
				printJob.send();
				
				
				FP.engine.scaleX = contentX;
				FP.engine.scaleY = contentY;
				
				//removeChild(content);
				
				//FP.world.add(new button_home(402, 600));
				
				//globalvar.gamelevel = "level4score";
				//globalvar.gameload = true;
				printFinished();
				
				
				removeEventListener(MouseEvent.CLICK, printContent);
			}
		}
		
		private function printFinished():void 
		{
			//img.removeChild(bmp);
			removeChild(img);
		}
	}
	
}