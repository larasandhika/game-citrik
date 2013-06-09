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
	public class button_level1nextpertanyaan extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/tombol lanjutkan_185_75.png")]
		private const startbutton:Class;
		private var start_button:Spritemap = new Spritemap (startbutton, 185, 75);
		
		
		private var rand:Number = 0;
		
		public function button_level1nextpertanyaan(_x:Number, _y:Number) 
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
				//if (globalvar.totallevel1 >= 5)
				//{
					if (globalvar.level1benar >= 3)
					{
						globalvar.gamelevel = "level1berhasil";
						globalvar.gameload = true;
					}
					else if (globalvar.level1salah >= 3)
					{
						globalvar.gamelevel = "level1gagal";
						globalvar.gameload = true;
					}
				//}
				else
				{
					rand = Math.floor(Math.random() * globalvar.editlist_pertanyaan_level1.length);
					globalvar.gamelevel = globalvar.editlist_pertanyaan_level1[rand];
					globalvar.gameload = true;
					globalvar.editlist_pertanyaan_level1.splice(rand, 1);
					globalvar.totallevel1++;
					globalvar.gamepause = false;
				}
				
				if (globalvar.snd_lev1_cjw.playing)
				{
					globalvar.snd_lev1_cjw.stop();
				}
				if (globalvar.snd_lev1_siklustertutup.playing)
				{
					globalvar.snd_lev1_siklustertutup.stop();
				}
				if (globalvar.snd_lev1_kabellistrik.playing)
				{
					globalvar.snd_lev1_kabellistrik.stop();
				}
				if (globalvar.snd_lev1_lampuhemat.playing)
				{
					globalvar.snd_lev1_lampuhemat.stop();
				}
				if (globalvar.snd_lev1_meteranlistrik.playing)
				{
					globalvar.snd_lev1_meteranlistrik.stop();
				}
				if (globalvar.snd_lev1_saklar.playing)
				{
					globalvar.snd_lev1_saklar.stop();
				}
				if (globalvar.snd_lev1_sekering.playing)
				{
					globalvar.snd_lev1_sekering.stop();
				}
				if (globalvar.snd_lev1_stabilizer)
				{
					globalvar.snd_lev1_stabilizer.stop();
				}
				if (globalvar.snd_lev1_steker)
				{
					globalvar.snd_lev1_steker.stop();
				}
				
			}
			super.update();
		}
		
	}

}