package §>"c§
{
   import §&$!§.§+#!§;
   import §7"&§.§2>§;
   import §8"X§.§6#K§;
   import §8"X§.§`$>§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §94§.§5!"§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §];§.§-!t§;
   
   public class §+!R§ extends §5!"§
   {
      
      public static const STATE_NAME:String = "TournamentLevelLoad";
       
      
      public function §+!R§(param1:§^#Q§, param2:§2>§, param3:§+#!§, param4:Boolean = false, param5:String = "TournamentLevelLoad")
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function initLoadingView() : void
      {
         this.§?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_LevelLoad[0]);
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
            param1.theme = §`$>§.§74§;
         }
         super.initLevelMain(param1);
      }
   }
}
