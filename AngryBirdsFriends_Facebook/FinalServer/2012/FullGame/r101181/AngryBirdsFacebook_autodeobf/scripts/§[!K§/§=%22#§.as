package §[!K§
{
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §7"@§.§?!3§;
   import §7-§.§,!C§;
   
   public class §="#§ extends §?!3§
   {
      
      public static var §1!Y§:String = "BACKGROUND_FB_TOURNAMENT";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
       
      
      public function §="#§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         super(param1,param2);
      }
      
      override protected function getPlayState() : String
      {
         return §'!W§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§9"D§().writtenName + " - " + §,!C§.§;"§.§8!z§(LevelManager.§'!O§);
      }
      
      override protected function initLevelMain(param1:§1"B§) : void
      {
         param1.theme = §1!Y§;
         super.initLevelMain(param1);
      }
   }
}
