package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	
	/**
	 * ...
	 * @author laras
	 */
	public class bg_level3tutorial extends Entity 
	{
		[Embed(source="assets gray/LEVEL3/Layout Pembuka level3.png")]
		private const _imglayout:Class;
		private var layout_pembuka:Image = new Image(_imglayout);
		
		[Embed(source="assets gray/citrik voice over besar/voice over citrik_edit tanpa mata_400_510.png")]
		private const _sprcitrik:Class;
		private var spr_citrik:Spritemap = new Spritemap(_sprcitrik, 400, 510);
		
		[Embed(source="assets gray/citrik voice over besar/Mata VO lanjut_140_58.png")]
		private const _sprmata:Class;
		private var spr_mata:Spritemap = new Spritemap(_sprmata, 140, 58);
		
		[Embed(source="assets gray/citrik voice over besar/mulut VO lanjut_123_68.png")]
		private const _sprmulut:Class;
		private var spr_mulut:Spritemap = new Spritemap(_sprmulut, 123, 68);
		
		
		[Embed(source="assets gray/LEVEL3/Bg_perintah level3.png")]
		private const _imgbg_perintah:Class;
		private var bg_perintah:Image = new Image(_imgbg_perintah);
		
		private var glist:Graphiclist = new Graphiclist();
		
		private var list:Text = new Text("SEBELUM KELUAR RUMAH, KAMU HARUS MENGERJAKAN :")
		
		private var list_1:Text = new Text("Mengganti lampu dengan lampu hemat energi");
		private var list_2:Text = new Text("Mematikan komputer, dan televisi jika tidak digunakan");
		private var list_3:Text = new Text("Mematikan AC, kipas angin, dan lampu jika meninggalkan ruangan");
		private var list_4:Text = new Text("Membuka pintu kulkas seperlunya");
		
		private var bullet_1:Text = new Text("-");
		private var bullet_2:Text = new Text("-");
		private var bullet_3:Text = new Text("-");
		private var bullet_4:Text = new Text("-");
		
		private var count:Number = 0;
		
		private var randketip:Number = 0;
		private var countketip:Number = 0;
		
		public function bg_level3tutorial() 
		{
			glist.add(layout_pembuka);
			glist.add(spr_citrik);
			glist.add(spr_mata);
			glist.add(spr_mulut);
			glist.add(bg_perintah);
			glist.add(list);
			glist.add(list_1);
			glist.add(list_2);
			glist.add(list_3);
			glist.add(list_4);
			glist.add(bullet_1);
			glist.add(bullet_2);
			glist.add(bullet_3);
			glist.add(bullet_4);
			
			
			list_1.visible = true;
			list_2.visible = true;
			list_3.visible = true;
			list_4.visible = true;
			bullet_1.visible = true;
			bullet_2.visible = true;
			bullet_3.visible = true;
			bullet_4.visible = true;
			
			list.x = 545;
			list.y = 172;
			
			list_1.x = 577;
			list_1.y = 250;
			
			list_2.x = 577;
			list_2.y = 300;
			
			list_3.x = 577;
			list_3.y = 350;
			
			list_4.x = 577;
			list_4.y = 400;
			
			bullet_1.x = 555;
			bullet_1.y = 250;
			
			bullet_2.x = 555;
			bullet_2.y = 300;
			
			bullet_3.x = 555;
			bullet_3.y = 350;
			
			bullet_4.x = 555;
			bullet_4.y = 400;
			
			list.wordWrap = true;
			list.width = 400;
			list.height = 2000;
			list.align = "center";
			list.size = 25;
			list.font = "myfont";
			list.color = 0xFFFFFF;
			
			list_1.wordWrap = true;
			list_1.width = 350;
			list_1.height = 2000;
			list_1.align = "left";
			list_1.size = 20;
			list_1.font = "myfont";
			list_1.color = 0xFFFFFF;
			
			list_2.wordWrap = true;
			list_2.width = 350;
			list_2.height = 2000;
			list_2.align = "left";
			list_2.size = 20;
			list_2.font = "myfont";
			list_2.color = 0xFFFFFF;
			
			list_3.wordWrap = true;
			list_3.width = 350;
			list_3.height = 2000;
			list_3.align = "left";
			list_3.size = 20;
			list_3.font = "myfont";
			list_3.color = 0xFFFFFF;
			
			list_4.wordWrap = true;
			list_4.width = 350;
			list_4.height = 2000;
			list_4.align = "left";
			list_4.size = 20;
			list_4.font = "myfont";
			list_4.color = 0xFFFFFF;
			
			bullet_1.wordWrap = true;
			bullet_1.width = 350;
			bullet_1.height = 2000;
			bullet_1.align = "left";
			bullet_1.size = 20;
			bullet_1.font = "myfont";
			bullet_1.color = 0xFFFFFF;
			
			bullet_2.wordWrap = true;
			bullet_2.width = 350;
			bullet_2.height = 2000;
			bullet_2.align = "left";
			bullet_2.size = 20;
			bullet_2.font = "myfont";
			bullet_2.color = 0xFFFFFF;
			
			bullet_3.wordWrap = true;
			bullet_3.width = 350;
			bullet_3.height = 2000;
			bullet_3.align = "left";
			bullet_3.size = 20;
			bullet_3.font = "myfont";
			bullet_3.color = 0xFFFFFF;
			
			bullet_4.wordWrap = true;
			bullet_4.width = 350;
			bullet_4.height = 2000;
			bullet_4.align = "left";
			bullet_4.size = 20;
			bullet_4.font = "myfont";
			bullet_4.color = 0xFFFFFF;
			
			spr_citrik.add("diam", [0], 5, true);
			spr_citrik.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39], 10, true);
			spr_citrik.play("loop");
			
			spr_mata.add("diam", [0], 5, true);
			spr_mata.add("loop", [0, 2, 4, 2, 0], 5, false);
			spr_mata.play("diam");
			
			spr_mulut.add("diam", [6], 5, true);
			spr_mulut.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8], 5, true);
			spr_mulut.play("diam");
			
			spr_citrik.x = 60;
			spr_citrik.y = 50;
			
			spr_mata.x = 215;
			spr_mata.y = 190;
			
			spr_mulut.x = 220;
			spr_mulut.y = 240;
			
			bg_perintah.x = 325;
			bg_perintah.y = 15;
			
			graphic = glist;
			
		}
		override public function added():void 
		{
			globalvar.snd_lev3_tutorial.play();
			randketip = 50 + Math.floor(Math.random() * 150);
			super.added();
		}
		override public function update():void 
		{
			count++;
			if (count == 330)
			{
				bullet_1.color = 0xFFF904;
				list_1.color = 0xFFF904;
				//bullet_1.visible = true;
				//list_1.visible = true;
			}
			if (count == 420)
			{
				bullet_2.color = 0xFFF904;
				list_2.color = 0xFFF904;
				//bullet_2.visible = true;
				//list_2.visible = true;
			}
			if (count == 540)
			{
				bullet_3.color = 0xFFF904;
				list_3.color = 0xFFF904;
				//bullet_3.visible = true;
				//list_3.visible = true;
			}
			if (count == 690)
			{
				bullet_4.color = 0xFFF904;
				list_4.color = 0xFFF904;
				//bullet_4.visible = true;
				//list_4.visible = true;
			}
			
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
			if (globalvar.snd_lev3_tutorial.playing)
			{
				spr_mulut.play("loop");
			}
			if (!globalvar.snd_lev3_tutorial.playing)
			{
				spr_mulut.play("diam");
			}
			super.update();
		}
		
	}

}