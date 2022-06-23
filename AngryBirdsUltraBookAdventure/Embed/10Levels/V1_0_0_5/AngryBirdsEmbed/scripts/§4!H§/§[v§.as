package §4!H§
{
   import §1!E§.§<w§;
   import flash.display.DisplayObject;
   
   public class §[v§
   {
      
      protected static const §-<§:String = "trackEvent";
      
      protected static const TRACKING_FUNCTION_10_PERCENT:String = "trackEvent10Percent";
      
      protected static const TRACKING_FUNCTION_1_PERCENT:String = "trackEvent1Percent";
      
      protected static const §+2§:String = "flash";
      
      public static const §?i§:String = "initialized";
      
      public static const §&! §:String = "loaded";
      
      public static const §<J§:String = "level-started";
      
      public static const §break§:String = "level-completed";
      
      public static const ACTION_GPU_FPS_REPORT:String = "gpu-rendering";
      
      public static const ACTION_CPU_FPS_REPORT:String = "cpu-rendering";
      
      public static const ACTION_APPLICATION_CRASH:String = "crashed";
      
      public static const §]W§:String = "crash-log";
      
      public static const §"1§:String = "crash-trace";
      
      public static const §!l§:String = "mem-edit";
      
      public static var enabled:Boolean = false;
      
      private static var §'&§:Vector.<§+D§>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §[v§))
         {
            §-<§ = "trackEvent";
            TRACKING_FUNCTION_10_PERCENT = "trackEvent10Percent";
            if(!_loc1_)
            {
               TRACKING_FUNCTION_1_PERCENT = "trackEvent1Percent";
               if(!_loc1_)
               {
                  §+2§ = "flash";
                  §?i§ = "initialized";
                  if(_loc2_ || _loc2_)
                  {
                     §&! § = "loaded";
                     §<J§ = "level-started";
                  }
                  §break§ = "level-completed";
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
                              §]W§ = "crash-log";
                              if(!_loc1_)
                              {
                                 §"1§ = "crash-trace";
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
            §!l§ = "mem-edit";
            if(!(_loc1_ && _loc1_))
            {
               addr129:
               enabled = false;
               addr132:
               §'&§ = new Vector.<§+D§>();
            }
            return;
         }
         §§goto(addr111);
      }
      
      public function §[v§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §97§(param1:DisplayObject, param2:String) : void
      {
      }
      
      public static function §,9§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            trackEvent(§+2§,param1,param2,param3);
         }
      }
      
      private static function trackEvent(param1:String, param2:String, param3:String, param4:int = 0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            §7q§(§-<§,param1,param2,param3,param4);
         }
      }
      
      protected static function §7q§(param1:String, param2:String, param3:String, param4:String, param5:int = 0) : void
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
                  §<w§.§1x§(param1,param2,param3,param4,param5);
               }
            }
            return;
         }
         §§goto(addr22);
      }
   }
}
