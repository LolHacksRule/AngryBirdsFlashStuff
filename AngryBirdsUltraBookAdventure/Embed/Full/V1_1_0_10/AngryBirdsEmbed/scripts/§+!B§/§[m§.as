package §+!B§
{
   import §<d§.§9!1§;
   import flash.display.DisplayObject;
   
   public class §[m§
   {
      
      protected static const §81§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §;>§:String = "flash";
      
      public static const § 2§:String = "initialized";
      
      public static const §0!4§:String = "loaded";
      
      public static const §'!%§:String = "level-started";
      
      public static const §0Y§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §@! §:String = "crash-log";
      
      public static const §?c§:String = "crash-trace";
      
      public static const §-!2§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §?6§:Vector.<§7`§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
         }
         if(_loc1_)
         {
            §;>§ = "flash";
            § 2§ = "initialized";
            §0!4§ = "loaded";
            §'!%§ = "level-started";
            §0Y§ = "level-completed";
            ACTION_GPU_FPS_REPORT = "gpu-rendering";
            if(_loc1_)
            {
               addr64:
               ACTION_CPU_FPS_REPORT = "cpu-rendering";
               if(_loc1_ || §[m§)
               {
                  ACTION_APPLICATION_CRASH = "crashed";
                  if(_loc1_ || §[m§)
                  {
                     §@! § = "crash-log";
                     if(_loc1_)
                     {
                        §?c§ = "crash-trace";
                        §-!2§ = "mem-edit";
                        if(_loc1_)
                        {
                           addr107:
                           enabled = false;
                           addr110:
                           §?6§ = new Vector.<§7`§>();
                        }
                     }
                     return;
                  }
               }
               §§goto(addr110);
            }
            §§goto(addr107);
         }
         §§goto(addr64);
      }
      
      public function §[m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §%x§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §"!A§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            trackEvent(§;>§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && §[m§))
         {
            §8s§(§81§,param1,param2,param3,param4);
         }
      }
      
      protected static function §8s§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            if(enabled)
            {
               if(_loc7_ || param3)
               {
                  §9!1§.§!!I§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
