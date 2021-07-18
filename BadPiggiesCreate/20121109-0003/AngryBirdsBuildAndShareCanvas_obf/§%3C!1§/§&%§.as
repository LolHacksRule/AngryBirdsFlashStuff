package §<!1§
{
   import §[!8§.§6!H§;
   import flash.display.DisplayObject;
   
   public class §&%§
   {
      
      protected static const §@!C§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §^R§:String = "flash";
      
      public static const §if§:String = "initialized";
      
      public static const §`!2§:String = "loaded";
      
      public static const §+S§:String = "level-started";
      
      public static const §,!@§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §2v§:String = "crash-log";
      
      public static const §!!`§:String = "crash-trace";
      
      public static const §[!-§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §3!]§:Vector.<§&"0§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@!C§ = "trackEvent";
            while(true)
            {
               TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
               while(true)
               {
                  TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
                  while(_loc1_ || _loc2_)
                  {
                     §^R§ = "flash";
                     while(true)
                     {
                        §if§ = "initialized";
                        loop4:
                        while(true)
                        {
                           §`!2§ = "loaded";
                           while(true)
                           {
                              §+S§ = "level-started";
                              addr134:
                              while(!_loc2_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        while(_loc1_ || _loc2_)
                        {
                           ACTION_CPU_FPS_REPORT = "cpu-rendering";
                           §§goto(addr110);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §&%§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §2H§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §#W§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §&%§))
         {
            trackEvent(§^R§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            trackSampledEvent(§@!C§,param1,param2,param3,param4);
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
               if(!(_loc6_ && param2))
               {
                  addr48:
                  §6!H§.§2!i§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
