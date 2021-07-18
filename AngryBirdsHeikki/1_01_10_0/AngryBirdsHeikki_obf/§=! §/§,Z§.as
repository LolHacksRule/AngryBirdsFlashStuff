package §=! §
{
   import §6s§.§+!Y§;
   import flash.display.DisplayObject;
   
   public class §,Z§
   {
      
      protected static const §6!O§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §=!H§:String = "flash";
      
      public static const §]+§:String = "initialized";
      
      public static const §]!7§:String = "loaded";
      
      public static const §-Q§:String = "level-started";
      
      public static const §"-§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §+!V§:String = "crash-log";
      
      public static const §,+§:String = "crash-trace";
      
      public static const §&x§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §3'§:Vector.<§&!P§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §6!O§ = "trackEvent";
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
                     §=!H§ = "flash";
                     while(_loc2_)
                     {
                        §]+§ = "initialized";
                        loop4:
                        while(true)
                        {
                           §]!7§ = "loaded";
                           loop5:
                           while(true)
                           {
                              §-Q§ = "level-started";
                              loop6:
                              while(true)
                              {
                                 §"-§ = "level-completed";
                                 while(!_loc1_)
                                 {
                                    ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                    continue loop6;
                                    addr64:
                                    if(_loc1_ && _loc1_)
                                    {
                                       continue;
                                    }
                                    if(_loc1_)
                                    {
                                       continue loop4;
                                    }
                                    §3'§ = new Vector.<§&!P§>();
                                    addr73:
                                    if(_loc2_)
                                    {
                                       addr38:
                                       if(_loc1_ && §,Z§)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             enabled = false;
                                             addr50:
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc2_ || §,Z§)
                                                {
                                                   addr57:
                                                   if(!(_loc2_ || §,Z§))
                                                   {
                                                      addr90:
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            addr107:
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               §,+§ = "crash-trace";
                                                               break loop14;
                                                            }
                                                            break;
                                                         }
                                                         continue loop0;
                                                         §§goto(addr57);
                                                      }
                                                      continue loop6;
                                                      addr90:
                                                   }
                                                   §§goto(addr64);
                                                }
                                                break;
                                                §§goto(addr73);
                                             }
                                             while(!_loc1_)
                                             {
                                                §&x§ = "mem-edit";
                                                continue loop13;
                                                §§goto(addr50);
                                             }
                                             addr119:
                                             while(!_loc1_)
                                             {
                                                §+!V§ = "crash-log";
                                                §§goto(addr90);
                                             }
                                             continue loop5;
                                          }
                                          addr78:
                                       }
                                       return;
                                    }
                                    §§goto(addr50);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        if(!(_loc1_ && _loc2_))
                        {
                           ACTION_CPU_FPS_REPORT = "cpu-rendering";
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §,Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §6!$§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §>%§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            trackEvent(§=!H§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            trackSampledEvent(§6!O§,param1,param2,param3,param4);
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
                  addr42:
                  §+!Y§.§]5§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
