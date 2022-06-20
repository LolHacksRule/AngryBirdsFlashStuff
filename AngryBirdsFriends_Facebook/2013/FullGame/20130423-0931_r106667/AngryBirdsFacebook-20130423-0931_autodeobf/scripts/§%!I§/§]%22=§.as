package §%!I§
{
   import §0D§.§3!R§;
   import §;u§.§@!P§;
   
   public class §]"=§ extends §@!P§
   {
      
      public static const STATE_NAME:String = "stateTournamentPause";
       
      
      public function §]"=§(param1:Boolean = false, param2:String = "stateTournamentPause")
      {
         super(param1,param2);
      }
      
      override protected function getLevelNameToDisplay(param1:String) : String
      {
         return §3!R§.§&"5§.§5K§(param1) + "";
      }
      
      override protected function getLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §]!M§.STATE_NAME;
      }
      
      override protected function getPlayState() : String
      {
         return §7"1§.STATE_NAME;
      }
   }
}
