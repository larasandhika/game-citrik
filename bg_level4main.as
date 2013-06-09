package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class bg_level4main extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		//private var listbg:Array = [new bg_level4_1(), new bg_level4_2(), new bg_level4_3()];
		private var trashbg:Array = [];
		private var randbg:Number = 0;
		private var countbg:Number = 0;
		
		private var imgwidth:Number = 3072;
		
		//private var listpoint:Array = [new level4_batu(), new level4_batubesar(), new level4_batukecil(), new level4_colokan(), new level4_lampu(), new level4_listrik()];
		private var randlist:Number = 0;
		private var countlist:Number = 0;
		private var totalcount:Number = 0;
		
		private var listgenangan:Array = [new level4_genanganair()];
		private var countgenangan:Number = 0;
		private var totalgenangan:Number = 0;
		
		private var createbg:Boolean = false;
		
		public function bg_level4main() 
		{
			
		}
		
		override public function added():void 
		{
			globalvar.snd_lev4_backsound.loop();
			
			super.added();
		}
		
		override public function update():void 
		{
			
			
			super.update();
		}
		
	}

}