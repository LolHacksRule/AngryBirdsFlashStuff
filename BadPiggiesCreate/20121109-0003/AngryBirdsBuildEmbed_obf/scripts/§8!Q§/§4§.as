package §8!Q§
{
   import §=V§.§,m§;
   import flash.display.DisplayObject;
   
   public class §4§
   {
      
      protected static const §'"§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §[N§:String = "flash";
      
      public static const §%!H§:String = "initialized";
      
      public static const §9!c§:String = "loaded";
      
      public static const §#!e§:String = "level-started";
      
      public static const §1!k§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §[!D§:String = "crash-log";
      
      public static const §--§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §9!"§:Vector.<§0!&§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'"§ = "trackEvent";
         }
         if(_loc1_ || §4§)
         {
            ACTION_GPU_FPS_REPORT = "gpu-rendering";
            ACTION_CPU_FPS_REPORT = "cpu-rendering";
         }
         if(!_loc2_)
         {
            §[!D§ = "crash-log";
            §--§ = "crash-trace";
            enabled = false;
            §9!"§ = new Vector.<§0!&§>();
         }
      }
      
      public function §4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §,!S§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §?!@§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            trackEvent(§[N§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §#!F§(§'"§,param1,param2,param3,param4);
         }
      }
      
      protected static function §#!F§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(enabled)
            {
               if(!(_loc7_ && §4§))
               {
                  addr27:
                  §,m§.performCall(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr27);
      }
   }
}
