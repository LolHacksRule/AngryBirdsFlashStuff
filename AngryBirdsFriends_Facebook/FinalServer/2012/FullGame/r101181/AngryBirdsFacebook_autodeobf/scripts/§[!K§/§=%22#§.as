package §[!K§
{
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §7"@§.§?!3§;
   import §7-§.§,!C§;
   
   public class §="#§ extends §?!3§
   {
      
      public static var §1!Y§:String = "BACKGROUND_FB_TOURNAMENT";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1!Y§ = "BACKGROUND_FB_TOURNAMENT";
         }
         do
         {
            STATE_NAME = "tournamentLevelLoad";
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public function §="#§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override protected function getPlayState() : String
      {
         return §'!W§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Loading ");
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() + LevelManager.§9"D§().writtenName);
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr45);
            }
            §§goto(addr49);
         }
         addr45:
         §§push(§§pop() + " - ");
         if(_loc1_)
         {
            addr49:
            return §§pop() + §,!C§.§;"§.§8!z§(LevelManager.§'!O§);
         }
      }
      
      override protected function initLevelMain(param1:§1"B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            param1.theme = §1!Y§;
            do
            {
               super.initLevelMain(param1);
            }
            while(!_loc3_);
            
         }
      }
   }
}
