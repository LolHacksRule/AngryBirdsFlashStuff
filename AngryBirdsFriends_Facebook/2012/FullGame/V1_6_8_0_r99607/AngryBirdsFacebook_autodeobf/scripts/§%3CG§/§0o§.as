package §<G§
{
   import §<!e§.§[!t§;
   import §[!K§.§["A§;
   import §[!z§.§!"=§;
   import §[!z§.LevelManager;
   
   public class §0o§ extends §["A§
   {
      
      public static var §<#§:String = "BACKGROUND_FB_TOURNAMENT";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
       
      
      public function §0o§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
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
