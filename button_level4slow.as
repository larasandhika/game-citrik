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
	public class button_level4slow extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets/button/main yuk.png")]
		private const startbutton:Class;
		private var start_button:Image = new Image (startbutton);
		private var player:level4_player;
		
		public function button_level4slow(_x:Number, _y:Number) 
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
				globalvar.playercheckslow = true;
			}
			if (Input.mouseDown && !collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				globalvar.playercheckslow = false;
			}
			if (Input.mouseReleased)
			{
				globalvar.playercheckslow = false;
			}
			super.update();
		}
		
	}

}