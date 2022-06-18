package §8"X§
{
   import §&$!§.§+#!§;
   import §7"&§.§2>§;
   import §94§.§5!"§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §];§.§-!t§;
   
   public class §`$>§ extends §5!"§
   {
      
      public static var §74§:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §`$>§(param1:§^#Q§, param2:§2>§, param3:§+#!§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getPlayState() : String
      {
         return §6#K§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + §-!t§.§ "D§.§9`§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§]#B§) : void
      {
         if(§-!t§.§ "D§.tournamentRules && §-!t§.§ "D§.tournamentRules.background)
         {
            param1.theme = §-!t§.§ "D§.tournamentRules.background;
         }
         else
         {
            param1.theme = §74§;
         }
         super.initLevelMain(param1);
      }
      
      override public function onLevelLoadError() : void
      {
         §5"p§(§^!E§.STATE_NAME);
      }
   }
}
