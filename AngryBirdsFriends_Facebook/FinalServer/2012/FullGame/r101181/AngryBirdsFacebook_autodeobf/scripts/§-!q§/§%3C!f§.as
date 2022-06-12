package §-!q§
{
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §7"@§.§?!3§;
   import §7-§.§,!C§;
   import §[!K§.§'!W§;
   
   public class §<!f§ extends §?!3§
   {
      
      public static var §1!Y§:String = "BACKGROUND_LOTUS_STARWARS";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1!Y§ = "BACKGROUND_LOTUS_STARWARS";
         }
         do
         {
            STATE_NAME = "tournamentLevelLoad";
         }
         while(_loc2_);
         
      }
      
      public function §<!f§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Loading ");
         if(_loc2_)
         {
            §§push(§§pop() + LevelManager.§9"D§().writtenName);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() + " - ");
               if(!_loc1_)
               {
                  return §§pop() + §,!C§.§;"§.§8!z§(LevelManager.§'!O§);
               }
            }
         }
      }
      
      override protected function initLevelMain(param1:§1"B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            param1.theme = §1!Y§;
         }
         do
         {
            super.initLevelMain(param1);
         }
         while(_loc3_);
         
      }
   }
}
