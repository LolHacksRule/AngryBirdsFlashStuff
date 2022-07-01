package §%f§
{
   import flash.utils.getTimer;
   
   public class §"!i§ extends §?6§
   {
      
      public static const §?9§:String = "level-selection";
      
      public static const §>!9§:String = "registration-success";
      
      public static const §?v§:String = "registration-failure";
      
      public static const §2=§:String = "login-success";
      
      public static const §8!j§:String = "login-failure";
      
      private static const §>;§:Boolean = §-O§.§5Y§;
      
      private static const §0X§:String = "framerate";
      
      private static const §->§:String = "powerup-used";
      
      private static const §>!2§:String = "level-powerup-used";
      
      private static const §!!J§:String = "warning";
      
      private static const §9!,§:String = "user-statistics";
      
      private static const §+!z§:String = "error";
      
      private static const §@!V§:String = "download-failed";
      
      private static const §7o§:String = "invalid-level";
      
      private static const §64§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§!!M§,§%!i§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§,;§,§4e§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§0X§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§+!z§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §!n§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §"C§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §7d§:Array = [];
       
      
      public function §"!i§()
      {
         super();
      }
      
      public static function §]!f§() : void
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
      
      public static function §+D§(param1:int, param2:int) : void
      {
         §&!R§(§?6§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §&!R§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §3-§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §?6§.trackSampledEvent(_loc5_,§4q§,param1,param2,param3);
      }
      
      public static function §,R§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§7d§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §7d§.length == 0;
         §7d§.push(param2);
         if(param3)
         {
            _loc6_ = §?6§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"!i§.§!n§;
            }
         }
         else
         {
            _loc6_ = §?6§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"!i§.§"C§;
            }
         }
         if(_loc5_)
         {
            §&!R§(_loc6_,param1.toString(),param1);
         }
         §#!7§(§0X§,_loc6_,param2,param1);
      }
      
      public static function §0x§(param1:String) : void
      {
         §#!7§(§!!J§,§@!V§,param1,0);
      }
      
      public static function §1!z§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §#!7§(§!!J§,§7o§,param1,0);
      }
      
      public static function §,l§(param1:String) : void
      {
         §#!7§(§!!J§,§64§,param1,0);
      }
      
      public static function §^X§(param1:String) : void
      {
         §#!7§(§+!z§,param1,"",0,false);
      }
      
      private static function §#!7§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §'l§;
            if(param5)
            {
               _loc6_ = §3-§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §4!Q§(param1:String, param2:String) : void
      {
         var _loc3_:int = §4]§();
         §0!`§(§->§,param1,param2,0);
         §0!`§(§>!2§,param2,param1,0);
      }
      
      private static function §0!`§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §'l§;
            if(param5)
            {
               _loc6_ = §3-§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §3-§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §'l§;
      }
      
      private static function §1!E§(param1:Array) : String
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
      
      private static function §4]§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
