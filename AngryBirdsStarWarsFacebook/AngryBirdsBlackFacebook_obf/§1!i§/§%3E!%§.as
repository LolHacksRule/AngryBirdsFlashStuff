package §1!i§
{
   import §="V§.§""v§;
   import flash.display.DisplayObject;
   
   public class §>!%§
   {
      
      protected static const §!"<§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §'"r§:String = "flash";
      
      public static const §-#+§:String = "initialized";
      
      public static const §,F§:String = "loaded";
      
      public static const §,6§:String = "level-started";
      
      public static const §""+§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §!!W§:String = "crash-log";
      
      public static const §?#T§:String = "crash-trace";
      
      public static const §!"Y§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §3!d§:Vector.<§ "X§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §>!%§)
         {
            §!"<§ = "trackEvent";
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
                     §'"r§ = "flash";
                     while(true)
                     {
                        §-#+§ = "initialized";
                        loop4:
                        while(_loc1_ || _loc1_)
                        {
                           §,F§ = "loaded";
                           while(true)
                           {
                              §,6§ = "level-started";
                              while(!_loc2_)
                              {
                                 §""+§ = "level-completed";
                                 while(true)
                                 {
                                    ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                    continue loop0;
                                    addr98:
                                    while(_loc1_ || _loc1_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 loop13:
                                 while(!(_loc2_ && §>!%§))
                                 {
                                    §!"Y§ = "mem-edit";
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             break;
                                             addr117:
                                          }
                                          enabled = false;
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   break;
                                                }
                                                if(_loc1_)
                                                {
                                                   continue;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr98);
                                          }
                                          while(!_loc2_)
                                          {
                                             while(true)
                                             {
                                                ACTION_APPLICATION_CRASH = "crashed";
                                                §§goto(addr98);
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue loop13;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §>!%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §-i§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §2!L§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            trackEvent(§'"r§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || §>!%§)
         {
            §>#V§(§!"<§,param1,param2,param3,param4);
         }
      }
      
      protected static function §>#V§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(enabled)
            {
               if(!(_loc7_ && param1))
               {
                  addr47:
                  §""v§.§&R§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
