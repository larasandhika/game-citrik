package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class img_fotolevel1 extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/foto_level_1.png")]
		private const fotolevel1:Class;
		private var foto_level1:Image = new Image (fotolevel1);
		
		[Embed(source="assets gray/robot cjdw.png")]
		private const cjdw_:Class;
		private var pertanyaan_1:Image = new Image(cjdw_);
		
		[Embed(source="assets gray/baru 4n.jpg")]
		private const saklar:Class;
		private var pertanyaan_2:Image = new Image(saklar);
		
		[Embed(source="assets gray/baru 2n.jpg")]
		private const steker:Class;
		private var pertanyaan_3:Image = new Image(steker);
		
		[Embed(source="assets gray/baru 7n.jpg")]
		private const sekring:Class;
		private var pertanyaan_4:Image = new Image (sekring);
		
		[Embed(source="assets gray/baru 8n.jpg")]
		private const meteranlistrik:Class;
		private var pertanyaan_5:Image = new Image(meteranlistrik);
		
		[Embed(source="assets gray/baru 5n.jpg")]
		private const stabilizer:Class;
		private var pertanyaan_6:Image = new Image(stabilizer);
		
		[Embed(source="assets gray/baru 3n.jpg")]
		private const lampuhemat:Class;
		private var pertanyaan_7:Image = new Image(lampuhemat);
		
		[Embed(source="assets gray/baru 1n.jpg")]
		private const tianglistrik:Class;
		private var pertanyaan_8:Image = new Image(tianglistrik);
		
		public function img_fotolevel1(_x:Number,_y:Number) 
		{
			glist.add(foto_level1);
			
			pertanyaan_1.x = 6;
			pertanyaan_1.y = 6;
			
			pertanyaan_2.x = 6;
			pertanyaan_2.y = 5;
			
			pertanyaan_3.x = 6;
			pertanyaan_3.y = 5;
			
			pertanyaan_4.x = 60;
			pertanyaan_4.y = 5;
			
			pertanyaan_5.x = 77;
			pertanyaan_5.y = 5;
			
			pertanyaan_6.x = 6;
			pertanyaan_6.y = 6;
			
			pertanyaan_7.x = 69;
			pertanyaan_7.y = 6;
			
			pertanyaan_8.x = 6;
			pertanyaan_8.y = 6;
			
			x = _x;
			y = _y;
			
			graphic = glist;
		}
		override public function added():void 
		{
			if (globalvar.gamelevel == "level1tutorial")
			{
				glist.add(pertanyaan_1);
			}
			if (globalvar.gamelevel == "level1pertanyaan1")
			{
				glist.add(pertanyaan_1);
			}
			if (globalvar.gamelevel == "level1pertanyaan2")
			{
				glist.add(pertanyaan_2);
			}
			if (globalvar.gamelevel == "level1pertanyaan3")
			{
				glist.add(pertanyaan_3);
			}
			if (globalvar.gamelevel == "level1pertanyaan4")
			{
				glist.add(pertanyaan_4);
			}
			if (globalvar.gamelevel == "level1pertanyaan5")
			{
				glist.add(pertanyaan_5);
			}
			if (globalvar.gamelevel == "level1pertanyaan6")
			{
				glist.add(pertanyaan_6);
			}
			if (globalvar.gamelevel == "level1pertanyaan7")
			{
				glist.add(pertanyaan_7);
			}
			if (globalvar.gamelevel == "level1pertanyaan8")
			{
				glist.add(pertanyaan_8);
			}
			
			
			super.added();
		}
	}

}