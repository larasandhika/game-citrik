package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Text;
	
	/**
	 * ...
	 * @author laras
	 */
	public class button_login extends Entity
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/MASUK NAMA/button mulai_Spritesheet2x1.png")]
		private const mulaibutton:Class;
		private var mulai_button:Spritemap = new Spritemap (mulaibutton, 220, 94);
		
		public function button_login(_x:Number,_y:Number) 
		{
			mulai_button.add("up", [0], 5, true);
			mulai_button.add("down", [1], 5, true);
			mulai_button.play("up");
			
			glist.add(mulai_button);
			
			x = _x;
			y = _y;
			
			graphic = glist;
			setHitbox(220, 94);
		}
		override public function update():void 
		{
			if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					//mulai_button.play("down");
					
				}
				else
				{
					//mulai_button.play("up");
				}
				
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY) && globalvar.keyboardtxt != "")
			{
				mulai_button.play("down");
				globalvar.snd_button.play();
				globalvar.gamelevel = "level1tutorial";
				globalvar.gameload = true;
				
				if (globalvar.snd_login.playing)
				{
					globalvar.snd_login.stop();
				}
			}
			super.update();
		}
	}

}