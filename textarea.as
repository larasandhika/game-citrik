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
	 * @author racoongames
	 */
	public class textarea extends Entity 
	{
		[Embed(source="assets gray/MASUK NAMA/tempat nama_390_100.png")]
		private const _img:Class;
		private var img:Spritemap = new Spritemap(_img, 390, 100);
		
		private var txt:Text = new Text("TEKAN DISINI");
		private var glist:Graphiclist = new Graphiclist();
		
		public function textarea(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
			img.add("off", [0], 5, true);
			img.add("on", [1], 5, true);
			img.play("off");
			
			glist.add(img);
			glist.add(txt);
			
			txt.wordWrap = true;
			txt.width = 400;
			txt.height = 2000;
			txt.align = "center";
			txt.x = -5;
			txt.y = 33;
			txt.size = 30;
			txt.font = "myfont";
			txt.color = 0xC0C0C0;
			
			graphic = glist;
			setHitbox(390, 100);
		}
		
		override public function update():void 
		{
			if (globalvar.keyboardvisible == true)
			{
				txt.color = 0x000000;
				txt.text = globalvar.keyboardtxt;
			}
			else
			{
				if (globalvar.keyboardtxt != "")
				{
					txt.color = 0x000000;
					txt.text = globalvar.keyboardtxt;
				}
				else
				{
					txt.color = 0xC0C0C0;
					txt.text = "TEKAN DISINI";
				}
			}
			
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				globalvar.snd_button.play();
				globalvar.keyboardvisible = true;
				img.play("on");
				
			}
			
			var point:mousepoint = FP.world.classFirst(mousepoint) as mousepoint;
			if (Input.mousePressed && !collidePoint(x, y, Input.mouseX, Input.mouseY) && !point.onselectkey)
			{
				globalvar.keyboardvisible = false;
				img.play("off");
			}
			super.update();
		}
		
	}

}