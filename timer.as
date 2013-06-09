package  
{
	import net.flashpunk.Entity;
	
	/**
	 * ...
	 * @author laras
	 */
	public class timer extends Entity 
	{
		private var countdown:Number = 27000;
		
		public function timer() 
		{
			
		}
		override public function update():void 
		{
			countdown--;
			
			if (countdown <= 0)
			{
				globalvar.gamelevel = "mainmenu";
				globalvar.gameload = true;
				globalvar.snd_berhasil.stop();
				globalvar.snd_button.stop();
				globalvar.snd_button_benar.stop();
				globalvar.snd_button_salah.stop();
				globalvar.snd_gagal.stop();
				globalvar.snd_lev1_benar.stop();
				globalvar.snd_lev1_kabellistrik.stop();
				globalvar.snd_lev1_lampuhemat.stop();
				globalvar.snd_lev1_meteranlistrik.stop();
				globalvar.snd_lev1_saklar.stop();
				globalvar.snd_lev1_salah.stop();
				globalvar.snd_lev1_sekering.stop();
				globalvar.snd_lev1_siklustertutup.stop();
				globalvar.snd_lev1_stabilizer.stop();
				globalvar.snd_lev1_steker.stop();
				globalvar.snd_lev2_airdekatlistrik.stop();
				globalvar.snd_lev2_airdekatlistrik_2.stop();
				globalvar.snd_lev2_bayi.stop();
				globalvar.snd_lev2_berenang.stop();
				globalvar.snd_lev2_colokan.stop();
				globalvar.snd_lev2_layang.stop();
				globalvar.snd_lev2_memanjatpohon.stop();
				globalvar.snd_lev2_oloran.stop();
				globalvar.snd_lev2_sambunganbanyak.stop();
				globalvar.snd_lev3_backsound.stop();
				globalvar.snd_lev3_benar.stop();
				globalvar.snd_lev3_salah.stop();
				globalvar.snd_lev3_sirine.stop();
				globalvar.snd_lev3_tutorial.stop();
				globalvar.snd_lev4_backsound.stop();
				globalvar.snd_lev4_penj.stop();
				globalvar.snd_login.stop();
				globalvar.snd_penj_lev1.stop();
				globalvar.snd_penj_level2.stop();
				globalvar.snd_selamat.stop();
			}
			super.update();
		}
		
	}

}