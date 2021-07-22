package §6k§
{
   import §@",§.§6G§;
   import §^!o§.§=1§;
   
   public class §&A§ extends §6G§
   {
      
      public static const STATE_NAME:String = "stateTournamentPause";
       
      
      public function §&A§(param1:Boolean = false, param2:String = "stateTournamentPause")
      {
         super(param1,param2);
      }
      
      override protected function getLevelNameToDisplay(param1:String) : String
      {
         return §=1§.§1[§.§7!B§(param1) + "";
      }
      
      override protected function getLevelLoadState() : String
      {
         return §?1§.STATE_NAME;
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §-#§.STATE_NAME;
      }
      
      override protected function getPlayState() : String
      {
         return §,C§.STATE_NAME;
      }
   }
}
