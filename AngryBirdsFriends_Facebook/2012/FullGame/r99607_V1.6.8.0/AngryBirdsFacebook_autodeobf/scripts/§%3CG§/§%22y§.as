package §<G§
{
   import §+I§.§9!%§;
   import §[!K§.§&j§;
   import §[!z§.LevelManager;
   
   public class §"y§ extends §&j§
   {
      
      public static const STATE_NAME:String = "stateTournamentPlay";
       
      
      public function §"y§(param1:Boolean = true, param2:String = "stateTournamentPlay")
      {
         super(param1,param2);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §2"-§.getItemByName("Button_MightyEagle").setVisibility(false);
         §2"-§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
         §2"-§.getItemByName("PowerUpCountME_BG").setVisibility(false);
      }
      
      override public function activate() : void
      {
         super.activate();
         §2"-§.getItemByName("Button_PowerUpMenuOpenWhole").x = 115;
         §2"-§.getItemByName("Container_PowerUpButtons").x = 115;
      }
      
      override protected function fetchScoresForLevel() : void
      {
         §&2§ = § W§.§,2§.§1!c§(LevelManager.§"!r§(LevelManager.§[!<§).name,LevelManager.§[!<§,true);
      }
      
      override protected function showScoresForLevel() : void
      {
         (§9!%§.§ !W§ as § W§).§+!9§(LevelManager.§[!<§,§&2§,true);
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function getLevelLoadState() : String
      {
         return §0o§.STATE_NAME;
      }
      
      override protected function getPauseState() : String
      {
         return §,!Y§.STATE_NAME;
      }
      
      override public function getVictoryState() : String
      {
         return §`"§.STATE_NAME;
      }
      
      override public function getLoserState() : String
      {
         return §>T§.STATE_NAME;
      }
   }
}
