package §-"i§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §'U§.§]#[§;
   import §,!=§.§9!"§;
   import §5"$§.§]!m§;
   import §`#C§.§3Z§;
   
   public class §;"§ extends §9!"§
   {
      
      public static var §[#E§:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §;"§(param1:§#!?§, param2:§3Z§, param3:§]#[§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getPlayState() : String
      {
         return §4"X§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + §]!m§.§3!]§.§-#P§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§-"R§) : void
      {
         if(§]!m§.§3!]§.§,"K§ && §]!m§.§3!]§.§,"K§.background)
         {
            param1.theme = §]!m§.§3!]§.§,"K§.background;
         }
         else
         {
            param1.theme = §[#E§;
         }
         super.initLevelMain(param1);
      }
      
      override public function onLevelLoadError() : void
      {
         §7P§(§%!'§.STATE_NAME);
      }
   }
}
