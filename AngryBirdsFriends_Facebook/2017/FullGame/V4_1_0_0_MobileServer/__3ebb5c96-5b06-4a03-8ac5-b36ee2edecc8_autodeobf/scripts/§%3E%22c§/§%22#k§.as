package §>"c§
{
   import §&$!§.§+#!§;
   import §8"X§.§1!a§;
   import §@#§.§^#Q§;
   import §];§.§-!t§;
   
   public class §"#k§ extends §1!a§
   {
       
      
      public function §"#k§(param1:§^#Q§, param2:§+#!§, param3:Boolean = true, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function stopThemeMusic() : void
      {
         if(§-!t§.§ "D§.brandedTournamentAssetId != §-!t§.§5#O§)
         {
            super.stopThemeMusic();
         }
      }
      
      override protected function playIntroSound() : void
      {
         if(§-!t§.§ "D§.brandedTournamentAssetId == §-!t§.§5#O§)
         {
            AngryBirdsBase.singleton.playThemeMusic();
         }
         else
         {
            super.playIntroSound();
         }
      }
      
      override protected function playOutroSound() : void
      {
         if(§-!t§.§ "D§.brandedTournamentAssetId == §-!t§.§5#O§)
         {
            AngryBirdsBase.singleton.playThemeMusic();
         }
         else
         {
            super.playOutroSound();
         }
      }
   }
}
