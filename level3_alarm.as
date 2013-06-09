package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level3_alarm extends Entity 
	{
		[Embed(source="assets gray/LEVEL3/sirine alarm_200_200.png")]
		private const _alarm:Class;
		private var spr_alarm:Spritemap = new Spritemap(_alarm, 200, 200);
		
		private var countdownpause:Number = 0;
		
		public function level3_alarm(_x:Number, _y:Number) 
		{
			
			x = _x;
			y = _y;
			
			spr_alarm.add("diam", [0], 5, true);
			spr_alarm.add("bunyi", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19], 5, true);
			spr_alarm.play("diam");
			
			graphic = spr_alarm;
		}
		
		override public function update():void 
		{
			countdownpause++
			if (countdownpause >= 90)
			{
				if (globalvar.level3stopmove == false)
				{
					x -= globalvar.level3speed;
				}
		
				
				if (globalvar.level3countcheckitem < globalvar.level3totalcheckitem && globalvar.level3stopmove == true)
				{
					globalvar.snd_lev3_gagal.play();
					spr_alarm.play("bunyi");
					
					if (!globalvar.snd_lev3_sirine.playing)
					{
						globalvar.snd_lev3_sirine.loop();
					}
					
				}
			}
			
			super.update();
		}
		
	}

}