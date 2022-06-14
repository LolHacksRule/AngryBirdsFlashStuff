package §[!K§
{
   import §7"@§.§-"$§;
   import §7-§.§,!C§;
   
   public class §"`§ extends §-"$§
   {
      
      public static const STATE_NAME:String = "stateTournamentPause";
       
      
      public function §"`§(param1:Boolean = false, param2:String = "stateTournamentPause")
      {
         super(param1,param2);
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
