package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	/**
	 * ...
	 * @author laras
	 */
	public class button_lanjut_lev4tutorial extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/tombol lanjutkan_185_75.png")]
		private const kitalanjutbutton:Class;
		private var kitalanjut_button:Spritemap = new Spritemap (kitalanjutbutton, 185, 75);
		
		private var rand:Number = 0;
		
		public function button_lanjut_lev4tutorial(_x:Number,_y:Number) 
		{
			layer= -2;
			glist.add(kitalanjut_button);
			kitalanjut_button.add("up", [0], 5, true);
			kitalanjut_button.add("down", [1], 5, true);
			kitalanjut_button.play("up");
			
			x = _x;
			y = _y;
			
			graphic = glist;
			setHitbox(185, 75);
			
		}
		
		override public function update():void
		{
			if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					//kitalanjut_button.play("down");
					
				}
				else
				{
					//kitalanjut_button.play("up");
				}
				
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				kitalanjut_button.play("down");
				globalvar.snd_button.play();
				globalvar.gamelevel = "level4main";
				globalvar.gameload = true;
				globalvar.snd_lev4_penj.stop();
			}
			super.update();
		}
		
	}

}