package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author racoongames
	 */
	public class mousepoint extends Entity 
	{
		public var onselectkey:Boolean = false;
		public var onselectitem:Boolean = false;
		
		public function mousepoint() 
		{
			
			setHitbox(1, 1);
		}
		
		override public function update():void 
		{
			this.x = Input.mouseX;
			this.y = Input.mouseY;
			
			if (globalvar.gamelevel == "loginmenu")
			{
				if (collide("keyboard", x, y))
				{
					onselectkey = true;
				}
				else
				{
					onselectkey = false;
				}
			}
			if (globalvar.gamelevel == "level3main")
			{
				if (collide("item", x, y))
				{
					onselectitem = true;
				}
				else
				{
					onselectitem = false;
				}
			}
			
			super.update();
		}
		
	}

}