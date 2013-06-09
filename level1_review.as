package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	
	/**
	 * ...
	 * @author Satya Dwi Anggiawan
	 */
	public class level1_review extends Entity 
	{
		
		public function level1_review(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
		}
		
		override public function added():void 
		{
			reload();
			super.added();
		}
		
		override public function update():void 
		{
			if (globalvar.reloadstat == true)
			{
				reload();
				globalvar.reloadstat = false;
			}
			super.update();
		}
		
		public function reload():void
		{
			var list:Array = [];
			FP.world.getType("statpertanyaan", list);
			FP.world.removeList(list);
			
			for (var i:int = 0; i < globalvar.stat_level1_list.length; i++)
			{
				if (i == 0)
				{
					FP.world.add(globalvar.stat_level1_list[i]);
					globalvar.stat_level1_list[i].x = this.x;
					globalvar.stat_level1_list[i].y = this.y;
				}
				if (i == 1)
				{
					FP.world.add(globalvar.stat_level1_list[i]);
					globalvar.stat_level1_list[i].x = this.x;
					globalvar.stat_level1_list[i].y = this.y + 80;
				}
				if (i == 2)
				{
					FP.world.add(globalvar.stat_level1_list[i]);
					globalvar.stat_level1_list[i].x = this.x;
					globalvar.stat_level1_list[i].y = this.y + 160;
				}
				if (i == 3)
				{
					FP.world.add(globalvar.stat_level1_list[i]);
					globalvar.stat_level1_list[i].x = this.x;
					globalvar.stat_level1_list[i].y = this.y + 240;
				}
				if (i == 4)
				{
					FP.world.add(globalvar.stat_level1_list[i]);
					globalvar.stat_level1_list[i].x = this.x;
					globalvar.stat_level1_list[i].y = this.y + 320;
				}
			}
		}
		
	}

}