package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level3item7 extends Entity 
	{
		[Embed(source="assets gray/LEVEL3/kipas_Spritesheet2x2.png")]
		private const _img:Class;
		private var img:Spritemap = new Spritemap(_img, 130, 290);
		
		private var glist:Graphiclist = new Graphiclist();
		private var countdownpause:Number = 0;
		
		public function level3item7(_x:Number, _y:Number) 
		{
			type = "item";
			
			glist.add(img);
			img.add("hidup",[0], 5, true);
			img.add("mati", [1], 5, true);
			img.add("glow", [2, 3], 5, true);
			
			x = _x;
			y = _y;
			
			graphic = glist;
			setHitbox(130, 290);
		}
		
		override public function update():void 
		{
			countdownpause++
			if (countdownpause >= 90)
			{
				if (globalvar.level3stopmove == false)
				{
					x -= globalvar.level3speed;
				}
				
				if (globalvar.level3checkitem7 == false)
				{
					if (globalvar.level3glow == true)
					{
						img.play("glow");
					}
					else
					{
						img.play("hidup");
					}
				}
				else
				{
					img.play("mati");
					
				}
				
				
			
				if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY) && globalvar.level3checkitem7 == false)
					{
						globalvar.snd_lev3_benar.play();
						globalvar.level3checkitem7 = true;
						globalvar.level3countcheckitem += 1;
					}
			}
			super.update();
		}
		
	}

}