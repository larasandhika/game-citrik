package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author laras
	 */
	public class button_level4fast extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets/button/main yuk.png")]
		private const startbutton:Class;
		private var start_button:Image = new Image (startbutton);
		private var player:level4_player;
		
		public function button_level4fast(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
			glist.add(start_button);
			
			
			graphic = glist;
			setHitbox(202, 79);
		}
		
		override public function update():void 
		{
			if (Input.mouseDown && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				globalvar.playercheckfast = true;
			}
			if (Input.mouseDown && !collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				globalvar.playercheckfast = false;
			}
			if (Input.mouseReleased)
			{
				globalvar.playercheckfast = false;
			}
			super.update();
		}
		
	}

}