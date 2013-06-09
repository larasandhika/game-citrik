package  
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.ui.ContextMenu;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import flash.display.StageScaleMode;
	import flash.display.StageAlign;
	import flash.display.StageDisplayState;
	
	/**
	 * ...
	 * @author laras
	 */
	public class engine extends Engine 
	{
		
		public function engine() 
		{
			super (1024, 768, 60, false);
			FP.world = new world();
			
			//FP.console.enable(); 
			FP.engine.stage.displayState = StageDisplayState.FULL_SCREEN;
			FP.engine.stage.showDefaultContextMenu = false;
		}
		
		override public function setStageProperties():void 
		{
			/*super.setStageProperties();
			stage.scaleMode = StageScaleMode.SHOW_ALL;
			stage.align = StageAlign.TOP;
			FP.engine.scaleX = 1;
			FP.engine.scaleY = 1;
			FP.engine.x = (stage.stageWidth / 2) - (FP.width / 2);
			FP.engine.y = (stage.stageHeight / 2) - (FP.height / 2);*/
		}
		
	}

}