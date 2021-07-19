package §0!!§
{
   import flash.display.DisplayObject;
   
   public class §+i§
   {
      
      protected static const §>6§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §=!§:String = "flash";
      
      public static const § E§:String = "initialized";
      
      public static const §`!9§:String = "loaded";
      
      public static const §<K§:String = "level-started";
      
      public static const §^=§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §#4§:String = "crash-log";
      
      public static const §3%§:String = "crash-trace";
      
      public static var enabled:Boolean = false;
      
      private static var §-e§:Vector.<§0U§>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            §`!9§ = "loaded";
            §<K§ = "level-started";
            §^=§ = "level-completed";
            while(true)
            {
               ACTION_GPU_FPS_REPORT = "gpu-rendering";
               addr83:
               while(true)
               {
                  ACTION_CPU_FPS_REPORT = "cpu-rendering";
                  continue loop0;
               }
               addr37:
               if(_loc1_ || _loc2_)
               {
                  §-e§ = new Vector.<§0U§>();
                  addr44:
                  if(_loc2_)
                  {
                     while(!_loc2_)
                     {
                        §§goto(addr37);
                        §§goto(addr44);
                     }
                     §§goto(addr83);
                     addr35:
                  }
                  return;
               }
            }
         }
      }
      
      public function §+i§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §4g§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §3!7§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            trackEvent(§=!§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §[c§(§>6§,param1,param2,param3,param4);
         }
      }
      
      protected static function §[c§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            if(enabled)
            {
               if(_loc7_)
               {
                  §%B§.§,!2§(param1,param2,param3,param4,param5);
               }
            }
         }
      }
   }
}
