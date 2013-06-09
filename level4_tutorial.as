package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level4_tutorial extends Entity 
	{
		[Embed(source="assets gray/lev 4/TUTORIAL LEVEL4.png")]
		private const _img:Class;
		private var img_tutorial:Image = new Image(_img);
		
		public function level4_tutorial() 
		{
			globalvar.snd_lev4_penj.play();
			
			graphic = img_tutorial;
			
		}
		override public function added():void 
		{
			if (globalvar.snd_lev3_backsound.playing)
			{
				globalvar.snd_lev3_backsound.stop();
				
			}
			super.added();
		}
		
		
	}

}