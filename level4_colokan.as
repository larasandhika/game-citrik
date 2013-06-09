package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level4_colokan extends Entity 
	{
		[Embed(source="assets gray/BG level 4/colokan 60x60.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		public function level4_colokan(_x:Number, _y:Number) 
		{
			layer = -2;
			type = "point";
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