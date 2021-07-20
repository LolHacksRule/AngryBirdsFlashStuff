package §8!^§
{
   import §%!I§.§7"1§;
   import §0D§.§3!R§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §;u§.§;"P§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §15§ extends §;"P§
   {
      
      public static var §6e§:String = "BACKGROUND_BLUE_GRASS";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
       
      
      public function §15§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         super(param1,param2);
      }
      
      override protected function initLoadingView() : void
      {
         this.§2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_LevelLoad[0]);
      }
      
      override protected function getPlayState() : String
      {
         return §7"1§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + LevelManager.§`"Q§().writtenName + " - " + §3!R§.§&"5§.§5K§(LevelManager.§ T§);
      }
      
      override protected function initLevelMain(param1:§0"T§) : void
      {
         param1.theme = §6e§;
         super.initLevelMain(param1);
      }
   }
}
