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
	public class button_level2cobalagi extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/pergantian level/coba lagi button_385_176.png")]
		private const cobalagibutton:Class;
		private var cobalagi_button:Spritemap = new Spritemap (cobalagibutton, 385, 176);
		
		public function button_level2cobalagi(_x:Number,_y:Number) 
		{
			glist.add(cobalagi_button);
			cobalagi_button.add("up", [0], 5, true);
			cobalagi_button.add("down", [1], 5, true);
			cobalagi_button.play("up");
			
			x = _x;
			y = _y;
			
			graphic = glist;
			setHitbox(385, 176);
		}
		override public function update():void
		{
			if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					///cobalagi_button.play("down");
					
				}
				else
				{
					//cobalagi_button.play("up");
				}
				
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				cobalagi_button.play("down");
				globalvar.snd_button.play();
				globalvar.gamelevel = "level2tutorial";
				globalvar.gameload = true;
				
			}
		}
		
	}

}