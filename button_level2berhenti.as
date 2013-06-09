package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author laras
	 */
	public class button_level2berhenti extends Entity 
	{
		[Embed(source="assets gray/pergantian level/berhenti button_385_176.png")]
		private const berhentibutton:Class;
		private var berhenti_button:Spritemap = new Spritemap (berhentibutton, 385, 176);
		
		private var glist:Graphiclist = new Graphiclist();
		
		public function button_level2berhenti(_x:Number,_y:Number) 
		{
			glist.add(berhenti_button);
			berhenti_button.add("up", [0], 5, true);
			berhenti_button.add("down", [1], 5, true);
			berhenti_button.play("up");
			
			x = _x;
			y = _y;
			
			graphic = glist;
			setHitbox(385, 176);
			
		}
		
		override public function update():void
		{
			if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					//berhenti_button.play("down");
					
				}
				else
				{
					//berhenti_button.play("up");
				}
				
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				berhenti_button.play("down");
				globalvar.snd_button.play();
				globalvar.gamelevel = "mainmenu";
				globalvar.gameload = true;
			}
			
			super.update();
		}
	}

}