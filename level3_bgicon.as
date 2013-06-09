package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level3_bgicon extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL3/layout bawah2.png")]
		private const _img:Class;
		private var bg_icon:Image = new Image (_img);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box1:Class;
		private var box_1:Image = new Image(_box1);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box2:Class;
		private var box_2:Image = new Image(_box2);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box3:Class;
		private var box_3:Image = new Image(_box3);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box4:Class;
		private var box_4:Image = new Image(_box4);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box5:Class;
		private var box_5:Image = new Image(_box5);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box6:Class;
		private var box_6:Image = new Image(_box6);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box7:Class;
		private var box_7:Image = new Image(_box7);
		
		[Embed(source="assets gray/LEVEL3/box_n.png")]
		private const _box8:Class;
		private var box_8:Image = new Image(_box8);
		
		public function level3_bgicon() 
		{
			glist.add(bg_icon);
			glist.add(box_1);
			glist.add(box_2);
			glist.add(box_3);
			glist.add(box_4);
			glist.add(box_5);
			glist.add(box_6);
			glist.add(box_7);
			glist.add(box_8);
			
			bg_icon.x = 0;
			bg_icon.y = 600;
			
			box_1.x = 25;
			box_1.y = 615;
			
			box_2.x = 155;
			box_2.y = 615;
			
			box_3.x = 285;
			box_3.y = 615;
			
			box_4.x = 405;
			box_4.y = 615;
			
			box_5.x = 535;
			box_5.y = 615;
			
			box_6.x = 655;
			box_6.y = 615;
			
			box_7.x = 775;
			box_7.y = 615;
			
			box_8.x = 895;
			box_8.y = 615;
			
			graphic = glist;
			
		}
		
	}

}