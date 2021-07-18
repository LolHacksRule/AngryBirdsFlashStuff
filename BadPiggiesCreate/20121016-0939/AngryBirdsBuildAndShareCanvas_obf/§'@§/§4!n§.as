package §'@§
{
   import §9";§.§#!c§;
   import flash.display.DisplayObject;
   
   public class §4!n§
   {
      
      protected static const §#,§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §@$§:String = "flash";
      
      public static const §%!Q§:String = "initialized";
      
      public static const §&!1§:String = "loaded";
      
      public static const §^",§:String = "level-started";
      
      public static const §]!y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §3!c§:String = "crash-log";
      
      public static const §'"&§:String = "crash-trace";
      
      public static const §6C§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §^§:Vector.<§!+§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §4!n§)
         {
            §#,§ = "trackEvent";
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
                     §@$§ = "flash";
                     while(!_loc1_)
                     {
                        §%!Q§ = "initialized";
                        loop4:
                        while(true)
                        {
                           §&!1§ = "loaded";
                           loop5:
                           while(true)
                           {
                              §^",§ = "level-started";
                              loop6:
                              for(; _loc2_; if(_loc2_ || _loc2_)
                              {
                                 continue loop4;
                              })
                              {
                                 §]!y§ = "level-completed";
                                 loop7:
                                 while(true)
                                 {
                                    ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                    while(true)
                                    {
                                       ACTION_CPU_FPS_REPORT = "cpu-rendering";
                                       while(_loc2_)
                                       {
                                          ACTION_APPLICATION_CRASH = "crashed";
                                          while(_loc2_)
                                          {
                                             §3!c§ = "crash-log";
                                             while(true)
                                             {
                                                §'"&§ = "crash-trace";
                                                continue loop7;
                                                addr50:
                                                if(_loc2_ || §4!n§)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             addr83:
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §^§ = new Vector.<§!+§>();
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr43:
                                                         if(_loc1_ && _loc2_)
                                                         {
                                                            while(!_loc1_)
                                                            {
                                                               enabled = false;
                                                               §§goto(addr43);
                                                            }
                                                            continue loop2;
                                                            addr102:
                                                         }
                                                         §§goto(addr50);
                                                      }
                                                      addr76:
                                                      while(_loc2_ || §4!n§)
                                                      {
                                                         §§goto(addr83);
                                                         continue loop15;
                                                      }
                                                      continue loop7;
                                                   }
                                                   return;
                                                   addr71:
                                                   addr97:
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           if(!(_loc2_ || _loc1_))
                           {
                              continue;
                           }
                           §§goto(addr71);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      public function §4!n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §'!b§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §@!Q§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            trackEvent(§@$§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            trackSampledEvent(§#,§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(enabled)
            {
               if(!(_loc7_ && §4!n§))
               {
                  addr47:
                  §#!c§.performCall(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr47);
      }
   }
}
