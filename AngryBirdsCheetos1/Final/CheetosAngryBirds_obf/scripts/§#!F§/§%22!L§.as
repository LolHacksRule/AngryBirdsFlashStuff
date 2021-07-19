package §#!F§
{
   import §&!7§.§,!A§;
   import flash.display.DisplayObject;
   
   public class §"!L§
   {
      
      protected static const §9t§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §!!R§:String = "flash";
      
      public static const §;Z§:String = "initialized";
      
      public static const §?P§:String = "loaded";
      
      public static const §0y§:String = "level-started";
      
      public static const §6>§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §;!O§:String = "crash-log";
      
      public static const §#!7§:String = "crash-trace";
      
      public static const §"!'§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §'!V§:Vector.<§%%§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9t§ = "trackEvent";
            loop0:
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               loop1:
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  while(true)
                  {
                     §!!R§ = "flash";
                     addr175:
                     while(true)
                     {
                        §;Z§ = "initialized";
                        continue loop1;
                     }
                     addr127:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     ACTION_GPU_FPS_REPORT = "gpu-rendering";
                     loop9:
                     while(true)
                     {
                        ACTION_CPU_FPS_REPORT = "cpu-rendering";
                        while(true)
                        {
                           ACTION_APPLICATION_CRASH = "crashed";
                           loop11:
                           while(_loc1_ || §"!L§)
                           {
                              §;!O§ = "crash-log";
                              while(_loc1_)
                              {
                                 §#!7§ = "crash-trace";
                                 loop13:
                                 while(true)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop11;
                                    }
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §"!'§ = "mem-edit";
                                    while(true)
                                    {
                                       enabled = false;
                                       while(!_loc2_)
                                       {
                                          if(_loc1_)
                                          {
                                             §'!V§ = new Vector.<§%%§>();
                                             if(_loc1_ || §"!L§)
                                             {
                                                continue loop13;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       addr151:
                                       while(_loc1_ || §"!L§)
                                       {
                                          §6>§ = "level-completed";
                                          continue loop8;
                                       }
                                       while(_loc1_ || §"!L§)
                                       {
                                          §0y§ = "level-started";
                                          §§goto(addr139);
                                       }
                                       addr139:
                                       continue loop1;
                                       addr151:
                                    }
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr175);
                                 continue loop11;
                              }
                              continue loop9;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §?P§ = "loaded";
            §§goto(addr151);
         }
      }
      
      public function §"!L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §1!-§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §`0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            trackEvent(§!!R§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            trackSampledEvent(§9t§,param1,param2,param3,param4);
         }
      }
      
      protected static function trackSampledEvent(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(enabled)
            {
               if(!_loc6_)
               {
                  addr43:
                  §,!A§.§9!M§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr43);
      }
   }
}
