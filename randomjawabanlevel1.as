package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author laras
	 */
	public class randomjawabanlevel1 extends Entity
	{
		private var list:Array = [new button_A(), new button_B(), new button_C()];
		private var rand:Number = 0;
		
		public function randomjawabanlevel1(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
		}
		
		override public function added():void 
		{
			for (var i:int = 0; i < 3; i++)
			{
				if (globalvar.gamelevel == "level1pertanyaan1" || globalvar.gamelevel == "level1tutorial")
				{
					rand = 0;
				}
				else
				{
					rand = Math.floor(Math.random() * list.length);
				}
				
				FP.world.add(list[rand]);
				list[rand].x = x;
				list[rand].y = y + (i * 90);
				list.splice(rand, 1);
			}
			super.added();
		}
		
	}

}