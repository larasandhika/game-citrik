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
	public class button_level3tutorial extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/tombol lanjutkan_185_75.png")]
		private const startbutton:Class;
		private var start_button:Spritemap = new Spritemap (startbutton, 185, 75);
		
		//private var txtstart:Text = new Text ("LANJUTKAN");
		
		private var rand:Number = 0;
		private var count:Number = 0;
		
		public function button_level3tutorial(_x:Number, _y:Number) 
		{
			layer = -2;
			x = _x,
			y = _y;
			
			glist.add(start_button);
			start_button.add("up", [0], 5, true);
			start_button.add("down", [1], 5, true);
			start_button.play("up");
			
			//glist.add(txtstart);
			
			graphic = glist;
			setHitbox(185, 75);
		}
		
		override public function added():void 
		{
			globalvar.level3checkitem1 = false;
			globalvar.level3checkitem2 = false;
			globalvar.level3checkitem3 = false;
			globalvar.level3checkitem4 = false;
			globalvar.level3checkitem5 = false;
			globalvar.level3checkitem6 = false;
			globalvar.level3checkitem7 = false;
			globalvar.level3checkitem8 = false;
			
			globalvar.level3countcheckitem = 0;
			
			globalvar.level3try = false;
			globalvar.level3stopmove = false;
			
			super.added();
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
				globalvar.gamelevel = "level3main";
				globalvar.gameload = true;
				if (globalvar.snd_lev3_tutorial.playing)
				{
					globalvar.snd_lev3_tutorial.stop();
				}
				
				globalvar.snd_lev3_klikpada.play();
				globalvar.level3stopmove = false;
				if (!globalvar.snd_lev3_klikpada.playing)
				{
					globalvar.level3stopmove = true;
				}
				
				
				
			}
			super.update();
		}
		
	}

}