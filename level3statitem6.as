package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author laras
	 */
	public class level3statitem6 extends Entity 
	{
		[Embed(source="assets gray/icon level3_small/TV.png")]
		private const _img:Class;
		private var img:Image = new Image(_img);
		
		[Embed(source="assets gray/right_sign_level1.png")]
		private const _right:Class;
		private var imgright:Image = new Image(_right);
		
		private var glist:Graphiclist = new Graphiclist();
		
		public function level3statitem6(_x:Number, _y:Number) 
		{
			glist.add(img);
			glist.add(imgright);
			
			imgright.visible = false;
			imgright.scale = .6;
			img.scale = .7;
			
			x = _x;
			y = _y;
			
			graphic = glist;
		}
		
		override public function update():void 
		{
			if (globalvar.level3checkitem6 == false)
			{
				imgright.visible = false;
			}
			else
			{
				imgright.visible = true;
			}
			
			super.update();
		}
		
	}

}