package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Satya Dwi Anggiawan
	 */
	public class level4_wall extends Entity 
	{
		
		private var imgwidth:Number = 0;
		
		public function level4_wall(_x:Number, _y:Number, _width:Number) 
		{
			x = _x;
			y = _y;
			
			imgwidth = _width;
			
			setHitbox(_width, 20);
			type = "wall";
		}
		
		override public function update():void 
		{
			x -= globalvar.level4speed;
			
			if (x <= -imgwidth)
			{
				FP.world.remove(this);
			}
			
			super.update();
		}
		
	}

}