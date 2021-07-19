package §!V§
{
   import §=!g§.§!!@§;
   import flash.display.DisplayObject;
   
   public class §<!g§
   {
      
      protected static const §?!N§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §3A§:String = "flash";
      
      public static const §8Q§:String = "initialized";
      
      public static const §0B§:String = "loaded";
      
      public static const §#S§:String = "level-started";
      
      public static const §0!=§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §^!A§:String = "crash-log";
      
      public static const §#!b§:String = "crash-trace";
      
      public static const §6!h§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §&!%§:Vector.<§?b§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §<!g§)
         {
            §?!N§ = "trackEvent";
         }
         while(true)
         {
            TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
            loop1:
            while(true)
            {
               TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
               while(true)
               {
                  §3A§ = "flash";
                  loop3:
                  for(; _loc2_; if(!(_loc1_ && _loc2_))
                  {
                     return;
                  })
                  {
                     §8Q§ = "initialized";
                     while(true)
                     {
                        §0B§ = "loaded";
                        loop5:
                        for(; _loc2_ || _loc1_; if(!(_loc1_ && §<!g§))
                        {
                           continue loop1;
                        })
                        {
                           §#S§ = "level-started";
                           loop6:
                           while(true)
                           {
                              §0!=§ = "level-completed";
                              loop7:
                              while(true)
                              {
                                 ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                 loop8:
                                 while(true)
                                 {
                                    ACTION_CPU_FPS_REPORT = "cpu-rendering";
                                    while(!_loc1_)
                                    {
                                       ACTION_APPLICATION_CRASH = "crashed";
                                       do
                                       {
                                          §^!A§ = "crash-log";
                                          loop11:
                                          while(true)
                                          {
                                             §#!b§ = "crash-trace";
                                             addr111:
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                   continue loop7;
                                                }
                                                continue loop11;
                                                addr71:
                                                while(true)
                                                {
                                                   if(!(_loc1_ && §<!g§))
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop12;
                                                }
                                                continue loop1;
                                             }
                                             continue loop7;
                                          }
                                       }
                                       while(_loc1_);
                                       
                                       continue loop3;
                                       while(_loc2_ || §<!g§)
                                       {
                                          §&!%§ = new Vector.<§?b§>();
                                          if(!(_loc2_ || §<!g§))
                                          {
                                             continue;
                                          }
                                          if(_loc2_)
                                          {
                                             §§goto(addr45);
                                          }
                                          else
                                          {
                                             §§goto(addr71);
                                          }
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §<!g§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §5!X§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §@Y§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §<!g§))
         {
            trackEvent(§3A§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            trackSampledEvent(§?!N§,param1,param2,param3,param4);
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
               if(_loc7_)
               {
                  §!!@§.§%Q§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
