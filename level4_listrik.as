package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level4_listrik extends Entity 
	{
		[Embed(source="assets gray/BG level 4/petir80x80.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		public function level4_listrik(_x:Number, _y:Number) 
		{
			layer = -2;
			type = "point";
			x = _x;
			y = _y;
			
			graphic = img;
			setHitbox(40, 80, -20);
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