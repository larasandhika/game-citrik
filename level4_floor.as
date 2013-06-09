package  
{
	import net.flashpunk.Entity;
	
	/**
	 * ...
	 * @author Satya Dwi Anggiawan
	 */
	public class level4_floor extends Entity 
	{
		
		public function level4_floor(_x:Number, _y:Number) 
		{
			x = _x;
			y = _y;
			
			setHitbox(1024, 200);
			type = "floor";
		}
		
	}

}