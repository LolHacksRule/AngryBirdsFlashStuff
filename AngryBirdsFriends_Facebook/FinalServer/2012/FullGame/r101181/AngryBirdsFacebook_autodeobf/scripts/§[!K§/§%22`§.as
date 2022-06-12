package §[!K§
{
   import §7"@§.§-"$§;
   import §7-§.§,!C§;
   
   public class §"`§ extends §-"$§
   {
      
      public static const STATE_NAME:String = "stateTournamentPause";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "stateTournamentPause";
         }
      }
      
      public function §"`§(param1:Boolean = false, param2:String = "stateTournamentPause")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override protected function getLevelNameToDisplay(param1:String) : String
      {
         return §,!C§.§;"§.§8!z§(param1) + "";
      }
      
      override protected function getLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §-k§.STATE_NAME;
      }
      
      override protected function getPlayState() : String
      {
         return §'!W§.STATE_NAME;
      }
   }
}
