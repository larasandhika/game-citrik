package  
{
	import flash.events.FocusEvent;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import punk.ui.PunkTextField;
	
	
	/**
	 * ...
	 * @author laras
	 */
	public class textlogin extends PunkTextField
	{
		private var txt:Text;
		private var txtstring:String;
		private var reading:Boolean;
		
		private var addone:Boolean;
		
		public function textlogin(_text:String = "", _x:Number = 0, _y:Number = 0, _width:Number = 0)
		{
			reading = false;
			txtstring = _text;
			txt = new Text(txtstring);
			x = _x;
			y = _y;
			width = _width;
			
			super(txtstring, x, y, width);
			
		}
		
		override public function added():void 
		{
			
			super.added();
		}
		
		override public function update():void 
		{
			
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				reading = true;
			}
			if (Input.mousePressed && !collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				reading = false;
			}
			
			if (reading == true)
			{
				txt.text = Input.keyString;
			}
			
			if (reading == false)
			{
				Input.keyString = txt.text;
			}
			
			globalvar.namapemain = txt.text;
			
			super.update();
		}
		
	}

}