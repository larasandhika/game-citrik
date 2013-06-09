package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level1_pertanyaan1 extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		
		[Embed(source="assets gray/LEVEL1/bg_tempat foto level1.png")]
		private const boxfoto:Class;
		private var box_foto:Image = new Image(boxfoto);
		
		[Embed(source="assets gray/LEVEL1/pertanyaan level1.png")]
		private const boxpertanyaan:Class;
		private var box_pertanyaan:Image = new Image (boxpertanyaan);
		
		[Embed(source="assets gray/LEVEL1/bg_hasil jawaban level 1.png")]
		private const boxsamping:Class;
		private var box_samping:Image = new Image (boxsamping);
		
		[Embed(source="assets gray/LEVEL1/bg level 1.png")]
		private const layout:Class;
		private var layout_bg:Image = new Image (layout);
		
		private var count:Number = 0;
		
		public function level1_pertanyaan1() 
		{
			glist.add(layout_bg);
			glist.add(box_foto);
			glist.add(box_pertanyaan);
			glist.add(box_samping);
			
			box_pertanyaan.x = 8;
			box_pertanyaan.y = 3;
			
			box_samping.x = 730;
			box_samping.y = 10;
			
			box_foto.x = 22;
			box_foto.y = 124;
			
			graphic = glist;
			
		}
		
		override public function update():void 
		{
			super.update();
		}
		
	}

}