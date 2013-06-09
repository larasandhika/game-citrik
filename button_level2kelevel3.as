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
	public class button_level2kelevel3 extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/pergantian level/button kita lanjutkan permainan2_Spritesheet2x1.png")]
		private const kitalanjutbutton:Class;
		private var kitalanjut_button:Spritemap = new Spritemap (kitalanjutbutton, 410, 150);
		
		
		public function button_level2kelevel3(_x:Number,_y:Number) 
		{
			glist.add(kitalanjut_button);
			kitalanjut_button.add("up", [0], 5, true);
			kitalanjut_button.add("down", [1], 5, true);
			kitalanjut_button.play("up");
			
			x = _x;
			y = _y;
			
			graphic = glist;
			setHitbox(410, 150);
			
		}
		override public function update():void
		{
			if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					//kitalanjut_button.play("down");
					
				}
				else
				{
					//kitalanjut_button.play("up");
				}
				
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				kitalanjut_button.play("down");
				globalvar.snd_button.play();
				globalvar.gamelevel = "level3tutorial";
				globalvar.gameload = true;
				
			}
		}
		
	}

}