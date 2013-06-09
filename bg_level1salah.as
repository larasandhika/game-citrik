package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class bg_level1salah extends Entity 
	{
		[Embed(source="assets gray/pergantian level/BG level gagal.png")]
		private const _bg:Class;
		private var background:Image = new Image(_bg);
		
		[Embed(source="assets gray/pergantian level/citrik sedih.png")]
		private const citriksalahimg:Class;
		private var citriksalah_img:Image = new Image (citriksalahimg);
		
		private var glist:Graphiclist = new Graphiclist();
		
		public function bg_level1salah() 
		{
			glist.add(background);
			glist.add(citriksalah_img);
			
			citriksalah_img.x = 275;
			citriksalah_img.y = 8;
			
			graphic = glist;
			
		}
		override public function added():void 
		{
			globalvar.snd_gagal.play();
			super.added();
		}
		
	}

}