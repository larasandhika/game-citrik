package
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author laras
	 */
	public class button_level2_1 extends Entity
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/bg Benar.png")]
		private const checkmark1:Class;
		private var checkmark_1:Image = new Image(checkmark1);
		
		//[Embed(source="assets/LEVEL2/Bg_tempat foto level2.png")]
		//private const gambar1:Class;
		//private var gambar_1:Image = new Image (gambar1);
		
		[Embed(source="assets gray/resize level 2/gambar/EDIT_layang.png")]
		private const pertanyaan1:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_2B.png")]
		private const pertanyaan2:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_3A.png")]
		private const pertanyaan3:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_4B-B.png")]
		private const pertanyaan4:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_5B.png")]
		private const pertanyaan5:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_baby.png")]
		private const pertanyaan6:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_7B.png")]
		private const pertanyaan7:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_8B.png")]
		private const pertanyaan8:Class;
		[Embed(source="assets gray/resize level 2/gambar/EDIT_meja.png")]
		private const pertanyaan9:Class;
		private var pertanyaan:Image = new Image(pertanyaan7);
		
		private var sndend:Number = 0;
		
		private var penjelasan:Text = new Text("");
		private var penjelasanbg:Text = new Text("");
		
		public function button_level2_1()
		{
			//glist.add(gambar_1);
			
			penjelasan.wordWrap = true;
			penjelasan.width = 350;
			penjelasan.height = 2000;
			penjelasan.align = "center";
			penjelasan.size = 20;
			penjelasan.font = "myfont";
			penjelasan.color = 0x088D39;
			
			penjelasanbg.wordWrap = true;
			penjelasanbg.width = 350;
			penjelasanbg.height = 2000;
			penjelasanbg.align = "center";
			penjelasanbg.size = 20;
			penjelasanbg.font = "myfont";
			penjelasanbg.color = 0xFFFFFF;
			
			penjelasanbg.outlineStrength = 7;
			penjelasanbg.outlineColor = 0xFFFFFF;
			penjelasanbg.updateTextBuffer();
			
			graphic = glist;
			setHitbox(350, 320);
		}
		
		override public function added():void
		{
			if (globalvar.gamelevel == "level2tutorial")
			{
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan1")
			{
				penjelasan.text = "Jika layang-layang tersangkut di kabel listrik, aliran listrik dapat turun melalui tali layang-layang yang tersangkut dan dapat menyebabkan kita kesetrum, karena itu bermain layang-layang di tanah lapang jauh dari tiang listrik";
				penjelasanbg.text = "Jika layang-layang tersangkut di kabel listrik, aliran listrik dapat turun melalui tali layang-layang yang tersangkut dan dapat menyebabkan kita kesetrum, karena itu bermain layang-layang di tanah lapang jauh dari tiang listrik";
				pertanyaan = new Image(pertanyaan1);
				glist.add(pertanyaan);
				
			}
			if (globalvar.gamelevel == "level2pertanyaan2")
			{
				penjelasan.text = "Memanjat pohon didekat tiang listrik sangat berbahaya, karena dapat menyebabkan kita terkena atau tersetrum aliran listrik yang ada pada kabel listrik";
				penjelasanbg.text = "Memanjat pohon didekat tiang listrik sangat berbahaya, karena dapat menyebabkan kita terkena atau tersetrum aliran listrik yang ada pada kabel listrik";
				pertanyaan = new Image(pertanyaan2);
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan3")
			{
				penjelasan.text = "Petir merupakan sesuatu yang memiliki listrik dan air merupakan penghantar listrik yang baik, karena itu sangat berbahaya berenang di area terbuka saat hujan petir";
				penjelasanbg.text = "Petir merupakan sesuatu yang memiliki listrik dan air merupakan penghantar listrik yang baik, karena itu sangat berbahaya berenang di area terbuka saat hujan petir";
				pertanyaan = new Image(pertanyaan3);
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan4")
			{
				penjelasan.text = "Air dan listrik berbahaya jika didekatkan, jika air tumpah mengenai peralatan listrik, hal tersebut dapat menyebabkab terjadinya konsleting atau kerusakan pada alat listrik";
				penjelasanbg.text = "Air dan listrik berbahaya jika didekatkan, jika air tumpah mengenai peralatan listrik, hal tersebut dapat menyebabkab terjadinya konsleting atau kerusakan pada alat listrik";
				pertanyaan = new Image(pertanyaan4);
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan5")
			{
				penjelasan.text = "Menancapkan banyak steker pada satu colokan dapat menyebabkan terjadinya arus pendek yang dapat menimbulkan percikan api, lebih lagi bisa menyebabkan terjadinya kebakaran";
				penjelasanbg.text = "Menancapkan banyak steker pada satu colokan dapat menyebabkan terjadinya arus pendek yang dapat menimbulkan percikan api, lebih lagi bisa menyebabkan terjadinya kebakaran";
				pertanyaan = new Image(pertanyaan5);
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan6")
			{
				penjelasan.text = "Supaya aman dan menghindari kesetrum, tutup semua colokan yang terjangkau oleh anak-anak";
				penjelasanbg.text = "Supaya aman dan menghindari kesetrum, tutup semua colokan yang terjangkau oleh anak-anak";
				pertanyaan = new Image(pertanyaan6);
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan7")
			{
				penjelasan.text = "Hindari mengolor kabel pada area yang dilewati";
				penjelasanbg.text = "Hindari mengolor kabel pada area yang dilewati";
				pertanyaan = new Image(pertanyaan7);
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan8")
			{
				penjelasan.text = "Sambungan listrik yang panjang dan banyak dapat menyebabkan terjadinya konsleting atau arus pendek listrik";
				penjelasanbg.text = "Sambungan listrik yang panjang dan banyak dapat menyebabkan terjadinya konsleting atau arus pendek listrik";
				pertanyaan = new Image(pertanyaan8);
				glist.add(pertanyaan);
			}
			if (globalvar.gamelevel == "level2pertanyaan9")
			{
				penjelasan.text = "Air dan listrik berbahaya jika didekatkan, jika air tumpah mengenai peralatan listrik, hal tersebut dapat menyebabkan terjadinya konsleting atau kerusakan pada alat listrik";
				penjelasanbg.text = "Air dan listrik berbahaya jika didekatkan, jika air tumpah mengenai peralatan listrik, hal tersebut dapat menyebabkan terjadinya konsleting atau kerusakan pada alat listrik";
				pertanyaan = new Image(pertanyaan9);
				glist.add(pertanyaan);
			}
			
			penjelasan.x = 10;
			penjelasan.y = 110;
			
			penjelasanbg.x = 10;
			penjelasanbg.y = 110;
			
			pertanyaan.x = 6;
			pertanyaan.y = 16;
			
			checkmark_1.x = 6;
			checkmark_1.y = 15;
			
			super.added();
		}
		
		override public function update():void
		{
			if (globalvar.gamepause == false)
			{
				if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY) && !collide("nextpertanyaan", x, y))
				{
					
					sndend = 1;
					globalvar.snd_button_benar.play();
					FP.world.add(new button_level2nextpertanyaan(x + 85, y + 300));
					//globalvar.snd_lev1_benar.play();
					//gambar_1.visible = false;
					glist.add(checkmark_1);
					glist.add(penjelasanbg);
					glist.add(penjelasan);
					globalvar.level2benar++;
					globalvar.gamepause = true;
					globalvar.stat_level2_list.push(new stat_level2benar());
					globalvar.reloadstat = true;
					
					if (globalvar.gamelevel == "level2pertanyaan1")
					{
						globalvar.stat_level2_pertanyaan1 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan2")
					{
						globalvar.stat_level2_pertanyaan2 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan3")
					{
						globalvar.stat_level2_pertanyaan3 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan4")
					{
						globalvar.stat_level2_pertanyaan4 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan5")
					{
						globalvar.stat_level2_pertanyaan5 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan6")
					{
						globalvar.stat_level2_pertanyaan6 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan7")
					{
						globalvar.stat_level2_pertanyaan7 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan8")
					{
						globalvar.stat_level2_pertanyaan8 = true;
						
					}
					if (globalvar.gamelevel == "level2pertanyaan9")
					{
						globalvar.stat_level2_pertanyaan9 = true;
						
					}
				}
				
				graphic.active = true;
				super.update();
			}
			if (globalvar.gamepause == true)
			{
				if (!globalvar.snd_button_benar.playing)
				{
					if (sndend == 1)
					{
						globalvar.snd_lev1_benar.play();	
						sndend = 2;	
					}
				}
				if (!globalvar.snd_lev1_benar.playing)
				{
					if (sndend == 2)
					{	
						sndend = 3;	
					}
				}
				
				
				if (sndend == 3)
				{
					//FP.world.add(new button_level2nextpertanyaan(x + 85, y + 300));
					
					if (globalvar.gamelevel == "level2pertanyaan1")
					{
						globalvar.stat_level2_pertanyaan1 = true;
						globalvar.snd_lev2_layang.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan2")
					{
						globalvar.stat_level2_pertanyaan2 = true;
						globalvar.snd_lev2_memanjatpohon.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan3")
					{
						globalvar.stat_level2_pertanyaan3 = true;
						globalvar.snd_lev2_berenang.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan4")
					{
						globalvar.stat_level2_pertanyaan4 = true;
						globalvar.snd_lev2_airdekatlistrik.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan5")
					{
						globalvar.stat_level2_pertanyaan5 = true;
						globalvar.snd_lev2_colokan.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan6")
					{
						globalvar.stat_level2_pertanyaan6 = true;
						globalvar.snd_lev2_bayi.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan7")
					{
						globalvar.stat_level2_pertanyaan7 = true;
						globalvar.snd_lev2_oloran.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan8")
					{
						globalvar.stat_level2_pertanyaan8 = true;
						globalvar.snd_lev2_sambunganbanyak.play();
						
					}
					if (globalvar.gamelevel == "level2pertanyaan9")
					{
						globalvar.stat_level2_pertanyaan9 = true;
						globalvar.snd_lev2_airdekatlistrik_2.play();
						
					}
					sndend = 4;
				}
				graphic.active = false;
			}
		}
	
	}

}