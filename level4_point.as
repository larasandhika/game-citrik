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
	public class level4_point extends Entity 
	{
		[Embed(source="assets gray/BG level 4/score.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		private var txt:Text = new Text("");
		
		private var glist:Graphiclist = new Graphiclist();
		
		public function level4_point(_x:Number, _y:Number) 
		{
			layer = -3;
			x = _x;
			y = _y;
			
			txt.wordWrap = true;
			txt.width = 350;
			txt.height = 2000;
			txt.align = "left";
			txt.size = 20;
			txt.font = "myfont";
			txt.color = 0xFFFFFF;
			txt.x = 40;
			txt.y = 13;
			txt.text = String(globalvar.level4point);
			
			glist.add(img);
			glist.add(txt);
			
			graphic = glist;
		}
		
		override public function update():void 
		{
			if (globalvar.level4point < 0)
			{
				globalvar.level4point = 0;
			}
			txt.text = String(globalvar.level4point);
			
			super.update();
		}
		
	}

}