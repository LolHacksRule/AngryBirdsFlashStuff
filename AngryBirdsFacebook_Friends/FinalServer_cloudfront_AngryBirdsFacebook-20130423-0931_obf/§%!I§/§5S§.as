package §%!I§
{
   import §;u§.§ "F§;
   
   public class §5S§ extends § "F§
   {
      
      public static const STATE_NAME:String = "tournamentCutscene";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            STATE_NAME = "tournamentCutscene";
         }
      }
      
      public function §5S§(param1:Boolean = true, param2:String = "tournamentCutscene")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override protected function getLevelSelectionState() : String
      {
         return §]!M§.STATE_NAME;
      }
      
      override protected function getLevelLoadState() : String
      {
         return §6"'§.STATE_NAME;
      }
   }
}
