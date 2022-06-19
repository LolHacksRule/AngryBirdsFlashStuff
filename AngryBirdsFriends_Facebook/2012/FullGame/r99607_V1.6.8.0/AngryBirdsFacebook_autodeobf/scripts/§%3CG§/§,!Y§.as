package §<G§
{
   import §<!e§.§[!t§;
   import §[!K§.§ !n§;
   
   public class §,!Y§ extends § !n§
   {
      
      public static const STATE_NAME:String = "stateTournamentPause";
       
      
      public function §,!Y§(param1:Boolean = false, param2:String = "stateTournamentPause")
      {
         super(param1,param2);
      }
      
      override protected function getLevelNameToDisplay(param1:String) : String
      {
         return §[!t§.§8c§.§=!l§(param1) + "";
      }
      
      override protected function getLevelLoadState() : String
      {
         return §0o§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §5w§.STATE_NAME;
      }
      
      override protected function getPlayState() : String
      {
         return §"y§.STATE_NAME;
      }
   }
}
