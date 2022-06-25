package §<-§
{
   import §>L§.§+!i§;
   import flash.display.DisplayObject;
   
   public class §5Z§
   {
      
      protected static const §``§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §^!u§:String = "flash";
      
      public static const §+!q§:String = "initialized";
      
      public static const §@!<§:String = "loaded";
      
      public static const §[@§:String = "level-started";
      
      public static const §0O§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §^,§:String = "crash-log";
      
      public static const §<!q§:String = "crash-trace";
      
      public static const §8!D§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §=N§:Vector.<§#z§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §``§ = "trackEvent";
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
                     §^!u§ = "flash";
                     addr170:
                     while(true)
                     {
                        §+!q§ = "initialized";
                        loop4:
                        while(true)
                        {
                           §@!<§ = "loaded";
                           loop5:
                           while(true)
                           {
                              §[@§ = "level-started";
                              addr155:
                              while(true)
                              {
                                 §0O§ = "level-completed";
                                 while(true)
                                 {
                                    ACTION_GPU_FPS_REPORT = "gpu-rendering";
                                    while(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             ACTION_CPU_FPS_REPORT = "cpu-rendering";
                                             continue loop4;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                       if(_loc2_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop5;
                                       }
                                       §<!q§ = "crash-trace";
                                       while(true)
                                       {
                                          §8!D§ = "mem-edit";
                                          addr55:
                                          while(!_loc2_)
                                          {
                                             continue loop1;
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
            }
         }
         while(true)
         {
            §=N§ = new Vector.<§#z§>();
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr170);
               }
               §§goto(addr55);
            }
            §§goto(addr46);
         }
      }
      
      public function §5Z§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function § !j§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §&!v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            trackEvent(§^!u§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            trackSampledEvent(§``§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            if(enabled)
            {
               if(!(_loc7_ && param3))
               {
                  §+!i§.§>!y§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
