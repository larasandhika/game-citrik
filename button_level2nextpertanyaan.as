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
	public class button_level2nextpertanyaan extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/tombol lanjutkan_185_75.png")]
		private const startbutton:Class;
		private var start_button:Spritemap = new Spritemap (startbutton, 185, 75);
		
		private var rand:Number = 0;
		
		public function button_level2nextpertanyaan(_x:Number, _y:Number) 
		{
			layer = -2;
			type = "nextpertanyaan";
			
			x = _x,
			y = _y;
			
			glist.add(start_button);
			start_button.add("up", [0], 5, true);
			start_button.add("down", [1], 5, true);
			start_button.play("up");
			
			graphic = glist;
			setHitbox(185, 75);
		}
		
		override public function update():void 
		{
			if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					//start_button.play("down");
					
				}
				else
				{
					//start_button.play("up");
				}
				
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				start_button.play("down");
				globalvar.snd_button.play();
				//if (globalvar.totallevel2 >= 5)
				//{
					if (globalvar.level2benar >= 3)
					{
						globalvar.gamelevel = "level2berhasil";
						globalvar.gameload = true;
					}
					else if (globalvar.level2salah >= 3)
					{
						globalvar.gamelevel = "level2gagal";
						globalvar.gameload = true;
					}
				//}
				else
				{
					rand = Math.floor(Math.random() * globalvar.editlist_pertanyaan_level2.length);
					globalvar.gamelevel = globalvar.editlist_pertanyaan_level2[rand];
					globalvar.gameload = true;
					globalvar.editlist_pertanyaan_level2.splice(rand, 1);
					globalvar.totallevel2++;
					globalvar.gamepause = false;
				}
				
				if (globalvar.snd_lev2_airdekatlistrik.playing)
				{
					globalvar.snd_lev2_airdekatlistrik.stop();
				}
				if (globalvar.snd_lev2_bayi.playing)
				{
					globalvar.snd_lev2_bayi.stop();
				}
				if (globalvar.snd_lev2_berenang.playing)
				{
					globalvar.snd_lev2_berenang.stop();
				}
				if (globalvar.snd_lev2_colokan.playing)
				{
					globalvar.snd_lev2_colokan.stop();
				}
				if (globalvar.snd_lev2_layang.playing)
				{
					globalvar.snd_lev2_layang.stop();
				}
				if (globalvar.snd_lev2_memanjatpohon.playing)
				{
					globalvar.snd_lev2_memanjatpohon.stop();
				}
				if (globalvar.snd_lev2_oloran.playing)
				{
					globalvar.snd_lev2_oloran.stop();
				}
				if (globalvar.snd_lev2_sambunganbanyak.playing)
				{
					globalvar.snd_lev2_sambunganbanyak.stop();
				}
				if (globalvar.snd_lev2_airdekatlistrik_2.playing)
				{
					globalvar.snd_lev2_airdekatlistrik_2.stop();
				}
			}
			super.update();
		}
		
	}

}