package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	
	/**
	 * ...
	 * @author Satya Dwi Anggiawan
	 */
	public class level3_player extends Entity 
	{
		[Embed(source="assets gray/LEVEL3/citrik 45_125_200.png")]
		private const _playercitrik:Class;
		private var playercitrik:Spritemap = new Spritemap(_playercitrik, 125, 200);
		
		[Embed(source="assets gray/LEVEL3/mulut leve3 1frame_37_20.png")]
		private const _mulut:Class;
		private var spr_mulut:Spritemap = new Spritemap(_mulut, 37, 20);
		
		private var glist:Graphiclist = new Graphiclist();
		
		private var countdownpause:Number = 0;
		
		public function level3_player() 
		{
			glist.add(playercitrik);
			glist.add(spr_mulut);
			
			playercitrik.add("diam", [4], 12, true);
			playercitrik.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], 12, true);
			playercitrik.play("diam");
			
			spr_mulut.add("diam", [6], 5, true);
			spr_mulut.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8], 5, true);
			spr_mulut.play("diam");
			
			playercitrik.x = 150;
			playercitrik.y = 350;
			
			spr_mulut.x = 200;
			spr_mulut.y = 426;
			
			graphic = glist;
		}
		override public function added():void 
		{
			globalvar.snd_lev3_backsound.loop();
			
			super.added();
		}
		
		override public function update():void 
		{
			countdownpause++;
			if (countdownpause >= 90)
			{
				playercitrik.play("loop");
			}
			
			if (globalvar.snd_lev3_klikpada.playing || globalvar.snd_lev3_gagal.playing|| globalvar.snd_lev3_benar.playing || globalvar.snd_lev3_salah.playing)
			{
				spr_mulut.play("loop");
			}
			if (!globalvar.snd_lev3_klikpada.playing && !globalvar.snd_lev3_gagal.playing && !globalvar.snd_lev3_benar.playing && !globalvar.snd_lev3_salah.playing)
			{
				spr_mulut.play("diam");
			}
			if (globalvar.level3stopmove == false)
			{
				
			}
			else
			{
				if (x >= 700)
				{
					x = 700;
					if (globalvar.level3countcheckitem == globalvar.level3totalcheckitem)
					{
						globalvar.gamelevel = "level4tutorial";
						globalvar.gameload = true;
					}
					else
					{
						globalvar.gameload = true;
						globalvar.level3glow = true;
						
					}
				}
				else
				{
					x += globalvar.level3speed;
				}
			}
			super.update();
		}
		
	}

}