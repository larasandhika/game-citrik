package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author Satya Dwi Anggiawan
	 */
	public class level2_review extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL2/Box hasil jawaban.png")]
		private const pointblank:Class;
		private var point_blank:Image = new Image (pointblank);
		
		private var point_array:Array = [new Image (pointblank), new Image (pointblank), new Image (pointblank), new Image (pointblank), new Image (pointblank)];
		
		public function level2_review(_x:Number, _y:Number) 
		{
			graphic = glist;
			
			x = _x;
			y = _y;
			
		}
		
		override public function added():void 
		{
			for (var i : int = 0; i < 5;i++ )
			{
				glist.add(point_array[i]);
				point_array[i].x = i * 75;
			}
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
			
			for (var i:int = 0; i < globalvar.stat_level2_list.length; i++)
			{
				if (i == 0)
				{
					FP.world.add(globalvar.stat_level2_list[i]);
					globalvar.stat_level2_list[i].x = this.x;
					globalvar.stat_level2_list[i].y = this.y;
				}
				if (i == 1)
				{
					FP.world.add(globalvar.stat_level2_list[i]);
					globalvar.stat_level2_list[i].x = this.x + 75;
					globalvar.stat_level2_list[i].y = this.y;
				}
				if (i == 2)
				{
					FP.world.add(globalvar.stat_level2_list[i]);
					globalvar.stat_level2_list[i].x = this.x + 150;
					globalvar.stat_level2_list[i].y = this.y;
				}
				if (i == 3)
				{
					FP.world.add(globalvar.stat_level2_list[i]);
					globalvar.stat_level2_list[i].x = this.x + 225;
					globalvar.stat_level2_list[i].y = this.y;
				}
				if (i == 4)
				{
					FP.world.add(globalvar.stat_level2_list[i]);
					globalvar.stat_level2_list[i].x = this.x + 300;
					globalvar.stat_level2_list[i].y = this.y;
				}
			}
		}
		
	}

}