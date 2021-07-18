package §8!^§
{
   import §%!I§.§7"1§;
   import §0D§.§3!R§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §;u§.§;"P§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §15§ extends §;"P§
   {
      
      public static var §6e§:String = "BACKGROUND_BLUE_GRASS";
      
      public static const STATE_NAME:String = "tournamentLevelLoad";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6e§ = "BACKGROUND_BLUE_GRASS";
         }
         do
         {
            STATE_NAME = "tournamentLevelLoad";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §15§(param1:Boolean = true, param2:String = "tournamentLevelLoad")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override protected function initLoadingView() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§2"@§ = new §`_§(this);
            do
            {
               §2"@§.init(§ "<§.§%I§.Views.View_LevelLoad[0]);
            }
            while(!_loc2_);
            
         }
      }
      
      override protected function getPlayState() : String
      {
         return §7"1§.STATE_NAME;
      }
      
      override protected function getLoadingText() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Loading ");
         if(_loc2_ || _loc2_)
         {
            §§push(§§pop() + LevelManager.§`"Q§().writtenName);
            if(!_loc1_)
            {
               §§goto(addr41);
            }
            §§goto(addr50);
         }
         addr41:
         §§push(§§pop() + " - ");
         if(!(_loc1_ && _loc2_))
         {
            addr50:
            return §§pop() + §3!R§.§&"5§.§5K§(LevelManager.§ T§);
         }
      }
      
      override protected function initLevelMain(param1:§0"T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            param1.theme = §6e§;
         }
         do
         {
            super.initLevelMain(param1);
         }
         while(!(_loc2_ || _loc3_));
         
      }
   }
}
