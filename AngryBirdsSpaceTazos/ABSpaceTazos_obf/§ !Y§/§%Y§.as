package § !Y§
{
   import §<"8§.§6!c§;
   import flash.display.DisplayObject;
   
   public class §%Y§
   {
      
      protected static const §?!U§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §!!&§:String = "flash";
      
      public static const §`!;§:String = "initialized";
      
      public static const §%!%§:String = "loaded";
      
      public static const §!t§:String = "level-started";
      
      public static const §49§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §8!5§:String = "crash-log";
      
      public static const §83§:String = "crash-trace";
      
      public static const §3d§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §&!V§:Vector.<§2@§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §?!U§ = "trackEvent";
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
                     §!!&§ = "flash";
                     loop3:
                     while(true)
                     {
                        §`!;§ = "initialized";
                        loop4:
                        while(true)
                        {
                           §%!%§ = "loaded";
                           addr161:
                           while(true)
                           {
                              §!t§ = "level-started";
                              addr84:
                              if(!_loc1_)
                              {
                                 continue loop3;
                              }
                           }
                           addr68:
                           if(_loc1_ && §%Y§)
                           {
                              continue;
                           }
                           enabled = false;
                           while(!(_loc1_ && _loc1_))
                           {
                              §&!V§ = new Vector.<§2@§>();
                              if(!_loc1_)
                              {
                                 addr38:
                                 if(!(_loc1_ && §%Y§))
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 addr64:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc1_)
                                       {
                                          §§goto(addr68);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             ACTION_CPU_FPS_REPORT = "cpu-rendering";
                                             while(true)
                                             {
                                                ACTION_APPLICATION_CRASH = "crashed";
                                                addr134:
                                                while(!_loc1_)
                                                {
                                                   §8!5§ = "crash-log";
                                                }
                                             }
                                          }
                                          addr146:
                                       }
                                    }
                                    loop11:
                                    while(true)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          continue loop2;
                                       }
                                       addr151:
                                       while(true)
                                       {
                                          ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                          §§goto(addr146);
                                          continue loop11;
                                       }
                                    }
                                    continue loop2;
                                    §§goto(addr38);
                                 }
                                 continue loop4;
                              }
                           }
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr84);
                                 }
                                 while(true)
                                 {
                                    §49§ = "level-completed";
                                    §§goto(addr151);
                                 }
                                 addr156:
                              }
                              §§goto(addr134);
                              §§goto(addr52);
                           }
                           addr52:
                           §§goto(addr161);
                        }
                     }
                  }
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §83§ = "crash-trace";
               §§goto(addr80);
            }
         }
         §§goto(addr156);
      }
      
      public function §%Y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §%!-§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §^!U§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            trackEvent(§!!&§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            trackSampledEvent(§?!U§,param1,param2,param3,param4);
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
               if(!_loc7_)
               {
                  §6!c§.§?!6§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
