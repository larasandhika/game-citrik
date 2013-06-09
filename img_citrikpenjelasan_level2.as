package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	/**
	 * ...
	 * @author laras
	 */
	public class img_citrikpenjelasan_level2 extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/citrik penjelasan sprite/voice over citrik_edit penjelasan kosong_200_260.png")]
		private const citrikdiamsmall:Class;
		private var citrikdiam_small:Spritemap = new Spritemap (citrikdiamsmall, 200, 260);
		
		[Embed(source="assets gray/citrik penjelasan sprite/mata kedip1frame_penjelasan_75_33.png")]
		private const _spr_mata:Class;
		private var spr_mata:Spritemap = new Spritemap(_spr_mata, 75, 33);
		
		[Embed(source="assets gray/citrik penjelasan sprite/mulut penjelasan 1frame_55_30.png")]
		private const _spr_mulut:Class;
		private var spr_mulut:Spritemap = new Spritemap(_spr_mulut, 55, 30);
		
		[Embed(source="assets gray/LEVEL2/Penjelasan level2.png")]
		private const keteranganlevel1:Class;
		private var keterangan_level1:Image = new Image (keteranganlevel1);
		
		private var tutorial:Text = new Text("");
		
		private var count:Number = 0;
		
		private var randketip:Number = 0;
		private var countketip:Number = 0;
		
		public function img_citrikpenjelasan_level2() 
		{
			layer = -1;
			
			tutorial.text = "Pilih mana tindakan yang benar ";
			
			glist.add(keterangan_level1);
			glist.add(citrikdiam_small);
			glist.add(spr_mata);
			glist.add(spr_mulut);
			
			citrikdiam_small.add("diam", [0], 5, true);
			citrikdiam_small.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39], 10, true);
			citrikdiam_small.play("loop");
			
			spr_mata.add("diam", [0], 5, true);
			spr_mata.add("loop", [0, 2, 4, 2, 0], 15, false);
			spr_mata.play("diam");
			
			spr_mulut.add("diam", [6], 5, true);
			spr_mulut.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8], 5, true);
			spr_mulut.play("diam");
			
			keterangan_level1.visible = false;
			
			tutorial.wordWrap = true;
			tutorial.width = 400;
			tutorial.height = 2000;
			tutorial.align = "center";
			tutorial.x = 320;
			tutorial.y = 350;
			tutorial.size = 23;
			tutorial.font = "myfont";
			tutorial.color = 0x804000;
			
			citrikdiam_small.x = 10;
			citrikdiam_small.y = 475;
			
			spr_mata.x = 83;
			spr_mata.y = 550;
			
			spr_mulut.x = 92;
			spr_mulut.y = 580;
			
			keterangan_level1.x = 200;
			keterangan_level1.y = 300;
			
			
			graphic = glist;
		}
		override public function added():void 
		{
			randketip = 50 + Math.floor(Math.random() * 150);
			super.added();
		}
		
		override public function update():void 
		{
			countketip++;
			if(countketip == randketip)
			{
				spr_mata.play("loop", true, 0);
				
			}
			else if (countketip > randketip)
			{
				if (spr_mata.complete)
				{
					randketip = 50 + Math.floor(Math.random() * 150);
					countketip = 0;
					spr_mata.play("diam");
				}
			}
			
			if (globalvar.gamepause == true )
			{
				if (globalvar.snd_lev2_airdekatlistrik.playing || globalvar.snd_lev2_airdekatlistrik_2.playing || globalvar.snd_lev2_bayi.playing || globalvar.snd_lev2_berenang.playing || globalvar.snd_lev2_colokan.playing || globalvar.snd_lev2_layang.playing || globalvar.snd_lev2_memanjatpohon.playing || globalvar.snd_lev2_oloran.playing || globalvar.snd_lev2_sambunganbanyak.playing || globalvar.snd_penj_level2.playing || globalvar.snd_lev1_benar.playing || globalvar.snd_lev1_salah.playing)
				{
					spr_mulut.play("loop");
				}
				if (!globalvar.snd_lev2_airdekatlistrik.playing && !globalvar.snd_lev2_airdekatlistrik_2.playing && !globalvar.snd_lev2_bayi.playing && !globalvar.snd_lev2_berenang.playing && !globalvar.snd_lev2_colokan.playing && !globalvar.snd_lev2_layang.playing && !globalvar.snd_lev2_memanjatpohon.playing && !globalvar.snd_lev2_oloran.playing && !globalvar.snd_lev2_sambunganbanyak.playing && !globalvar.snd_penj_level2.playing && !globalvar.snd_lev1_benar.playing && !globalvar.snd_lev1_salah.playing)
				{
					spr_mulut.play("diam");
				}
				if (globalvar.gamelevel == "level2tutorial")
				{
					count++;
					if (count == 1)
					{
						globalvar.snd_penj_level2.play();
						keterangan_level1.visible = true;
						glist.add(tutorial);
					}
					if (count == 10)
					{
					
						FP.world.add(new button_level2tutorial(600,500));
					
					}
					
				}
			}
			super.update();
		}
		
	}

}