package §!!t§
{
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §+"u§.§^"C§;
   import §3"G§.§16§;
   import §3=§.§6#g§;
   import §?§.§?!e§;
   
   public class §8!k§ extends §6#g§
   {
      
      public static var §"!"§:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §8!k§(param1:§'![§, param2:§?!e§, param3:§16§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getPlayState() : String
      {
         return §2!S§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + §^"C§.§?q§.§6#T§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§=$&§) : void
      {
         if(§^"C§.§?q§.tournamentRules && §^"C§.§?q§.tournamentRules.background)
         {
            param1.theme = §^"C§.§?q§.tournamentRules.background;
         }
         else
         {
            param1.theme = §"!"§;
         }
         super.initLevelMain(param1);
      }
      
      override public function onLevelLoadError() : void
      {
         §%D§(§'8§.STATE_NAME);
      }
   }
}
