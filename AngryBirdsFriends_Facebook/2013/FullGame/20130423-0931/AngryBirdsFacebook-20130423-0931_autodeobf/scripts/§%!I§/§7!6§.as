package §%!I§
{
   import §%i§.§7"0§;
   import §0D§.§3!R§;
   import §9!n§.LevelManager;
   import §;u§.§+n§;
   
   public class §7!6§ extends §+n§
   {
      
      public static const STATE_NAME:String = "stateTournamentLevelEndFail";
       
      
      public function §7!6§(param1:Boolean = false, param2:String = "stateTournamentLevelEndFail")
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§5+§();
      }
      
      protected function §5+§() : void
      {
         §2"@§.getItemByName("Button_Share_Default").setVisibility(false);
         §2"@§.getItemByName("Button_Embed").setVisibility(false);
      }
      
      override protected function getCutSceneState() : String
      {
         return §5S§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §]!M§.STATE_NAME;
      }
      
      override protected function loadNextLevel() : void
      {
         var _loc1_:String = §3!R§.§&"5§.§="S§(LevelManager.§ T§);
         if(_loc1_ != null && _loc1_ != "")
         {
            LevelManager.§,!m§(LevelManager.§["S§(_loc1_));
         }
         else
         {
            LevelManager.§&"V§ = LevelManager.§ T§;
         }
         mNextState = this.getCutSceneState();
      }
      
      override protected function showButtons() : void
      {
         var _loc1_:String = §3!R§.§&"5§.§="S§(LevelManager.§ T§);
         if(!AngryBirdsFP11.sUserProgress.isLevelOpen(_loc1_))
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_MightyEagle") as §7"0§).setVisibility(true);
         }
         else if(LevelManager.§%!8§())
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
         }
         else
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
         }
      }
   }
}
