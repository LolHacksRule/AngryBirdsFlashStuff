package §[!K§
{
   import §7"@§.§-"2§;
   
   public class §;+§ extends §-"2§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §;+§))
         {
            STATE_NAME = "tournamentCutscene";
         }
      }
      
      public function §;+§(param1:Boolean = true, param2:String = "tournamentCutscene")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super(param1,param2);
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §-k§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §="#§.STATE_NAME;
      }
   }
}
