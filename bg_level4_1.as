package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class bg_level4_1 extends Entity 
	{
		[Embed(source="assets gray/BG level 4/platform_1.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		private var glist:Graphiclist = new Graphiclist();
		
		public function bg_level4_1(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			glist.add(img);
			
			graphic = glist;
		}
		
		override public function added():void 
		{
			FP.world.add(new level4_wall(this.x + 163, this.y + 416, 486));
			FP.world.add(new level4_wall(this.x + 2085, this.y + 416, 972));
			super.added();
		}
		
		override public function update():void 
		{
			x -= globalvar.level4speed;
			
			if (x <= -3072)
			{
				FP.world.remove(this);
			}
			
			super.update();
		}
		
	}

}