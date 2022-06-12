package §3+§
{
   import § !j§.§4#c§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §2";§.§%O§;
   import §<!r§.§'##§;
   import §?$<§.§]#A§;
   
   public class §+">§ extends §%O§
   {
      
      public static var §#!T§:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §+">§(param1:§;"n§, param2:§]#A§, param3:§4#c§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getPlayState() : String
      {
         return §7#+§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + §'##§.§`"H§.§6!D§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§7!J§) : void
      {
         if(§'##§.§`"H§.tournamentRules && §'##§.§`"H§.tournamentRules.background)
         {
            param1.theme = §'##§.§`"H§.tournamentRules.background;
         }
         else
         {
            param1.theme = §#!T§;
         }
         super.initLevelMain(param1);
      }
      
      override public function onLevelLoadError() : void
      {
         §1!L§(§;!H§.STATE_NAME);
      }
   }
}
