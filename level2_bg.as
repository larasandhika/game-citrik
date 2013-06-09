package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level2_bg extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/judul level 2.png")]
		private const pertanyaanbox:Class;
		private var pertanyaan_box:Image = new Image (pertanyaanbox);
		
		[Embed(source="assets gray/LEVEL2/p.png")]
		private const layout:Class;
		private var layout_bg:Image = new Image (layout);
		
		[Embed(source="assets gray/LEVEL2/Bg_tempat foto level2.png")]
		private const _img:Class;
		private var layout_gambar:Image = new Image (_img);
		
		public function level2_bg() 
		{
			glist.add(layout_bg);
			glist.add(pertanyaan_box);
			glist.add(layout_gambar);
			
			pertanyaan_box.x = 8;
			pertanyaan_box.y = 2;
			
			layout_gambar.x = 27;
			layout_gambar.y = 117;
			
			graphic = glist;
			
			
		}
		
	}

}