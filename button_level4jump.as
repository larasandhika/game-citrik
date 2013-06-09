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
	public class button_level4jump extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/BG level 4/tombol up_177_177.png")]
		private const startbutton:Class;
		private var start_button:Spritemap = new Spritemap (startbutton, 177, 177);
		
		public function button_level4jump(_x:Number, _y:Number) 
		{
			layer = -3;
			x = _x;
			y = _y;
			
			start_button.add("up", [0], 5, true);
			start_button.add("down", [1], 5, true);
			start_button.play("up");
			
			glist.add(start_button);
			
			
			graphic = glist;
			setHitbox(177, 177);
		}
		
		override public function update():void 
		{
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY) && globalvar.playeronjump == false)
			{
				globalvar.snd_button.play();
				globalvar.playercheckjump = true;
				//start_button.play("down");
			}
			else
			{
				//start_button.play("up");
			}
			super.update();
		}
		
	}

}