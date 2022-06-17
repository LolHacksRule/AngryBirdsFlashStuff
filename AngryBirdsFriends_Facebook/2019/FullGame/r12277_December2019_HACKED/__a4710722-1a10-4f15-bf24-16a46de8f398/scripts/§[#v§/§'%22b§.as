package §[#v§
{
   import § #_§.§?!>§;
   import §-!j§.§,"!§;
   import §4#$§.§5"L§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §^1§.§3"o§;
   
   public class §'"b§ extends §3"o§
   {
      
      public static var §,!n§:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §'"b§(param1:§4#?§, param2:§,"!§, param3:§?!>§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getPlayState() : String
      {
         return §?"R§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + §5"L§.§3"1§.§%!m§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§ ^§) : void
      {
         if(§5"L§.§3"1§.tournamentRules && §5"L§.§3"1§.tournamentRules.background)
         {
            param1.theme = §5"L§.§3"1§.tournamentRules.background;
         }
         else
         {
            param1.theme = §,!n§;
         }
         super.initLevelMain(param1);
      }
      
      override public function onLevelLoadError() : void
      {
         §%!?§(§4e§.STATE_NAME);
      }
   }
}
