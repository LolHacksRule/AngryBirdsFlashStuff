package §+!u§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §-"i§.§5!o§;
   import §5"$§.§]!m§;
   
   public class §#"t§ extends §5!o§
   {
       
      
      public function §#"t§(param1:§#!?§, param2:§]#[§, param3:Boolean = true, param4:String = "tournamentCutscene")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function stopThemeMusic() : void
      {
         if(§]!m§.§3!]§.brandedTournamentAssetId != §]!m§.§`"#§)
         {
            super.stopThemeMusic();
         }
      }
      
      override protected function playIntroSound() : void
      {
         if(§]!m§.§3!]§.brandedTournamentAssetId == §]!m§.§`"#§)
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
         if(§]!m§.§3!]§.brandedTournamentAssetId == §]!m§.§`"#§)
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
