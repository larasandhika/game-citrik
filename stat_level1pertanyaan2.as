package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Graphiclist;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	
	/**
	 * ...
	 * @author laras
	 */
	public class stat_level1pertanyaan2 extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/thumnail_foto_samping_level1.png")]
		private const startbutton:Class;
		private var start_button:Image = new Image (startbutton);
		
		[Embed(source="assets gray/resize thumbnail level_1/baru 4nt.png")]
		private const saklaricon:Class;
		private var saklar_icon:Image = new Image (saklaricon);
		
		[Embed(source="assets gray/LEVEL1/listrik benar salah_level1_58_83.png")]
		private const _status:Class;
		private var status:Spritemap = new Spritemap(_status, 58, 83);
		
		
		[Embed(source="assets gray/right_sign_level1.png")]
		private const rightsign_level1:Class;
		private var stat_benar:Image = new Image (rightsign_level1);
		
		[Embed(source="assets gray/wrong_sign_level1.png")]
		private const wrongsign_level1:Class;
		private var stat_salah:Image = new Image(wrongsign_level1);
		
		public function stat_level1pertanyaan2() 
		{
			type = "statpertanyaan";
			//x = _x,
			//y = _y;
			
			status.add("benar", [0], 5, true);
			status.add("salah", [1], 5, true);
			
			glist.add(status);
			
			glist.add(start_button);
			glist.add(saklar_icon);
			
			stat_benar.x = 100;
			stat_salah.x = 100;
			
			status.x = 100;
			
			saklar_icon.x = 5;
			saklar_icon.y = 7;
			
			graphic = glist;
			setHitbox(100, 40);
		}
		
		override public function added():void 
		{
			
			
			if (globalvar.stat_level1_pertanyaan2 == true)
			{
				//glist.add(stat_benar);
				status.play("benar");
			}
			else
			{
				//glist.add(stat_salah);
				status.play("salah");
			}
			super.added();
		}
		
	}

}