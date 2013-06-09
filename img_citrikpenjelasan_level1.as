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
	public class img_citrikpenjelasan_level1 extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/citrik penjelasan sprite/voice over citrik_edit penjelasan kosong_200_260.png")]
		private const citrikdiamsmall:Class;
		private var citrikdiam_small:Spritemap = new Spritemap (citrikdiamsmall, 200, 260);
		
		[Embed(source="assets gray/citrik penjelasan sprite/mata kedip1frame_penjelasan_75_33.png")]
		private const _spr_mata:Class;
		private var spr_matakedip:Spritemap = new Spritemap(_spr_mata, 75, 33);
		
		[Embed(source="assets gray/citrik penjelasan sprite/mulut penjelasan 1frame_55_30.png")]
		private const _spr_mulut:Class;
		private var spr_mulut:Spritemap = new Spritemap(_spr_mulut, 55, 30);
		
		[Embed(source="assets gray/LEVEL1/bg_tempat penjelasan level1.png")]
		private const keteranganlevel1:Class;
		private var keterangan_level1:Image = new Image (keteranganlevel1);
		
		private var penjelasan_1:Text = new Text("");
		
		[Embed(source="assets gray/penjelasanlevel1pertanyaan2_256_300.png")]
		private const penjelasan2:Class;
		private var penjelasan_2:Spritemap = new Spritemap(penjelasan2, 256, 300);
		
		[Embed(source="assets gray/LEVEL1/anime1a.jpg")]
		private const penjelasan3:Class;
		private var penjelasan_3:Spritemap = new Spritemap(penjelasan3, 400, 400);
		
		[Embed(source="assets gray/penjelasanlevel1pertanyaan7.png")]
		private const penjelasan7:Class;
		private var penjelasan_7:Image = new Image(penjelasan7);
		
		private var penjelasan_4:Text = new Text("");
		private var penjelasan_5:Text = new Text("");
		private var penjelasan_6:Text = new Text("");
		private var penjelasan_8:Text = new Text("");
		
		private var tutorial:Text = new Text("");
		
		private var count:Number = 0;
		
		private var randketip:Number = 0;
		private var countketip:Number = 0;
		
		//private var penjelasanbg:Text = new Text("");
		
		public function img_citrikpenjelasan_level1() 
		{
			layer = -1;
			
			penjelasan_2.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47], 20, true);
			penjelasan_3.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15], 20, true);
			
			penjelasan_1.text = "Benda tersebut adalah robot CJDW, Control Jog Double Way, merupakan hasil inovasi PLN Jawa Timur yang berfungsi untuk membersihkan jaringan kabel listrik dari sampah yang tersangkut. Robot tersebut dapat bekerja dalam keadaan listrik tidak dimatikan lho..";
			penjelasan_4.text = "Alat tersebut biasa disebut sekring, digunakan untuk memutus arus listrik di rumah kita, ketika terjadi konslet atau arus pendek, sehingga kebakaran dapat dihindari";
			penjelasan_5.text = "Alat tersebut adalah meteran listrik, digunakan untuk mengukur pemakaian listrik di rumah, sedikit banyak pemakaian listrik di rumah kita dapat diketahui dari meteran listrik";
			penjelasan_6.text = "Alat tersebut bernama stabilizer, digunakan untuk menjaga alat litrik kita dari kerusakan akibat naik turunnya tegangan listrik. Jadi jika ingin alat listrik kita lebih awet, kita bisa gunakan stabilizer";
			penjelasan_8.text = "Kabel listrik yang ada di tiang listrik memiliki aliran listrik yang menyalurkan listrik dari pembangkit listrik hingga ke rumah-rumah, karena itu hati-hati jika menemui kabel listrik yang terputus";
			
			tutorial.text = "Sebutkan kegunaan alat pada gambar yang ditampilkan";
			
			glist.add(keterangan_level1);
			glist.add(citrikdiam_small);
			glist.add(spr_matakedip);
			glist.add(spr_mulut);
			
			citrikdiam_small.add("diam", [0], 5, true);
			citrikdiam_small.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39], 10, true);
			citrikdiam_small.play("loop");
			
			spr_matakedip.add("diam", [0], 5, true);
			spr_matakedip.add("loop", [0, 2, 4, 2, 0], 15, false);
			spr_matakedip.play("diam");
			
			spr_mulut.add("diam", [6], 5, true);
			spr_mulut.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8], 5, true);
			spr_mulut.play("diam");
			
			keterangan_level1.visible = false;
			
			spr_matakedip.x = 83;
			spr_matakedip.y = 550;
			
			spr_mulut.x = 92;
			spr_mulut.y = 580;
			
			penjelasan_1.wordWrap = true;
			penjelasan_1.width = 400;
			penjelasan_1.height = 2000;
			penjelasan_1.align = "center";
			penjelasan_1.x = 320;
			penjelasan_1.y = 330;
			penjelasan_1.size = 20;
			penjelasan_1.font = "myfont";
			penjelasan_1.color = 0x804000;
			penjelasan_1.outlineColor = 0xF9B877;
			penjelasan_1.outlineStrength = 9;
			
			penjelasan_2.x = 320;
			penjelasan_2.y = 315;
			
			penjelasan_3.x = 320;
			penjelasan_3.y = 315;
			penjelasan_3.scale = .7;
			
			penjelasan_4.wordWrap = true;
			penjelasan_4.width = 400;
			penjelasan_4.height = 2000;
			penjelasan_4.align = "center";
			penjelasan_4.x = 320;
			penjelasan_4.y = 330;
			penjelasan_4.size = 20;
			penjelasan_4.font = "myfont";
			penjelasan_4.color = 0x804000;
			penjelasan_4.outlineColor = 0xF9B877;
			penjelasan_4.outlineStrength = 9;
			
			penjelasan_5.wordWrap = true;
			penjelasan_5.width = 400;
			penjelasan_5.height = 2000;
			penjelasan_5.align = "center";
			penjelasan_5.x = 320;
			penjelasan_5.y = 330;
			penjelasan_5.size = 20;
			penjelasan_5.font = "myfont";
			penjelasan_5.color = 0x804000;
			penjelasan_5.outlineColor = 0xF9B877;
			penjelasan_5.outlineStrength = 9;
			
			penjelasan_6.wordWrap = true;
			penjelasan_6.width = 400;
			penjelasan_6.height = 2000;
			penjelasan_6.align = "center";
			penjelasan_6.x = 320;
			penjelasan_6.y = 330;
			penjelasan_6.size = 20;
			penjelasan_6.font = "myfont";
			penjelasan_6.color = 0x804000;
			penjelasan_6.outlineColor = 0xF9B877;
			penjelasan_6.outlineStrength = 9;
			
			penjelasan_7.x = 310;
			penjelasan_7.y = 315;
			
			penjelasan_8.wordWrap = true;
			penjelasan_8.width = 400;
			penjelasan_8.height = 2000;
			penjelasan_8.align = "center";
			penjelasan_8.x = 320;
			penjelasan_8.y = 330;
			penjelasan_8.size = 20;
			penjelasan_8.font = "myfont";
			penjelasan_8.color = 0x804000;
			penjelasan_8.outlineStrength = 9;
			penjelasan_8.outlineColor = 0xF9B877;
			
			tutorial.wordWrap = true;
			tutorial.width = 400;
			tutorial.height = 2000;
			tutorial.align = "center";
			tutorial.x = 320;
			tutorial.y = 330;
			tutorial.size = 23;
			tutorial.font = "myfont";
			tutorial.color = 0x804000;
			
			
			citrikdiam_small.x = 10;
			citrikdiam_small.y = 475;
			
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
				spr_matakedip.play("loop", true, 0);
				
			}
			else if (countketip > randketip)
			{
				if (spr_matakedip.complete)
				{
					randketip = 50 + Math.floor(Math.random() * 150);
					countketip = 0;
					spr_matakedip.play("diam");
				}
			}
			
			if (globalvar.gamepause == false)
			{
				if (globalvar.snd_lev1_benar.playing || globalvar.snd_lev1_salah.playing)
				{
					spr_mulut.play("loop");
				}
				if (!globalvar.snd_lev1_benar.playing && !globalvar.snd_lev1_salah.playing)
				{
					spr_mulut.play("diam");
				}
			}
			
			if (globalvar.gamepause == true)
			{
				if (globalvar.gamelevel == "level1tutorial")
				{
					count++;
					if (count == 1)
					{
						globalvar.snd_penj_lev1.play();
						keterangan_level1.visible = true;
						glist.add(tutorial);
						spr_mulut.play("loop");
						
					}
					if (count == 10)
					{
						FP.world.add(new button_level1tutorial(585, 510));
					}
					if (!globalvar.snd_penj_lev1.playing)
					{
						spr_mulut.play("diam");
					}
				}
				else
				{
					count++;
					if (globalvar.snd_lev1_benar.playing || globalvar.snd_lev1_salah.playing)
					{
						spr_mulut.play("loop");
					}
					if (count == 40)
					{
						keterangan_level1.visible = true;
						
						if (globalvar.gamelevel == "level1pertanyaan1")
						{
							globalvar.snd_lev1_cjw.play();
							glist.add(penjelasan_1);
							spr_mulut.play("loop");
						}
						if (globalvar.gamelevel == "level1pertanyaan2")
						{
							globalvar.snd_lev1_saklar.play();
							glist.add(penjelasan_2);
							penjelasan_2.play("loop", true, 0);
							spr_mulut.play("loop");
						}
						
						if (globalvar.gamelevel == "level1pertanyaan3")
						{
							globalvar.snd_lev1_steker.play();
							glist.add(penjelasan_3);
							penjelasan_3.play("loop", true, 0);
							spr_mulut.play("loop");
						}
						
						if (globalvar.gamelevel == "level1pertanyaan4")
						{
							//penjelasanbg.text = "Alat tersebut biasa disebut sekring, digunakan untuk memutus arus listrik di rumah kita, ketika terjadi konslet atau arus pendek, sehingga kebakaran dapat dihindari";
							globalvar.snd_lev1_sekering.play();
							glist.add(penjelasan_4);
							spr_mulut.play("loop");
						}
						if (globalvar.gamelevel == "level1pertanyaan5")
						{
							//penjelasanbg.text = "Alat tersebut adalah meteran listrik, digunakan untuk mengukur pemakaian listrik di rumah, sedikit banyak pemakaian listrik di rumah kita dapat diketahui dari meteran listrik";
							globalvar.snd_lev1_meteranlistrik.play();
							glist.add(penjelasan_5);
							spr_mulut.play("loop");
						}
						if (globalvar.gamelevel == "level1pertanyaan6")
						{
							//penjelasanbg.text = "Alat tersebut bernama stabilizer, digunakan untuk menjaga alat litrik kita dari kerusakan akibat naik turunnya tegangan listrik. Jadi jika ingin alat listrik kita lebih awet, kita bisa gunakan stabilizer";
							globalvar.snd_lev1_stabilizer.play();
							glist.add(penjelasan_6);
							spr_mulut.play("loop");
						}
						if (globalvar.gamelevel == "level1pertanyaan7")
						{
							globalvar.snd_lev1_lampuhemat.play();
							glist.add(penjelasan_7);
							spr_mulut.play("loop");
						}
						if (globalvar.gamelevel == "level1pertanyaan8")
						{
							//penjelasanbg.text = "Kabel listrik yang ada di tiang listrik memiliki aliran listrik yang menyalurkan listrik dari pembangkit listrik hingga ke rumah-rumah, karena itu hati-hati jika menemui kabel listrik yang terputus";
							globalvar.snd_lev1_kabellistrik.play();
							glist.add(penjelasan_8);
							spr_mulut.play("loop");
						
						}
						
						//penjelasanbg.x = 320;
						//penjelasanbg.y = 330;
			
						FP.world.add(new button_level1nextpertanyaan(585, 510));
					}
					
					if (!globalvar.snd_lev1_cjw.playing && !globalvar.snd_lev1_kabellistrik.playing && !globalvar.snd_lev1_lampuhemat.playing && !globalvar.snd_lev1_meteranlistrik.playing && !globalvar.snd_lev1_saklar.playing && !globalvar.snd_lev1_sekering.playing && !globalvar.snd_lev1_stabilizer.playing && !globalvar.snd_lev1_steker.playing && !globalvar.snd_lev1_benar.playing && !globalvar.snd_lev1_salah.playing)
					{
						spr_mulut.play("diam");
					}
					
				}
			}
			super.update();
		}
		
	}

}