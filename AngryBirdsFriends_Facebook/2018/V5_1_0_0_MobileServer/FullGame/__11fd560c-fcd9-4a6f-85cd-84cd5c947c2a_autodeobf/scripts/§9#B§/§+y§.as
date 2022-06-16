package §9#B§
{
   import §"!@§.§4<§;
   import §5P§.§""C§;
   import §8"L§.§[t§;
   import §8#!§.§5`§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   
   public class §+y§ extends §4<§
   {
      
      public static var §;"2§:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §+y§(param1:§8=§, param2:§[t§, param3:§""C§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getPlayState() : String
      {
         return §0"h§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + §5`§.§6!§.§?<§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§>f§) : void
      {
         if(§5`§.§6!§.tournamentRules && §5`§.§6!§.tournamentRules.background)
         {
            param1.theme = §5`§.§6!§.tournamentRules.background;
         }
         else
         {
            param1.theme = §;"2§;
         }
         super.initLevelMain(param1);
      }
      
      override public function onLevelLoadError() : void
      {
         §1"h§(§=!L§.STATE_NAME);
      }
   }
}
