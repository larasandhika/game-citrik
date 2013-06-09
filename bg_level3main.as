package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Satya Dwi Anggiawan
	 */
	public class bg_level3main extends Entity 
	{
		[Embed(source="assets gray/ruang level3 6x layar protolan_edit.png")]
		private const bglevel3:Class;
		private var bg_level3:Image = new Image(bglevel3);
		//private var bg2_level3:Image = new Image(bglevel3);
		//private var bg3_level3:Image = new Image(bglevel3);
		
		private var imgwidth:Number = 1024;
		
		private var glist:Graphiclist = new Graphiclist();
		
		private var countdownpause:Number = 0;
		
		public function bg_level3main() 
		{
			glist.add(bg_level3);
			//glist.add(bg2_level3);
			//glist.add(bg3_level3);
			
			//bg2_level3.x = bg_level3.width;
			//bg3_level3.x = bg_level3.width * 2;
			
			graphic = glist;
		}
		
		override public function added():void 
		{
			globalvar.level3stopmove = false;
			super.added();
		}
		
		override public function update():void 
		{
			countdownpause++
			if (countdownpause >= 90)
			{
				if (this.x <= -(imgwidth * 5))
				{
					x = -(imgwidth * 5);
					globalvar.level3stopmove = true;
				}
				else
				{
					x -= globalvar.level3speed;
				}
			}
	
			
			super.update();
		}
		
	}

}