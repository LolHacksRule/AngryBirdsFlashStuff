package §[!K§
{
   import §#!e§.LevelManager;
   import §3!7§.§>,§;
   import §7"@§.§2!e§;
   import §]!A§.;
   
   public class §'!W§ extends §2!e§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §'!W§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         super(param1,param2);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §6w§.getItemByName("Button_MightyEagle").setVisibility(false);
         §6w§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
         §6w§.getItemByName("PowerUpCountME_BG").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         §6w§.getItemByName("Button_PowerUpMenuOpenWhole").x = 115;
         §6w§.getItemByName("Container_PowerUpButtons").x = 115;
      }
      
      override protected function disablePowerupMenu() : void
      {
         super.disablePowerupMenu();
         §`-§.setPowerupActive(§>,§.§," §.§[2§,false);
      }
      
      override protected function fetchScoresForLevel() : void
      {
         §3s§ = §3T§.§if §.§#!7§(LevelManager.§^_§(LevelManager.§'!O§).name,LevelManager.§'!O§,true);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§#6§.§ q§ as §3T§).§?D§(LevelManager.§'!O§,§3s§,true);
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function getLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
      
      override protected function getPauseState() : String
      {
         return §"`§.STATE_NAME;
      }
      
      override public function getVictoryState() : String
      {
         return §-!@§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §4#§.STATE_NAME;
      }
   }
}
