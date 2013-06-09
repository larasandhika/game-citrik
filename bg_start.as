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
	public class bg_start extends Entity 
	{
		[Embed(source="assets gray/Sprite Cover/cover.png")]
		private const bgopening:Class;
		private var bg_opening:Image = new Image(bgopening);
		
		[Embed(source="assets gray/Sprite Cover/judul cover citrik REVISI.png")]
		private const _judul:Class;
		private var judul:Image = new Image(_judul);
		
		[Embed(source="assets gray/Sprite Cover/matahari_172_172.png")]
		private const _matahari:Class;
		private var matahari:Spritemap = new Spritemap(_matahari, 172, 172);
		
		[Embed(source="assets gray/Sprite Cover/citrik cover_185_335.png")]
		private const _citrik:Class;
		private var spr_citriklari:Spritemap = new Spritemap(_citrik, 185, 335);
		
		[Embed(source="assets gray/Sprite Cover/jalan_200_480.png")]
		private const _jalan:Class;
		private var spr_garisjalan:Spritemap = new Spritemap(_jalan, 200, 480);
		
		[Embed(source="assets gray/Sprite Cover/logo_pln(icon).jpg")]
		private var _logo_pln:Class;
		private var logo_pln:Image = new Image(_logo_pln);
		
		[Embed(source="assets gray/Sprite Cover/mmb(icon).png")]
		private var _logo_mmb:Class;
		private var logo_mmb:Image = new Image(_logo_mmb);
		
		private var txt:Text =new Text ("Hasil Kerjasama: ");
		
		private var glist:Graphiclist = new Graphiclist();
	
		public function bg_start() 
		{
			
			glist.add(bg_opening);
			glist.add(matahari);
			glist.add(judul);
			
			glist.add(spr_garisjalan);
			glist.add(spr_citriklari);
			glist.add(logo_mmb);
			glist.add(logo_pln);
			glist.add(txt);
			
			judul.x = 105;
			judul.y = 23;
			
			bg_opening.scale = 1.01;
			
			matahari.x = 29;
			matahari.y = 25;
			
			txt.size = 20;
			txt.font = "myfont";
			txt.color = 0x804000;
			txt.x = 75;
			txt.y = 669;
			
			logo_pln.x = 76;
			logo_pln.y = 692;
			
			logo_mmb.x = 136;
			logo_mmb.y = 710;
			
			spr_citriklari.x = 415;
			spr_citriklari.y = 250;
			
			spr_garisjalan.x = 387;
			spr_garisjalan.y = 475;
			
			matahari.add("loop", [0, 59], 10, true);
			matahari.play("loop");
			
			spr_citriklari.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59], 50, true);
			spr_citriklari.play("loop");
			
			spr_garisjalan.add("loop",[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59], 30, true);
			spr_garisjalan.play("loop");
			
			
			bg_opening.x = 0;
			bg_opening.y = 0;
			
			
			
			graphic = glist;
			
		}
		override public function added():void 
		{
			globalvar.snd_awal.loop();
			super.added();
		}
		
	}

}