package  
{
	import net.flashpunk.Sfx;
	
	/**
	 * ...
	 * @author laras
	 */
	public class globalvar 
	{
		[Embed(source="assets gray/anjaeliane.ttf", embedAsCFF = "false", fontFamily = 'myfont')]
		public const _myfont:Class;
		
		[Embed(source="assets gray/sound/musik pengiring dan button/Musik Awal.mp3")]
		public static const _snd_awal:Class;
		public static var snd_awal:Sfx = new Sfx(_snd_awal);
		
		[Embed(source="assets gray/sound/musik pengiring dan button/Button.mp3")]
		public static const _snd_button:Class;
		public static var snd_button:Sfx = new Sfx(_snd_button);
		
		[Embed(source="assets gray/sound/musik pengiring dan button/Button benar.mp3")]
		public static const _snd_button_benar:Class;
		public static var snd_button_benar:Sfx = new Sfx(_snd_button_benar);
		
		[Embed(source="assets gray/sound/musik pengiring dan button/Button Salah.mp3")]
		public static const _snd_button_salah:Class;
		public static var snd_button_salah:Sfx = new Sfx(_snd_button_salah);
		
		[Embed(source="assets gray/sound/musik pengiring dan button/Berhasil Melewati Level.mp3")]
		public static const _snd_berhasil:Class;
		public static var snd_berhasil:Sfx = new Sfx(_snd_berhasil);
		
		[Embed(source="assets gray/sound/musik pengiring dan button/Gagal Melewati Level.mp3")]
		public static const _snd_gagal:Class;
		public static var snd_gagal:Sfx = new Sfx(_snd_gagal);
		
		[Embed(source="assets gray/sound/musik pengiring dan button/Musik Pengiring level 3.mp3")]
		public static const _snd_lev3:Class;
		public static var snd_lev3_backsound:Sfx = new Sfx(_snd_lev3);
		
		[Embed(source="assets gray/sound/musik pengiring dan button/pengiring level 4.mp3")]
		public static const _snd_lev4:Class;
		public static var snd_lev4_backsound:Sfx = new Sfx(_snd_lev4);
		
		[Embed(source="assets gray/sound/login/ucik_login.mp3")]
		public static const soundlogin:Class;
		public static var snd_login:Sfx = new Sfx (soundlogin);
		
		[Embed(source="assets gray/sound/level 1/penjelasan level 1.mp3")]
		public static const sound_:Class;
		public static var snd_penj_lev1:Sfx = new Sfx(sound_);
		
		[Embed(source="assets gray/sound/level 1/benar.mp3")]
		public static const _snd_benar1:Class;
		public static var snd_lev1_benar:Sfx = new Sfx(_snd_benar1);
		
		[Embed(source="assets gray/sound/level 1/bukan.mp3")]
		public static const _snd_salah1:Class;
		public static var snd_lev1_salah:Sfx = new Sfx(_snd_salah1);
		
		[Embed(source="assets gray/sound/level 1/snd_lev1_cjw.mp3")]
		public static const snd_lev1_cjw1:Class;
		public static var snd_lev1_cjw:Sfx = new Sfx(snd_lev1_cjw1);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_siklustertutup.mp3")]
		public static const snd_lev1_1:Class;
		public static var snd_lev1_siklustertutup:Sfx = new Sfx(snd_lev1_1);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_saklar.mp3")]
		public static const snd_lev1_2:Class;
		public static var snd_lev1_saklar:Sfx = new Sfx (snd_lev1_2);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_steker.mp3")]
		public static const snd_lev1_3:Class;
		public static var snd_lev1_steker:Sfx = new Sfx(snd_lev1_3);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_sekering.mp3")]
		public static const snd_lev1_4:Class;
		public static var snd_lev1_sekering:Sfx = new Sfx(snd_lev1_4);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_meteranlistrik.mp3")]
		public static const snd_lev1_5:Class;
		public static var snd_lev1_meteranlistrik:Sfx = new Sfx(snd_lev1_5);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_stabilizer.mp3")]
		public static const snd_lev1_6:Class;
		public static var snd_lev1_stabilizer:Sfx = new Sfx(snd_lev1_6);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_lampuhematenergi.mp3")]
		public static const snd_lev1_7:Class;
		public static var snd_lev1_lampuhemat:Sfx = new Sfx (snd_lev1_7);
		
		[Embed(source="assets gray/sound/level 1/level1_penj_kabel listrik.mp3")]
		public static const snd_lev1_8:Class;
		public static var snd_lev1_kabellistrik:Sfx = new Sfx(snd_lev1_8);
		
		[Embed(source="assets gray/sound/level 2/penjelasan level 2.mp3")]
		public static const _snd_penj_level2:Class;
		public static var snd_penj_level2:Sfx = new Sfx(_snd_penj_level2);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_layang-layang.mp3")]
		public static const snd_lev2_1:Class;
		public static var snd_lev2_layang:Sfx = new Sfx(snd_lev2_1);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_pohon.mp3")]
		public static const snd_lev2_2:Class;
		public static var snd_lev2_memanjatpohon:Sfx = new Sfx(snd_lev2_2);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_petir.mp3")]
		public static const snd_lev2_3:Class;
		public static var snd_lev2_berenang:Sfx = new Sfx(snd_lev2_3);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_air dekat listrik.mp3")]
		public static const snd_lev2_4:Class;
		public static var snd_lev2_airdekatlistrik:Sfx = new Sfx(snd_lev2_4);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_banyak steker.mp3")]
		public static const snd_lev2_5:Class;
		public static var snd_lev2_colokan:Sfx = new Sfx(snd_lev2_5);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_colokan trhdp anak.mp3")]
		public static const snd_lev2_6:Class;
		public static var snd_lev2_bayi:Sfx = new Sfx(snd_lev2_6);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_mengolor kabel.mp3")]
		public static const snd_lev2_7:Class;
		public static var snd_lev2_oloran:Sfx = new Sfx(snd_lev2_7);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_sambungan listrik.mp3")]
		public static const snd_lev2_8:Class;
		public static var snd_lev2_sambunganbanyak:Sfx = new Sfx(snd_lev2_8);
		
		[Embed(source="assets gray/sound/level 2/level2_penj_air dekat listrik.mp3")]
		public static const snd_lev2_9:Class;
		public static var snd_lev2_airdekatlistrik_2:Sfx = new Sfx(snd_lev2_9);
		
		[Embed(source="assets gray/sound/level 3/level3_klik pada gambar.mp3")]
		public static const snd_lev3_klik_:Class;
		public static var snd_lev3_klikpada:Sfx = new Sfx(snd_lev3_klik_);
		
		[Embed(source="assets gray/sound/level 3/level3_snd_gagal.mp3")]
		public static const snd_lev3_gagal_:Class;
		public static var snd_lev3_gagal:Sfx = new Sfx(snd_lev3_gagal_);
	
		[Embed(source="assets gray/sound/level 3/ucik-level3-tutorial.mp3")]
		public static const _sndlev3:Class;
		public static var snd_lev3_tutorial:Sfx = new Sfx(_sndlev3);
		
		[Embed(source="assets gray/sound/level 3/ucik_level3_yabenar.mp3")]
		public static const _snd_lev3benar:Class;
		public static var snd_lev3_benar:Sfx = new Sfx(_snd_lev3benar);
		
		[Embed(source="assets gray/sound/level 3/ucik_level3-bukanitu.mp3")]
		public static const _snd_lev3salah:Class;
		public static var snd_lev3_salah:Sfx = new Sfx(_snd_lev3salah);
		
		[Embed(source="assets gray/sound/level 4/penjelasan level 4.mp3")]
		public static const _snd_penj_lev4:Class;
		public static var snd_lev4_penj:Sfx = new Sfx(_snd_penj_lev4);
		
		[Embed(source="assets gray/sound/selamat/ucik_selamat.mp3")]
		public static const _snd_selamat:Class;
		public static var snd_selamat:Sfx = new Sfx(_snd_selamat);
		
		[Embed(source="assets gray/sound/level 3/sirine.mp3")]
		public static const _sirine:Class;
		public static var snd_lev3_sirine:Sfx = new Sfx(_sirine);
		
		public static var gamelevel:String = "";
		public static var gameload:Boolean = false;
		public static var namapemain:String = "";
		public static var gamepause:Boolean = false;
		
		public static var reloadstat:Boolean = false;
		public static var keyboardtxt:String = "";
		public static var keyboardvisible:Boolean = false;
		
		//properties level 1
		public static var totallevel1:Number = 0;
		
		public static var list_pertanyaan_level1:Array = ["level1pertanyaan1", "level1pertanyaan2", "level1pertanyaan3", "level1pertanyaan4","level1pertanyaan5","level1pertanyaan6","level1pertanyaan7","level1pertanyaan8"];
		public static var editlist_pertanyaan_level1:Array = [];
		
		public static var stat_level1_list:Array = [];
		
		public static var stat_level1_pertanyaan1:Boolean = false;
		public static var stat_level1_pertanyaan2:Boolean = false;
		public static var stat_level1_pertanyaan3:Boolean = false;
		public static var stat_level1_pertanyaan4:Boolean = false;
		public static var stat_level1_pertanyaan5:Boolean = false;
		public static var stat_level1_pertanyaan6:Boolean = false;
		public static var stat_level1_pertanyaan7:Boolean = false;
		public static var stat_level1_pertanyaan8:Boolean = false;
		
		public static var level1benar:Number = 0;
		public static var level1salah:Number = 0;
		
		//properties level 2
		public static var totallevel2:Number = 0;
		
		public static var list_pertanyaan_level2:Array = ["level2pertanyaan1", "level2pertanyaan2", "level2pertanyaan3", "level2pertanyaan4", "level2pertanyaan5", "level2pertanyaan6", "level2pertanyaan7", "level2pertanyaan8", "level2pertanyaan9" ];
		public static var editlist_pertanyaan_level2:Array = [];
		
		public static var stat_level2_list:Array = [];
		
		public static var stat_level2_pertanyaan1:Boolean = false;
		public static var stat_level2_pertanyaan2:Boolean = false;
		public static var stat_level2_pertanyaan3:Boolean = false;
		public static var stat_level2_pertanyaan4:Boolean = false;
		public static var stat_level2_pertanyaan5:Boolean = false;
		public static var stat_level2_pertanyaan6:Boolean = false;
		public static var stat_level2_pertanyaan7:Boolean = false;
		public static var stat_level2_pertanyaan8:Boolean = false;
		public static var stat_level2_pertanyaan9:Boolean = false;
		
		public static var level2benar:Number = 0;
		public static var level2salah:Number = 0;
		
		//properties level 3
		public static var level3changelocation:Number = 0;
		public static var level3glow:Boolean = false;
		
		public static var level3checkitem1:Boolean = false;
		public static var level3checkitem2:Boolean = false;
		public static var level3checkitem3:Boolean = false;
		public static var level3checkitem4:Boolean = false;
		public static var level3checkitem5:Boolean = false;
		public static var level3checkitem6:Boolean = false;
		public static var level3checkitem7:Boolean = false;
		public static var level3checkitem8:Boolean = false;
		
		public static var level3totalcheckitem:Number = 8;
		public static var level3countcheckitem:Number = 0;
		
		public static var level3speed:Number = 4;
		public static var level3try:Boolean = false;
		public static var level3stopmove:Boolean = false;
		
		//properties level 4
		public static var level4tutorial:Boolean = false;
		public static var level4player:level4_player;
		
		public static var level4point:Number = 0;
		
		public static var level4awalspeed:Number = 4;
		public static var level4speed:Number = 4;
		
		public static var movingplayer:Number = 0;
		public static var playercheckfast:Boolean = false;
		public static var playercheckslow:Boolean = false;
		public static var playercheckjump:Boolean = false;
		
		public static var playeronjump:Boolean = false;
	}

}