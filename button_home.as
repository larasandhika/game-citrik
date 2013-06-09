package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Text;
	/**
	 * ...
	 * @author laras
	 */
	public class button_home extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL1/button home.png")]
		private const homebutton:Class;
		private var home_button:Image = new Image (homebutton);
		
		public function button_home(_x:Number, _y:Number) 
		{
			layer = -3;
			glist.add(home_button);
			
			x = _x;
			y = _y;
			
			graphic = glist;
			setHitbox(175, 169);
		}
		override public function update():void 
		{
			if (globalvar.gamepause == false)
			{
				if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					globalvar.snd_button.play();
					if (globalvar.snd_login.playing)
					{
						globalvar.snd_login.stop();
					}
					
					if(globalvar.snd_penj_lev1.playing)
					{
						globalvar.snd_penj_lev1.stop();
					}
					
					if (globalvar.snd_lev4_backsound.playing)
					{
						globalvar.snd_lev4_backsound.stop();
					}
					
					if (globalvar.snd_lev3_tutorial.playing)
					{
						globalvar.snd_lev3_tutorial.stop();
					}
					
					globalvar.gamelevel = "mainmenu";
					globalvar.gameload = true;
				}
				
				graphic.active = true;
				super.update();
			}
			if (globalvar.gamepause == true)
			{
				graphic.active = false;
			}
		}
	}

}