package §&!h§
{
   import §&9§.§1?§;
   import flash.display.DisplayObject;
   
   public class §"[§
   {
      
      protected static const §]!H§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §-!$§:String = "flash";
      
      public static const §"@§:String = "initialized";
      
      public static const §4j§:String = "loaded";
      
      public static const §%b§:String = "level-started";
      
      public static const §,!q§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §!!U§:String = "crash-log";
      
      public static const §false§:String = "crash-trace";
      
      public static const §9B§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §,!M§:Vector.<§9b§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §]!H§ = "trackEvent";
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  loop2:
                  while(true)
                  {
                     §-!$§ = "flash";
                     addr185:
                     while(true)
                     {
                        §"@§ = "initialized";
                        continue loop2;
                     }
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr56:
                  }
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               ACTION_CPU_FPS_REPORT = "cpu-rendering";
               §§goto(addr127);
            }
         }
         §§goto(addr56);
      }
      
      public function §"[§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function § i§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §8![§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            trackEvent(§-!$§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            trackSampledEvent(§]!H§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            if(enabled)
            {
               if(!(_loc7_ && §"[§))
               {
                  addr42:
                  §1?§.§>!X§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
