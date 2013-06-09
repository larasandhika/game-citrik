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
	public class button_C extends Entity 
	{
		private var glist:Graphiclist = new Graphiclist();
		
		[Embed(source="assets gray/LEVEL1/button jawaban_520_100.png")]
		private const bgbutton:Class;
		private var bg_button:Spritemap = new Spritemap (bgbutton, 520, 100);
		
		[Embed(source="assets gray/A_huruf.png")]
		private const ahuruf:Class;
		private var a_huruf:Image = new Image(ahuruf);
		
		[Embed(source="assets gray/B_huruf.png")]
		private const bhuruf:Class;
		private var b_huruf:Image = new Image(bhuruf);
		
		[Embed(source="assets gray/C_huruf.png")]
		private const churuf:Class;
		private var c_huruf:Image = new Image(churuf);
		
		private var pertanyaan:Text = new Text ("C. Jawaban");
		
		public function button_C() 
		{
			bg_button.add("up", [0], 5, true);
			bg_button.add("down", [1], 5, true);
			bg_button.play("up");
			
			glist.add(bg_button);
			
			pertanyaan.size = 20;
			pertanyaan.font = "myfont";
			pertanyaan.color = 0x804000;
			
			pertanyaan.x = 50;
			pertanyaan.y = 31;
			
			a_huruf.x = 20;
			a_huruf.y = 29;
			b_huruf.x = 20;
			b_huruf.y = 29;
			c_huruf.x = 20;
			c_huruf.y = 29;
			
			glist.add(pertanyaan);
			
			graphic = glist;
			setHitbox(520, 100);
		}
		override public function added():void 
		{
			if (y == 475)
			{
				glist.add(a_huruf);
			}
			else if (y == 565)
			{
				glist.add(b_huruf);
			}
			else if (y == 655)
			{
				glist.add(c_huruf);
			}
			
			if (globalvar.gamelevel == "level1tutorial")
			{
				//pertanyaan.text = "Rangkaian permainan";
				pertanyaan.text = "Membersihkan rumah";
			}
			if (globalvar.gamelevel == "level1pertanyaan1")
			{
				//pertanyaan.text = "Rangkaian permainan";
				pertanyaan.text = "Membersihkan rumah";
			}
			if (globalvar.gamelevel == "level1pertanyaan2")
			{
				pertanyaan.text = "Bel rumah";
			}
			if (globalvar.gamelevel == "level1pertanyaan3")
			{
				pertanyaan.text = "Peluit";
			}
			if (globalvar.gamelevel == "level1pertanyaan4")
			{
				pertanyaan.text = "Memutus masalah";
			}
			if (globalvar.gamelevel == "level1pertanyaan5")
			{
				pertanyaan.text = "Mengukur suhu badan";
			}
			if (globalvar.gamelevel == "level1pertanyaan6")
			{
				pertanyaan.text = "Memutus arus listrik";
			}
			if (globalvar.gamelevel == "level1pertanyaan7")
			{
				pertanyaan.text = "Lampu berkepang";
			}
			if (globalvar.gamelevel == "level1pertanyaan8")
			{
				pertanyaan.text = "Menjemur baju";
			}
			
			
			super.added();
		}
		override public function update():void
		{
			if (globalvar.gamepause == false)
			{
				if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					//bg_button.play("down");
					
				}
				//else
				//{
					//bg_button.play("up");
				//}
				
				if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY) && !collide("nextpertanyaan",x,y))
				{
					bg_button.play("down");
					globalvar.snd_button_salah.play();
					globalvar.snd_lev1_salah.play();
					globalvar.level1salah++;
					globalvar.gamepause = true;
					if (globalvar.gamelevel == "level1pertanyaan1")
					{
						globalvar.stat_level1_pertanyaan1 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan1());
					}
					if (globalvar.gamelevel == "level1pertanyaan2")
					{
						globalvar.stat_level1_pertanyaan2 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan2());
					}
					if (globalvar.gamelevel == "level1pertanyaan3")
					{
						globalvar.stat_level1_pertanyaan3 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan3());
					}
					if (globalvar.gamelevel == "level1pertanyaan4")
					{
						globalvar.stat_level1_pertanyaan4 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan4());
					}
					if (globalvar.gamelevel == "level1pertanyaan5")
					{
						globalvar.stat_level1_pertanyaan5 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan5());
					}
					if (globalvar.gamelevel == "level1pertanyaan6")
					{
						globalvar.stat_level1_pertanyaan6 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan6());
					}
					if (globalvar.gamelevel == "level1pertanyaan7")
					{
						globalvar.stat_level1_pertanyaan7 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan7());
					}
					if (globalvar.gamelevel == "level1pertanyaan8")
					{
						globalvar.stat_level1_pertanyaan8 = false;
						globalvar.stat_level1_list.push(new stat_level1pertanyaan8());
					}
					
					globalvar.reloadstat = true;
				}
				
				graphic.active = true;
				super.update();
			}
			if (globalvar.gamepause == true)
			{
				graphic.active = false;
			}
		}
	}

}