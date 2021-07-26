package §!!L§
{
   import §+`§.§%"q§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §8#K§.§'#_§;
   import §]§.§%[§;
   import §`,§.§7!$§;
   
   public class §=$3§ extends §%[§
   {
      
      public static var §6#W§:String = "BACKGROUND_FB_DEFAULT_2016";
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §=$3§(param1:§]#q§, param2:§'#_§, param3:§%"q§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function getPlayState() : String
      {
         return §'"H§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         return "Loading " + mLevelManager.getCurrentEpisodeModel().writtenName + " - " + §7!$§.§+!,§.§>"v§(mLevelManager.currentLevel);
      }
      
      override protected function initLevelMain(param1:§?# §) : void
      {
         if(§7!$§.§+!,§.tournamentRules && §7!$§.§+!,§.tournamentRules.background)
         {
            param1.theme = §7!$§.§+!,§.tournamentRules.background;
         }
         else
         {
            param1.theme = §6#W§;
         }
         super.initLevelMain(param1);
      }
      
      override public function onLevelLoadError() : void
      {
         §3#§(§ !8§.STATE_NAME);
      }
   }
}
