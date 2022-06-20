package §"p§
{
   import §<!e§.§[!t§;
   import §<G§.§"y§;
   import §[!K§.§["A§;
   import §[!z§.§!"=§;
   import §[!z§.LevelManager;
   
   public class §7!5§ extends §["A§
   {
      
      public static var §<#§:String = "BACKGROUND_LOTUS";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
       
      
      public function §7!5§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         super(param1,param2);
      }
      
      override protected function getPlayState() : String
      {
         return §"y§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§8!§().writtenName + " - " + §[!t§.§8c§.§=!l§(LevelManager.§[!<§);
      }
      
      override protected function initLevelMain(param1:§!"=§) : void
      {
         param1.theme = §<#§;
         super.initLevelMain(param1);
      }
   }
}
