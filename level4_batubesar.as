package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level4_batubesar extends Entity 
	{
		[Embed(source="assets gray/BG level 4/batu 30x30.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		public function level4_batubesar(_x:Number, _y:Number) 
		{
			layer = -2;
			type = "minus";
			x = _x;
			y = _y;
			
			graphic = img;
			setHitbox(60, 60);
		}
		
		override public function update():void 
		{
			x -= globalvar.level4speed;
			
			if (x <= -80)
			{
				FP.world.remove(this);
			}
			
			super.update();
		}
		
	}

}