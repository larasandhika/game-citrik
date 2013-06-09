package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class keyboard_template extends Entity 
	{
		[Embed(source="assets gray/MASUK NAMA/bg keyboard.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		private var list1:Array = [new key_Q(), new key_W(), new key_E(), new key_R(), new key_T(), new key_Y(), new key_U(), new key_I(), new key_O(), new key_P()];
		private var list2:Array = [new key_A(), new key_S(), new key_D(), new key_F(), new key_G(), new key_H(), new key_J(), new key_K(), new key_L()];
		private var list3:Array = [new key_Z(), new key_X(), new key_C(), new key_V(), new key_B(), new key_N(), new key_M(), new key_BACKSPACE()];
		private var list4:Array = [new key_SPACE()];
		
		private var setY:Number = 0;
		
		public function keyboard_template(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
			setY = y;
			
			img.scaleX = 1.05;
			
			graphic = img;
		}
		
		override public function added():void 
		{
			for (var a:int = 0; a < list1.length; a++)
			{
				FP.world.add(list1[a]);
				list1[a].x = x + (15 + (55 * a));
				list1[a].y = y + 17;
			}
			for (var b:int = 0; b < list2.length; b++)
			{
				FP.world.add(list2[b]);
				list2[b].x = x + (35 + (55 * b));
				list2[b].y = y + 72;
			}
			for (var c:int = 0; c < list3.length; c++)
			{
				FP.world.add(list3[c]);
				list3[c].x = x + (55 + (55 * c));
				list3[c].y = y + 127;
			}
			for (var d:int = 0; d < list4.length; d++)
			{
				FP.world.add(list4[d]);
				list4[d].x = x + (105 + (55 * d));
				list4[d].y = y + 182;
			}
			super.added();
		}
		
		override public function update():void 
		{
			if (globalvar.keyboardvisible == true)
			{
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