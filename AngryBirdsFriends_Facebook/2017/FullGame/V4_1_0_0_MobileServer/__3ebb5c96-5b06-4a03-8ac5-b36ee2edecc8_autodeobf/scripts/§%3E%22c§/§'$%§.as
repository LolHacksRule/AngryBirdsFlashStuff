package §>"c§
{
   import §&$!§.§+#!§;
   import §8"X§.StateLastWeeksTournamentResults;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §@#§.§^#Q§;
   import §];§.§-!t§;
   import §^#]§.§4H§;
   
   public class §'$%§ extends StateLastWeeksTournamentResults
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      public function §'$%§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_BrandedTournamentPrevious[0]);
         var _loc1_:String = §-!t§.§ "D§.tournamentRules.§@!l§;
         §4H§.§#!k§(§?Q§.getItemByName("CombinedBackground").mClip,_loc1_);
         §4H§.§#!k§(§?Q§.getItemByName("ShelfContainer").mClip,_loc1_);
         §4H§.§#!k§(§?Q§.getItemByName("TitleSignContainer").mClip,_loc1_);
         §4H§.§#!k§(§?Q§.getItemByName("PreviousWeekTextContainer").mClip,_loc1_);
      }
   }
}
