package §0X§
{
   import §@i§.§=r§;
   import flash.display.DisplayObject;
   
   public class §'W§
   {
      
      protected static const §3!&§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §0!T§:String = "flash";
      
      public static const §[!#§:String = "initialized";
      
      public static const §-!f§:String = "loaded";
      
      public static const §9!e§:String = "level-started";
      
      public static const §`q§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §"<§:String = "crash-log";
      
      public static const §><§:String = "crash-trace";
      
      public static const §7!2§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §"#§:Vector.<§9w§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!&§ = "trackEvent";
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  while(true)
                  {
                     §0!T§ = "flash";
                     loop3:
                     while(true)
                     {
                        §[!#§ = "initialized";
                        while(true)
                        {
                           §-!f§ = "loaded";
                           loop5:
                           while(true)
                           {
                              §9!e§ = "level-started";
                              loop6:
                              while(true)
                              {
                                 §`q§ = "level-completed";
                                 loop7:
                                 while(true)
                                 {
                                    ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                    while(_loc2_)
                                    {
                                       ACTION_CPU_FPS_REPORT = "cpu-rendering";
                                       continue loop5;
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(!_loc1_)
                                          {
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     while(_loc2_ || _loc1_)
                     {
                        §7!2§ = "mem-edit";
                        §§goto(addr89);
                     }
                  }
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr115);
      }
      
      public function §'W§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function set(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §var §(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            trackEvent(§0!T§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            trackSampledEvent(§3!&§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && §'W§))
         {
            if(enabled)
            {
               if(!_loc6_)
               {
                  addr38:
                  §=r§.§[!3§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr38);
      }
   }
}
