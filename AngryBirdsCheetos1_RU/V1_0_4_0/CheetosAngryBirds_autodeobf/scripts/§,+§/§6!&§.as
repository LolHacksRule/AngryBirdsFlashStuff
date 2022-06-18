package §,+§
{
   import flash.utils.getTimer;
   
   public class §6!&§ extends §4!Z§
   {
      
      private static const §,!B§:Boolean = §7d§.§#[§;
      
      private static const §5-§:String = "framerate";
      
      private static const §,4§:String = "warning";
      
      private static const §!h§:String = "user-statistics";
      
      private static const §!!Z§:String = "error";
      
      private static const §0!a§:String = "download-failed";
      
      private static const §,!?§:String = "invalid-level";
      
      private static const §?7§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§+!`§,§!!5§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§!e§,§0!R§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§5-§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§!!Z§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §5!6§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §%!T§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §1D§:Array = [];
      
      public static const §4!U§:String = "level-selection";
       
      
      public function §6!&§()
      {
         super();
      }
      
      public static function §#L§() : void
      {
         if(Math.random() <= 0.1)
         {
            sSample10Percent = true;
         }
         if(Math.random() <= 0.01)
         {
            sSample1Percent = true;
         }
      }
      
      public static function §7!A§(param1:int, param2:int) : void
      {
         §08§(§4!Z§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §08§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §30§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §4!Z§.trackSampledEvent(_loc4_,§2!B§,param1,param2,param3);
      }
      
      public static function §7`§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§1D§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §1D§.length == 0;
         §1D§.push(param2);
         if(param3)
         {
            _loc6_ = §4!Z§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6!&§.§5!6§;
            }
         }
         else
         {
            _loc6_ = §4!Z§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6!&§.§%!T§;
            }
         }
         if(_loc5_)
         {
            §08§(_loc6_,param1.toString(),param1);
         }
         §^2§(§5-§,_loc6_,param2,param1);
      }
      
      public static function §>!!§(param1:String) : void
      {
         §^2§(§,4§,§0!a§,param1,0);
      }
      
      public static function §]!-§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §^2§(§,4§,§,!?§,param1,0);
      }
      
      public static function §3#§(param1:String) : void
      {
         §^2§(§,4§,§?7§,param1,0);
      }
      
      public static function § f§(param1:String) : void
      {
         §^2§(§!!Z§,param1,"",0,false);
      }
      
      private static function §^2§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=!;§;
            if(param5)
            {
               _loc6_ = §30§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §30§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §=!;§;
      }
      
      private static function §?V§(param1:Array) : String
      {
         var _loc4_:String = null;
         if(param1 == null || param1.length == 0)
         {
            return null;
         }
         var _loc2_:String = "";
         var _loc3_:Array = param1.concat();
         _loc3_.sort();
         for each(_loc4_ in _loc3_)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += "-" + _loc4_;
            }
            else
            {
               _loc2_ = _loc4_;
            }
         }
         return _loc2_;
      }
      
      private static function § m§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
