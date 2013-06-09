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
	public class bg_login extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/MASUK NAMA/bg masuk nama.png")]
		private const layoutnama:Class;
		private var layout_nama:Image = new Image (layoutnama);
		
		[Embed(source="assets gray/layout_masukNama.png")]
		private const layoutlogin:Class;
		private var layout_login:Image = new Image (layoutlogin);
		
		[Embed(source="assets gray/citrik voice over besar/voice over citrik_edit tanpa mata_400_510.png")]
		private const citrikmasuknama:Class;
		private var img_citriklogin:Spritemap = new Spritemap (citrikmasuknama,400,510);
		
		[Embed(source="assets gray/citrik voice over besar/Mata VO lanjut_140_58.png")]
		private const _imgmata:Class;
		private var spr_matakedip:Spritemap = new Spritemap(_imgmata, 140, 58);
		
		[Embed(source="assets gray/citrik voice over besar/mulut VO lanjut_123_68.png")]
		private const _imgmulut:Class;
		private var spr_mulut:Spritemap = new Spritemap(_imgmulut, 123, 68);
		
		private var randketip:Number = 0;
		private var countketip:Number = 0;
		
		public function bg_login() 
		{
			glist.add(layout_login);
			glist.add(layout_nama);
			glist.add(img_citriklogin);
			glist.add(spr_matakedip);
			glist.add(spr_mulut);
			
			img_citriklogin.add("diam", [0], 5, true);
			img_citriklogin.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39], 20, true);
			img_citriklogin.play("loop");
			
			spr_matakedip.add("diam", [0], 5, true);
			spr_matakedip.add("loop", [0, 2, 4, 2, 0], 15, false);
			spr_matakedip.play("diam");
			
			spr_mulut.add("diam", [6], 5, true);
			spr_mulut.add("loop", [0, 1, 2, 3, 4, 5, 6, 7, 8], 5, true);
			spr_mulut.play("diam");
			
			spr_matakedip.x = 212;
			spr_matakedip.y = 190;
			
			spr_mulut.x = 218;
			spr_mulut.y = 240;
			
			layout_login.x = 0;
			layout_login.y = 0;
			
			layout_nama.x = 350;
			layout_nama.y = 35;
			
			img_citriklogin.x = 60;
			img_citriklogin.y = 50;
			
			graphic = glist;
		
		}
		override public function added():void 
		{
			globalvar.snd_login.play();
			randketip = 50 + Math.floor(Math.random() * 150);
			super.added();
		}
		
		override public function update():void 
		{
			if (globalvar.snd_login.playing)
			{
				spr_mulut.play("loop");
			}
			else
			{
				spr_mulut.play("diam");
			}
			
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
			
			super.update();
		}
		
	}

}