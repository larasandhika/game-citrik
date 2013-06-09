package  
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level4_score extends Entity 
	{
		[Embed(source="assets gray/PIAGAM/BG piagam.png")]
		private const _bg:Class;
		private var bg_piagam:Image = new Image(_bg);
		
		[Embed(source="assets gray/PIAGAM/Lencana.png")]
		private const _lencana:Class;
		private var img_lencana:Image = new Image(_lencana);
		
		private var selamat_txt:Text = new Text("SELAMAT KAMU TELAH MENJADI DETEKTIF LISTRIK");
		
		private var nama:Text = new Text("");
		private var score:Text = new Text("");
		
		[Embed(source="assets gray/Sprite Cover/logo_pln(icon).jpg")]
		private var _logo_pln2:Class;
		private var logo_pln_lev4:Image = new Image(_logo_pln2);
		
		[Embed(source="assets gray/Sprite Cover/mmb(icon).png")]
		private var _logo_mmb2:Class;
		private var logo_mmb_lev4:Image = new Image(_logo_mmb2);
		
		private var txt_lev4:Text =new Text ("Hasil Kerjasama: ");
		
		private var glist:Graphiclist = new Graphiclist();
		
		public function level4_score() 
		{
			glist.add(bg_piagam);
			glist.add(img_lencana);
			glist.add(nama);
			glist.add(score);
			glist.add(logo_mmb_lev4);
			glist.add(logo_pln_lev4);
			glist.add(txt_lev4);
			
			
			score.y = 100;
			
			selamat_txt.wordWrap = true;
			selamat_txt.width = 1000;
			selamat_txt.height = 2000;
			selamat_txt.align = "center";
			selamat_txt.x = 25;
			selamat_txt.y = 125;
			selamat_txt.size = 28;
			selamat_txt.font = "myfont";
			selamat_txt.color = 0x804000;
			
			
			nama.wordWrap = true;
			nama.width = 1000;
			nama.height = 2000;
			nama.align = "center";
			nama.size = 40;
			nama.font = "myfont";
			nama.color = 0xFFFFFF;
			nama.outlineColor = 0x804000;
			nama.outlineStrength = 10;
			//nama.updateTextBuffer();
			
			score.wordWrap = true;
			score.width = 1000;
			score.height = 2000;
			score.align = "center";
			score.size = 50;
			score.font = "myfont";
			score.color = 0xFFFFFF;
			score.outlineColor = 0x804000;
			score.outlineStrength = 10;
			
			img_lencana.x = 250;
			img_lencana.y = 180;
			
			txt_lev4.size = 20;
			txt_lev4.font = "myfont";
			txt_lev4.color = 0x804000;
			txt_lev4.x = 600;
			txt_lev4.y = 635;
			
			logo_pln_lev4.x = 600;
			logo_pln_lev4.y = 660;
			
			logo_mmb_lev4.x = 660;
			logo_mmb_lev4.y = 675;
			
			nama.x = 25;
			nama.y = 50;
			
			score.x = 3;
			score.y = 425;
			
			graphic = glist;
		}
		
		override public function added():void 
		{
			if (globalvar.snd_lev4_backsound.playing)
			{
				globalvar.snd_lev4_backsound.stop();
			}
			
			if (globalvar.gamelevel == "level4print")
			{
				globalvar.snd_selamat.play();
			}
			
			//nama.text = globalvar.keyboardtxt + "SELAMAT KAMU TELAH MENJADI DETEKTIF LISTRIK";
			nama.text = globalvar.keyboardtxt;
			glist.add(selamat_txt);
			score.text = String(globalvar.level4point);
			
			super.added();
		}
		
	}

}