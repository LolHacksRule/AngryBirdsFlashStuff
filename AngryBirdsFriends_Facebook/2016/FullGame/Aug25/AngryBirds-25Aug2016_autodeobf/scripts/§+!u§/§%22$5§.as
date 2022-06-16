package §+!u§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §-"i§.StateLastWeeksTournamentResults;
   import §1!@§.§-#O§;
   import §5"$§.§]!m§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   
   public class §"$5§ extends StateLastWeeksTournamentResults
   {
      
      public static const STATE_NAME:String = "StateLastWeeksTournamentResults";
       
      
      public function §"$5§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "StateLastWeeksTournamentResults")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_BrandedTournamentPrevious[0]);
         var _loc1_:String = §]!m§.§3!]§.§,"K§.§+G§;
         var _loc2_:String = §]!m§.§3!]§.§?q§;
         if(_loc2_ && _loc2_.indexOf("XMAS_2013_W1") != -1)
         {
            _loc1_ = §]!m§.§3!]§.brandedTournamentAssetId;
         }
         §-#O§.each(§!$§.getItemByName("CombinedBackground").mClip,_loc1_);
         §-#O§.each(§!$§.getItemByName("ShelfContainer").mClip,_loc1_);
         §-#O§.each(§!$§.getItemByName("TitleSignContainer").mClip,_loc1_);
         §-#O§.each(§!$§.getItemByName("PreviousWeekTextContainer").mClip,_loc1_);
      }
   }
}
