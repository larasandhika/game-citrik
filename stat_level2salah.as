package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author laras
	 */
	public class stat_level2salah extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/listrik benar salah level2_60_85.png")]
		private const _status:Class;
		private var status:Spritemap = new Spritemap(_status,60,85);
		
		public function stat_level2salah() 
		{
			type = "statpertanyaan";
			//x = _x,
			//y = _y;
			
			glist.add(status);
			status.add("salah", [1], 5, true);
			
			
			graphic = glist;
			setHitbox(169, 61);
		}
		override public function added():void 
		{
			status.play("salah");
			super.added();
		}
		
	}

}