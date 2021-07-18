package §%!I§
{
   import §0D§.§3!R§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §;u§.§;"P§;
   
   public class §6"'§ extends §;"P§
   {
      
      public static var §6e§:String = "BACKGROUND_FB_TOURNAMENT";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6e§ = "BACKGROUND_FB_TOURNAMENT";
            do
            {
               STATE_NAME = "tournamentLevelLoad";
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §6"'§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override protected function getPlayState() : String
      {
         return §7"1§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("Loading ");
         if(_loc1_)
         {
            §§push(§§pop() + LevelManager.§`"Q§().writtenName);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() + " - ");
               if(!_loc1_)
               {
               }
               §§goto(addr50);
            }
            §§push(§§pop() + §3!R§.§&"5§.§5K§(LevelManager.§ T§));
         }
         addr50:
         return §§pop();
      }
      
      override protected function initLevelMain(param1:§0"T§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            param1.theme = §6e§;
            do
            {
               super.initLevelMain(param1);
            }
            while(_loc2_);
            
         }
      }
   }
}
