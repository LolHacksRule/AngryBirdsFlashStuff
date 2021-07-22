package §6k§
{
   import §5!G§.§&2§;
   import §@",§.§-!V§;
   import §`!n§.LevelManager;
   
   public class §,C§ extends §-!V§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §,C§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         super(param1,param2);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §2!K§.getItemByName("Button_MightyEagle").setVisibility(false);
         §2!K§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
         §2!K§.getItemByName("PowerUpCountME_BG").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         §2!K§.getItemByName("Button_PowerUpMenuOpenWhole").x = 115;
         §2!K§.getItemByName("Container_PowerUpButtons").x = 115;
      }
      
      override protected function fetchScoresForLevel() : void
      {
         §'"G§ = §,"I§.§?!v§.§""<§(LevelManager.§0"§(LevelManager.§`-§).name,LevelManager.§`-§,true);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§&2§.§5!k§ as §,"I§).§'"'§(LevelManager.§`-§,§'"G§,true);
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function getLevelLoadState() : String
      {
         return §?1§.STATE_NAME;
      }
      
      override protected function getPauseState() : String
      {
         return §&A§.STATE_NAME;
      }
      
      override public function getVictoryState() : String
      {
         return §["K§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §;!e§.STATE_NAME;
      }
   }
}
