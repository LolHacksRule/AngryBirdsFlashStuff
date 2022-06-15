package §+!u§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §'U§.§]#[§;
   import §,!=§.§9!"§;
   import §-"i§.§4"X§;
   import §-"i§.§;"§;
   import §5"$§.§]!m§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §`#C§.§3Z§;
   
   public class §]8§ extends §9!"§
   {
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §]8§(param1:§#!?§, param2:§3Z§, param3:§]#[§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function initLoadingView() : void
      {
         this.§!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_LevelLoad[0]);
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
            param1.theme = §;"§.§[#E§;
         }
         super.initLevelMain(param1);
      }
   }
}
