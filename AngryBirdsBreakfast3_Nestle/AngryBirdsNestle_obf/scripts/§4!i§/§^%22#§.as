package §4!i§
{
   import §;V§.§%c§;
   import flash.display.DisplayObject;
   
   public class §^"#§
   {
      
      protected static const §;i§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §&Q§:String = "flash";
      
      public static const §5T§:String = "initialized";
      
      public static const §-B§:String = "loaded";
      
      public static const §61§:String = "level-started";
      
      public static const §&!$§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §3",§:String = "crash-log";
      
      public static const §9"&§:String = "crash-trace";
      
      public static const § !2§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §='§:Vector.<§0!2§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;i§ = "trackEvent";
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
                     §&Q§ = "flash";
                     addr170:
                     addr84:
                     while(true)
                     {
                        §5T§ = "initialized";
                        continue loop1;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           §9"&§ = "crash-trace";
                           while(true)
                           {
                              § !2§ = "mem-edit";
                              addr60:
                              loop14:
                              while(!(_loc2_ && _loc2_))
                              {
                                 enabled = false;
                                 while(true)
                                 {
                                    if(!(_loc2_ && §^"#§))
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop14;
                                 }
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§goto(addr84);
                                    }
                                    else
                                    {
                                       §§goto(addr129);
                                    }
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                        return;
                        addr101:
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function §^"#§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §'!5§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §1x§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            trackEvent(§&Q§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            trackSampledEvent(§;i§,param1,param2,param3,param4);
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
                  §%c§.§6"§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
