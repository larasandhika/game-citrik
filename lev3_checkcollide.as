package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author laras
	 */
	public class lev3_checkcollide extends Entity 
	{
		
		public function lev3_checkcollide() 
		{
			setHitbox(1024, 601);
		}
		
		override public function update():void 
		{
			var point:mousepoint = FP.world.classFirst(mousepoint) as mousepoint;
			
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY) && !point.onselectitem && globalvar.level3stopmove == false)
			{
				globalvar.snd_lev3_salah.play();
			}
			super.update();
		}
	}

}