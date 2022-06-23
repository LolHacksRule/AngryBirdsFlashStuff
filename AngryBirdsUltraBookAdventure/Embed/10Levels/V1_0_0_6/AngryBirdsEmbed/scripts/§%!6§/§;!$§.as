package §%!6§
{
   import §>R§.§?K§;
   import flash.display.DisplayObject;
   
   public class §;!$§
   {
      
      protected static const §79§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §2`§:String = "flash";
      
      public static const §@C§:String = "initialized";
      
      public static const § m§:String = "loaded";
      
      public static const §]x§:String = "level-started";
      
      public static const §9!C§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §7'§:String = "crash-log";
      
      public static const §'!+§:String = "crash-trace";
      
      public static const §2F§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §-!%§:Vector.<§"6§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §;!$§))
         {
            §79§ = "trackEvent";
            TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
            if(!_loc1_)
            {
               TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
               if(!_loc1_)
               {
                  §2`§ = "flash";
                  §@C§ = "initialized";
                  if(_loc2_ || _loc2_)
                  {
                     § m§ = "loaded";
                     §]x§ = "level-started";
                  }
                  §9!C§ = "level-completed";
                  if(!_loc1_)
                  {
                     ACTION_GPU_FPS_REPORT = "gpu-rendering";
                     if(_loc2_ || _loc1_)
                     {
                        ACTION_CPU_FPS_REPORT = "cpu-rendering";
                        if(_loc2_ || _loc1_)
                        {
                           ACTION_APPLICATION_CRASH = "crashed";
                           if(_loc2_ || _loc2_)
                           {
                              addr111:
                              §7'§ = "crash-log";
                              if(!_loc1_)
                              {
                                 §'!+§ = "crash-trace";
                                 §§goto(addr119);
                              }
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr111);
            }
            addr119:
            §2F§ = "mem-edit";
            if(!(_loc1_ && _loc1_))
            {
               addr129:
               enabled = false;
               addr132:
               §-!%§ = new Vector.<§"6§>();
            }
            return;
         }
         §§goto(addr111);
      }
      
      public function §;!$§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §1!I§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §]c§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            trackEvent(§2`§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            §?x§(§79§,param1,param2,param3,param4);
         }
      }
      
      protected static function §?x§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(enabled)
            {
               if(_loc6_)
               {
                  addr22:
                  §?K§.§+v§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr22);
      }
   }
}
