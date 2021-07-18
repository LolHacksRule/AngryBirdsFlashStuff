package §"n§
{
   import §<G§.§2C§;
   import flash.display.DisplayObject;
   
   public class §+!a§
   {
      
      protected static const §[3§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §<!0§:String = "flash";
      
      public static const §]"%§:String = "initialized";
      
      public static const §%"§:String = "loaded";
      
      public static const §[`§:String = "level-started";
      
      public static const §-!y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §;G§:String = "crash-log";
      
      public static const §%!F§:String = "crash-trace";
      
      public static const §7b§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §true §:Vector.<§ y§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §[3§ = "trackEvent";
            loop0:
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               loop1:
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  loop2:
                  while(true)
                  {
                     §<!0§ = "flash";
                     loop3:
                     while(true)
                     {
                        §]"%§ = "initialized";
                        loop4:
                        while(true)
                        {
                           §%"§ = "loaded";
                           while(true)
                           {
                              §[`§ = "level-started";
                              while(true)
                              {
                                 §-!y§ = "level-completed";
                                 while(!_loc2_)
                                 {
                                    ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                    while(_loc1_ || _loc1_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop4;
                                 addr117:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    ACTION_APPLICATION_CRASH = "crashed";
                                    while(_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop2;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(_loc1_)
                                          {
                                             return;
                                             addr51:
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              addr67:
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue;
                              }
                              enabled = false;
                              loop14:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr65:
                                 addr84:
                                 while(_loc1_)
                                 {
                                    §§goto(addr67);
                                 }
                                 while(_loc1_)
                                 {
                                    §%!F§ = "crash-trace";
                                    break loop14;
                                 }
                                 §§goto(addr129);
                              }
                              while(true)
                              {
                                 §7b§ = "mem-edit";
                                 §§goto(addr65);
                              }
                              §§goto(addr51);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §+!a§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function § "0§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §@v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            trackEvent(§<!0§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            trackSampledEvent(§[3§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || §+!a§)
         {
            if(enabled)
            {
               if(_loc6_ || param3)
               {
                  §2C§.§^!A§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
