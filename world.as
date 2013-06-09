package
{
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Text;
	
	/**
	 * ...
	 * @author laras
	 */
	public class world extends World
	{
		
		private var listbg:Array = [0, 1, 2];
		private var trashbg:Array = [];
		private var randbg:Number = 0;
		private var countbg:Number = 0;
		
		private var imgwidth:Number = 3072;
		
		private var listpoint:Array = [0, 1, 2, 3, 4, 5];
		private var trashpoint:Array = [];
		private var randlist:Number = 0;
		private var countlist:Number = 0;
		private var totalcount:Number = 0;
		
		private var listgenangan:Array = [new level4_genanganair()];
		private var trashgenangan:Array = [];
		private var countgenangan:Number = 0;
		private var totalgenangan:Number = 0;
		
		private var createbg:Boolean = false;
		
		public function world()
		{
			globalvar.gamelevel = "mainmenu";
			globalvar.gameload = true;
		}
		
		override public function update():void
		{
			globalvar.snd_button.volume = 0.5;
			
			if (globalvar.gamelevel == "mainmenu")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					globalvar.gamepause = false;
					globalvar.keyboardtxt = "";
					add(new bg_start());
					add(new button_start(338, 600));
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "loginmenu")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new bg_login());
					//add(new textlogin("", 695, 265, 120));
					add(new textarea(560, 175));
					add(new keyboard_template(20, 500));
					add(new mousepoint());
					add(new button_login(645, 400));
					add(new button_home(800, 575));
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1tutorial")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					
					globalvar.gamepause = true;
					globalvar.stat_level1_list = [];
					
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan1")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan2")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan3")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan4")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan5")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan6")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan7")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1pertanyaan8")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level1_pertanyaan1());
					add(new button_home(825, 600));
					add(new randomjawabanlevel1(200, 475));
					add(new level1_review(765, 120));
					add(new img_fotolevel1(145, 145));
					add(new img_citrikpenjelasan_level1());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			
			if (globalvar.gamelevel == "level1berhasil")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new bg_level1benar());
					add(new button_level1kelevel2(285, 588));
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level1gagal")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new bg_level1salah());
					add(new button_level1cobalagi(100, 588));
					add(new button_level1berhenti(500, 588));
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2tutorial")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					
					globalvar.gamepause = true;
					globalvar.stat_level2_list = [];
					
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan1")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan2")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan3")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan4")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan5")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan6")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan7")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan8")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2pertanyaan9")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level2_bg());
					add(new button_home(800, 575));
					add(new randomjawabanlevel2(86, 124));
					add(new level2_review(634, 35));
					add(new img_citrikpenjelasan_level2());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2berhasil")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new bg_level1benar());
					add(new button_level2kelevel3(285, 588));
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level2gagal")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new bg_level1salah());
					add(new button_level2cobalagi(100, 588));
					add(new button_level2berhenti(500, 588));
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level3tutorial")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					globalvar.gamepause = false;
					add(new bg_level3tutorial());
					add(new button_level3tutorial(750, 462));
					add(new button_home(800, 575));
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level3main")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					
					globalvar.snd_lev3_sirine.stop();
					
					add(new bg_level3main());
					add(new level3_bgicon());
					add(new level3item1(725, 207));
					add(new level3item2(1016, 80));
					add(new level3item3(1920, 250));
					add(new level3item4(2761, 216));
					add(new level3item5(3574, 45));
					add(new level3item6(3968, 255));
					add(new level3item7(4541, 196));
					add(new level3item8(5294, 48));
					add(new level3_alarm(5517, 111));
					add(new level3statitem1(45, 630));
					add(new level3statitem2(152, 650));
					add(new level3statitem3(310, 650));
					add(new level3statitem4(425, 630));
					add(new level3statitem5(570, 630));
					add(new level3statitem6(666, 630));
					add(new level3statitem7(800, 625));
					add(new level3statitem8(930, 630));
					add(new level3_player());
					add(new lev3_checkcollide());
					add(new mousepoint());
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level4tutorial")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level4_tutorial());
					add(new button_lanjut_lev4tutorial(715, 650));
					add(new timer());
				
					globalvar.gameload = false;
				}
				
			}
			if (globalvar.gamelevel == "level4main")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					countbg = 0;
					globalvar.level4speed = globalvar.level4awalspeed;
					countgenangan = 0;
					add(new bg_level4main());
					//add(new bg_level4_1(0, 0));
					add(new level4_floor(0, 668));
					//add(new level4_wall(600, 470, 300));
					//add(new level4_genanganair(2000, 648));
					//add(new level4_listrik(1500, 300));
					add(new level4_player(150, 478));
					//add(new button_level4slow(100, 650));
					add(new button_level4jump(400, 600));
					add(new level4_point(450, 20));
					add(new button_home(850, 600));
					add(new timer());
					//add(new button_level4fast(700, 650));
					
					randbg = Math.floor(Math.random() * listbg.length);
					//add(listbg[randbg]);
					if (randbg == 0)
					{
						add(new bg_level4_1(0, 0));
					}
					if (randbg == 1)
					{
						add(new bg_level4_2(0, 0));
					}
					if (randbg == 2)
					{
						add(new bg_level4_3(0, 0));
					}
					
					totalcount = 50 + (Math.floor(Math.random() * 50));
					totalgenangan = 100 + (Math.floor(Math.random() * 100));
					
					globalvar.gameload = false;
				}
				
				countlist++;
				if (countlist == totalcount)
				{
					randlist = Math.floor(Math.random() * listpoint.length);
					
					if (randlist == 0)
					{
						add(new level4_batu(1200, 20 + (Math.floor(Math.random() * 400))));
					}
					if (randlist == 1)
					{
						add(new level4_batubesar(1200, 20 + (Math.floor(Math.random() * 400))));
					}
					if (randlist == 2)
					{
						add(new level4_batukecil(1200, 20 + (Math.floor(Math.random() * 400))));
					}
					if (randlist == 3)
					{
						add(new level4_colokan(1200, 20 + (Math.floor(Math.random() * 400))));
					}
					if (randlist == 4)
					{
						add(new level4_lampu(1200, 20 + (Math.floor(Math.random() * 400))));
					}
					if (randlist == 5)
					{
						add(new level4_listrik(1200, 20 + (Math.floor(Math.random() * 400))));
					}
					//trashpoint.push(listpoint[randlist]);
					
					//trashpoint[trashpoint.length-1].x = 1200;
					//trashpoint[trashpoint.length-1].y = 20 + (Math.floor(Math.random() * 400));
					
					totalcount = 50 + (Math.floor(Math.random() * 50));
					countlist = 0;
				}
				
				countgenangan++;
				if (countgenangan == totalgenangan)
				{
					add(new level4_genanganair());
					//listgenangan[0].x = 1200;
					//listgenangan[0].y = 648;
					
					totalgenangan = 100 + (Math.floor(Math.random() * 100));
					countgenangan = 0;
				}
				
				countbg += globalvar.level4speed;
				if (countbg == 2048)
				{
					//if (createbg == false)
					//{
					randbg = Math.floor(Math.random() * listbg.length);
					//add(listbg[randbg]);
					if (randbg == 0)
					{
						add(new bg_level4_1(1024, 0));
					}
					if (randbg == 1)
					{
						add(new bg_level4_2(1024, 0));
					}
					if (randbg == 2)
					{
						add(new bg_level4_3(1024, 0));
					}
					//listbg[randbg].x = trashbg[countbg - 1].x + imgwidth;
					//listbg[randbg].y = 0;
					
					//trashbg.push(listbg[randbg]);
					countbg = 0;
					
					
						//createbg = true;
					
				}
				
			}
			if (globalvar.gamelevel == "level4selamat")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level4print")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level4_score());
					FP.engine.root.stage.addChild(new printing);
					FP.engine.root.stage.addChild(new printhome);
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			if (globalvar.gamelevel == "level4score")
			{
				if (globalvar.gameload == true)
				{
					FP.world.removeAll();
					add(new level4_score());
					add(new button_home(800, 600));
					add(new timer());
					
					globalvar.gameload = false;
				}
			}
			super.update();
		
		}
	
	}

}