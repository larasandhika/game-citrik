package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level4_selamat extends Entity 
	{
		[Embed(source="assets gray/SELAMAT/Layout Selamat.png")]
		private const _img_layout:Class;
		private var layout_selamat:Image = new Image(_img_layout);
		
		[Embed(source="assets gray/SELAMAT/bg Selamat.png")]
		private const _img_bg:Class;
		private var bg_selamat:Image = new Image(_img_bg);
		
		private var glist:Graphiclist = new Graphiclist();
		
		public function level4_selamat() 
		{
			glist.add(layout_selamat);
			glist.add(bg_selamat);
			
			bg_selamat.x = 325;
			bg_selamat.y = 15;
			graphic = glist;
			
		}
		
	}

}