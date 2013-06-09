package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level4_genanganair extends Entity 
	{
		[Embed(source="assets gray/BG level 4/air mancur_248_273.png")]
		private const _img:Class;
		private var img:Spritemap = new Spritemap(_img, 248, 273);
		
		private var countair:Number = 0;
		private var randair:Number = 0;
		
		public function level4_genanganair() 
		{
			layer = -2;
			type = "dead";
			img.add("stay", [0], 5, true);
			img.add("splash", [0, 1, 2, 3, 4, 5, 6], 15, false);
			img.play("stay");
			//img.scale = .5;
			
			img.y = -223;
			img.x = -40;
			
			graphic = img;
			setHitbox(175, 100);
		}
		
		override public function added():void 
		{
			x = 1200;
			y = 648;
			randair = 20 + (Math.floor(Math.random() * 30));
			super.added();
		}
		
		override public function update():void 
		{
			x -= globalvar.level4speed;
			
			countair++;
			if (countair == randair)
			{
				setHitbox(105, 240, -35, 130);
				img.play("splash");
			}
			
			if (img.currentAnim == "splash")
			{
				if (img.complete)
				{
					img.play("stay");
					setHitbox(175, 100);
					randair = 20 + (Math.floor(Math.random() * 30));
					countair = 0;
				}
			}
			
			if (x <= -350)
			{
				FP.world.remove(this);
			}
			
			super.update();
		}
		
	}

}