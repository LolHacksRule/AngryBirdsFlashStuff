package §<a§
{
   import §+N§.§@!]§;
   import flash.display.DisplayObject;
   
   public class §>f§
   {
      
      protected static const §;f§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §5";§:String = "flash";
      
      public static const §^a§:String = "initialized";
      
      public static const §]!Q§:String = "loaded";
      
      public static const §]",§:String = "level-started";
      
      public static const §5!k§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §0@§:String = "crash-log";
      
      public static const §+k§:String = "crash-trace";
      
      public static const §0" §:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §2W§:Vector.<§,m§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §;f§ = "trackEvent";
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               loop1:
               for(; !_loc1_; while(!(_loc1_ && _loc2_))
               {
                  §]",§ = "level-started";
                  §§goto(addr152);
               })
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  loop2:
                  while(true)
                  {
                     §5";§ = "flash";
                     while(true)
                     {
                        §^a§ = "initialized";
                        addr179:
                        addr102:
                        while(true)
                        {
                           §]!Q§ = "loaded";
                           continue loop1;
                        }
                        addr102:
                        while(!(_loc1_ && _loc1_))
                        {
                           §0" § = "mem-edit";
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr135);
      }
      
      public function §>f§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §;!$§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §""1§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            trackEvent(§5";§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            trackSampledEvent(§;f§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            if(enabled)
            {
               if(_loc7_)
               {
                  §@!]§.§9"'§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
