package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author laras
	 */
	public class randomjawabanlevel2 extends Entity
	{
		private var list:Array = [new button_level2_2(), new button_level2_1()];
		private var rand:Number = 0;
		
		public function randomjawabanlevel2 (_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
		}
		
		override public function added():void 
		{
			for (var i:int = 0; i < 2; i++)
			{
				if (globalvar.gamelevel == "level2pertanyaan7" || globalvar.gamelevel == "level2tutorial" )
				{
					rand = 0;
				}
				else
				{
					rand = Math.floor(Math.random() * list.length);
				}
				
				FP.world.add(list[rand]);
				list[rand].x = x + (i * 487);
				list[rand].y = y;
				list.splice(rand, 1);
			}
			super.added();
		}
		
	}

}