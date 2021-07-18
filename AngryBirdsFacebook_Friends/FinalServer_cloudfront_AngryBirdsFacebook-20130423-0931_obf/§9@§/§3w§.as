package §9@§
{
   import §30§.§'"+§;
   import flash.display.DisplayObject;
   
   public class §3w§
   {
      
      protected static const §6V§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §`%§:String = "flash";
      
      public static const §1"=§:String = "initialized";
      
      public static const §5!'§:String = "loaded";
      
      public static const §#!S§:String = "level-started";
      
      public static const §>!P§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §-!f§:String = "crash-log";
      
      public static const §08§:String = "crash-trace";
      
      public static const §+"V§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §1"!§:Vector.<§#1§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3w§))
         {
            §6V§ = "trackEvent";
            loop0:
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               loop1:
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  while(true)
                  {
                     §`%§ = "flash";
                     addr186:
                     while(true)
                     {
                        §1"=§ = "initialized";
                        addr181:
                        while(true)
                        {
                           §5!'§ = "loaded";
                           addr176:
                           while(true)
                           {
                              §#!S§ = "level-started";
                              continue loop1;
                           }
                        }
                     }
                     addr128:
                     if(!(_loc2_ || §3w§))
                     {
                        continue;
                     }
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     ACTION_APPLICATION_CRASH = "crashed";
                     loop10:
                     while(true)
                     {
                        §-!f§ = "crash-log";
                        addr107:
                        while(!_loc1_)
                        {
                           §08§ = "crash-trace";
                           continue loop10;
                        }
                        §§goto(addr181);
                     }
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function §3w§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §&"B§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §#!0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §3w§))
         {
            trackEvent(§`%§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            trackSampledEvent(§6V§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(enabled)
            {
               if(!(_loc6_ && param2))
               {
                  §'"+§.§'!#§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
