package §6k§
{
   import §@",§.§="3§;
   import §^!o§.§=1§;
   import §`!n§.§#!s§;
   import §`!n§.LevelManager;
   
   public class §?1§ extends §="3§
   {
      
      public static var §[!n§:String = "BACKGROUND_FB_TOURNAMENT";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
       
      
      public function §?1§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         super(param1,param2);
      }
      
      override protected function getPlayState() : String
      {
         return §,C§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§6!6§().writtenName + " - " + §=1§.§1[§.§7!B§(LevelManager.§`-§);
      }
      
      override protected function initLevelMain(param1:§#!s§) : void
      {
         param1.theme = §[!n§;
         super.initLevelMain(param1);
      }
   }
}
