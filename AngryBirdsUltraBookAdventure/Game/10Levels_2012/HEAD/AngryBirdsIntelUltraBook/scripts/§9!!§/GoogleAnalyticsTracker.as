package §9!!§
{
   import §,!#§.ExternalInterfaceHandler;
   import flash.display.DisplayObject;
   
   public class GoogleAnalyticsTracker
   {
      
      protected static const §[%§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §@$§:String = "flash";
      
      public static const §%!h§:String = "initialized";
      
      public static const §>!A§:String = "loaded";
      
      public static const §^=§:String = "level-started";
      
      public static const §9k§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §8x§:String = "crash-log";
      
      public static const §-2§:String = "crash-trace";
      
      public static const §]@§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §[_§:Vector.<§ u§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §[%§ = "trackEvent";
            loop0:
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  addr192:
                  addr129:
                  while(true)
                  {
                     §@$§ = "flash";
                     continue loop0;
                  }
                  if(!(_loc1_ || GoogleAnalyticsTracker))
                  {
                     continue;
                  }
                  ACTION_APPLICATION_CRASH = "crashed";
                  loop10:
                  while(true)
                  {
                     §8x§ = "crash-log";
                     addr98:
                     addr122:
                     loop11:
                     for(; !(_loc2_ && _loc2_); if(_loc2_ && _loc1_)
                     {
                        continue;
                     },enabled = false,§§goto(addr50))
                     {
                        addr105:
                        if(_loc1_ || GoogleAnalyticsTracker)
                        {
                           §-2§ = "crash-trace";
                           loop12:
                           while(true)
                           {
                              §]@§ = "mem-edit";
                              loop13:
                              while(true)
                              {
                                 if(_loc1_ || GoogleAnalyticsTracker)
                                 {
                                    continue loop11;
                                 }
                                 continue loop12;
                                 addr50:
                                 while(true)
                                 {
                                    if(_loc1_ || GoogleAnalyticsTracker)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop13;
                                 }
                                 continue loop10;
                              }
                              continue loop11;
                           }
                        }
                        else
                        {
                           §§goto(addr141);
                        }
                     }
                     while(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr129);
                        §§goto(addr98);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public function GoogleAnalyticsTracker()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §'!#§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §,!=§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            trackEvent(§@$§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            trackSampledEvent(§[%§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(enabled)
            {
               if(_loc6_ || param3)
               {
                  addr38:
                  ExternalInterfaceHandler.§!!@§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
