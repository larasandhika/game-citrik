package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class bg_level1benar extends Entity 
	{
		[Embed(source="assets gray/pergantian level/BG kita lanjut.png")]
		private const _bg:Class;
		private var bg_img:Image = new Image(_bg);
		
		[Embed(source="assets gray/pergantian level/Citrik LANJUT.png")]
		private const citrikbenarimg:Class;
		private var citrikbenar_img:Image = new Image (citrikbenarimg);
		
		private var glist:Graphiclist = new Graphiclist();
				
		public function bg_level1benar() 
		{
			glist.add(bg_img);
			glist.add(citrikbenar_img);
			
			citrikbenar_img.x = 275;
			citrikbenar_img.y = 8;
			
			
			graphic = glist;
		}
		override public function added():void 
		{
			globalvar.snd_berhasil.play();
			super.added();
		}
		
	}

}