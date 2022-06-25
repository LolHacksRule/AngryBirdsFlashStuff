package §_-eS§
{
   import §_-Y8§.§_-05J§;
   import flash.display.DisplayObject;
   
   public class §_-Za§
   {
      
      protected static const §_-0Ai§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §_-042§:String = "flash";
      
      public static const §_-R6§:String = "initialized";
      
      public static const §_-2N§:String = "loaded";
      
      public static const §_-ku§:String = "level-started";
      
      public static const §_-yA§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §_-5v§:String = "crash-log";
      
      public static const §_-j2§:String = "crash-trace";
      
      public static const §_-jk§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §_-VB§:Vector.<§_-0M§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-0Ai§ = "trackEvent";
            loop0:
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               loop1:
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  loop2:
                  for(; _loc2_; while(_loc2_ || §_-Za§)
                  {
                     continue loop1;
                     §§goto(addr118);
                  })
                  {
                     §_-042§ = "flash";
                     while(true)
                     {
                        §_-R6§ = "initialized";
                        continue loop2;
                        addr75:
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        enabled = false;
                        loop14:
                        for(; _loc2_; while(true)
                        {
                           §_-VB§ = new Vector.<§_-0M§>();
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop14;
                        },return)
                        {
                           addr45:
                           if(_loc2_ || _loc1_)
                           {
                              addr52:
                              if(_loc2_ || _loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    ACTION_CPU_FPS_REPORT = "cpu-rendering";
                                    addr130:
                                    while(true)
                                    {
                                       ACTION_APPLICATION_CRASH = "crashed";
                                    }
                                 }
                                 addr135:
                              }
                              loop10:
                              while(true)
                              {
                                 if(!_loc1_)
                                 {
                                    addr118:
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue loop2;
                                    }
                                    §_-5v§ = "crash-log";
                                    while(true)
                                    {
                                       §_-j2§ = "crash-trace";
                                       addr97:
                                       while(_loc2_)
                                       {
                                          addr99:
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             §_-jk§ = "mem-edit";
                                             break loop14;
                                          }
                                          addr150:
                                          while(true)
                                          {
                                             §_-ku§ = "level-started";
                                             break loop10;
                                             §§goto(addr99);
                                          }
                                       }
                                       §§goto(addr130);
                                       §§goto(addr45);
                                    }
                                 }
                                 break;
                                 §§goto(addr52);
                              }
                              while(true)
                              {
                                 §_-yA§ = "level-completed";
                                 while(true)
                                 {
                                    ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                    §§goto(addr135);
                                    addr68:
                                    if(!(_loc2_ || _loc1_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr75);
                                 }
                              }
                           }
                           §§goto(addr111);
                        }
                        while(!_loc1_)
                        {
                           §§goto(addr68);
                        }
                        §§goto(addr97);
                     }
                  }
                  continue loop0;
                  if(!(_loc2_ || §_-Za§))
                  {
                     continue;
                  }
                  §_-2N§ = "loaded";
                  §§goto(addr150);
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §_-Za§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §_-YL§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §_-Ve§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && §_-Za§))
         {
            trackEvent(§_-042§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            trackSampledEvent(§_-0Ai§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            if(enabled)
            {
               if(_loc6_ || param2)
               {
                  addr42:
                  §_-05J§.§_-0At§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
