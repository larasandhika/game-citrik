package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author racoongames
	 */
	public class key_SPACE extends Entity 
	{
		[Embed(source="assets gray/MASUK NAMA/keyboard space.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		private var txt:Text = new Text("SPACE");
		private var glist:Graphiclist = new Graphiclist();
		
		private var setY:Number = 0;
		
		public function key_SPACE() 
		{
			type = "keyboard";
			
			txt.size = 30;
			txt.font = "myfont";
			txt.color = 0x000000;
			
			txt.x = 45;
			txt.y = 8;
			
			graphic = glist;
			
			glist.add(img);
			glist.add(txt);
			
			setHitbox(192, 50);
		}
		
		override public function added():void 
		{
			setY = y;
			super.added();
		}
		
		override public function update():void 
		{
			if (globalvar.keyboardvisible == true)
			{
				if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					globalvar.snd_button.play();
					globalvar.keyboardtxt += " ";
				}
			if (y > setY)
				{
					y -= 20;
				}
				if (y <= setY)
				{
					y = setY;
				}
			}
			else
			{
				if (y < 1024)
				{
					y += 20;
				}
				if (y >= 1024)
				{
					y = 1024;
				}
			}
			super.update();
		}
		
	}

}