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
	public class button_start extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/Sprite Cover/main yuk button_345_160 edit.png")]
		private const startbutton:Class;
		private var start_button:Spritemap = new Spritemap (startbutton, 345, 160);
		
		public function button_start(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
			glist.add(start_button);
			start_button.add("up", [0], 5, true);
			start_button.add("down", [1], 5, true);
			start_button.play("up");
			
			
			graphic = glist;
			setHitbox(345, 160);
		}
		
		override public function update():void 
		{
			if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					//start_button.play("down");
					
				}
				else
				{
					//start_button.play("up");
				}
				
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				start_button.play("down");
				globalvar.snd_button.play();
				if (globalvar.snd_awal.playing)
				{
					globalvar.snd_awal.stop();
				}
				
				globalvar.gamelevel = "loginmenu";
				globalvar.gameload = true;
			}
			super.update();
		}
		
	}

}