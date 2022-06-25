package §7p§
{
   import §'b§.ExternalInterfaceHandler;
   import flash.display.DisplayObject;
   
   public class GoogleAnalyticsTracker
   {
      
      protected static const §2!K§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §"!^§:String = "flash";
      
      public static const §5W§:String = "initialized";
      
      public static const §`!B§:String = "loaded";
      
      public static const §=!?§:String = "level-started";
      
      public static const §,H§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §3!7§:String = "crash-log";
      
      public static const §#-§:String = "crash-trace";
      
      public static const §-!W§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §2`§:Vector.<§7u§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2!K§ = "trackEvent";
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               loop1:
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  while(true)
                  {
                     §"!^§ = "flash";
                     addr192:
                     while(true)
                     {
                        §5W§ = "initialized";
                        continue loop1;
                     }
                     addr46:
                     if(!(_loc2_ && _loc2_))
                     {
                        return;
                        addr53:
                     }
                  }
               }
            }
         }
         while(true)
         {
            §-!W§ = "mem-edit";
            §§goto(addr84);
         }
         §§goto(addr53);
      }
      
      public function GoogleAnalyticsTracker()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §6=§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §1`§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            trackEvent(§"!^§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            trackSampledEvent(§2!K§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            if(enabled)
            {
               if(_loc6_ || GoogleAnalyticsTracker)
               {
                  addr43:
                  ExternalInterfaceHandler.§>!2§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
