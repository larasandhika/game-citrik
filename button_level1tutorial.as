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
	public class button_level1tutorial extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/tombol lanjutkan_185_75.png")]
		private const startbutton:Class;
		private var start_button:Spritemap = new Spritemap (startbutton, 185, 75);
		
		private var rand:Number = 0;
		
		public function button_level1tutorial(_x:Number, _y:Number) 
		{
			layer = -2;
			type = "nextpertanyaan";
			x = _x,
			y = _y;
			
			glist.add(start_button);
			start_button.add("up", [0], 5, true);
			start_button.add("down", [1], 5, true);
			start_button.play("up");
			
			
			graphic = glist;
			setHitbox(185, 75);
		}
		
		override public function added():void 
		{
			
			globalvar.editlist_pertanyaan_level1 = [];
			globalvar.editlist_pertanyaan_level1 = globalvar.list_pertanyaan_level1.slice();
			globalvar.stat_level1_list = [];
			globalvar.totallevel1 = 0;
			globalvar.level1benar = 0;
			globalvar.level1salah = 0;
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
				rand = 0;
				globalvar.gamelevel = globalvar.editlist_pertanyaan_level1[rand];
				globalvar.gameload = true;
				globalvar.editlist_pertanyaan_level1.splice(rand, 1);
				globalvar.totallevel1++;
				globalvar.gamepause = false;
			}
			super.update();
		}
		
	}

}