package §!!&§
{
   import flash.utils.getTimer;
   
   public class §!!q§ extends §@!C§
   {
      
      public static const §-!,§:String = "level-selection";
      
      public static const §"!r§:String = "registration-success";
      
      public static const §=U§:String = "registration-failure";
      
      public static const §=5§:String = "login-success";
      
      public static const §!R§:String = "login-failure";
      
      private static const §#!h§:Boolean = §,!X§.§?!,§;
      
      private static const §7"§:String = "framerate";
      
      private static const §8<§:String = "powerup-used";
      
      private static const §'`§:String = "level-powerup-used";
      
      private static const §6!z§:String = "warning";
      
      private static const §,-§:String = "user-statistics";
      
      private static const §7!#§:String = "error";
      
      private static const §=k§:String = "download-failed";
      
      private static const §4i§:String = "invalid-level";
      
      private static const §4!y§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§!F§,§%!5§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§4x§,§<!=§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§7"§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§7!#§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §8!4§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §-j§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §9!>§:Array = [];
       
      
      public function §!!q§()
      {
         super();
      }
      
      public static function §#K§() : void
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
      
      public static function §3!H§(param1:int, param2:int) : void
      {
         §-!Y§(§@!C§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §-!Y§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §[9§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §@!C§.trackSampledEvent(_loc5_,§default§,param1,param2,param3);
      }
      
      public static function §2`§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§9!>§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §9!>§.length == 0;
         §9!>§.push(param2);
         if(param3)
         {
            _loc6_ = §@!C§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!!q§.§8!4§;
            }
         }
         else
         {
            _loc6_ = §@!C§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!!q§.§-j§;
            }
         }
         if(_loc5_)
         {
            §-!Y§(_loc6_,param1.toString(),param1);
         }
         §@!3§(§7"§,_loc6_,param2,param1);
      }
      
      public static function §'!n§(param1:String) : void
      {
         §@!3§(§6!z§,§=k§,param1,0);
      }
      
      public static function §@!O§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §@!3§(§6!z§,§4i§,param1,0);
      }
      
      public static function §^S§(param1:String) : void
      {
         §@!3§(§6!z§,§4!y§,param1,0);
      }
      
      public static function §-!%§(param1:String) : void
      {
         §@!3§(§7!#§,param1,"",0,false);
      }
      
      private static function §@!3§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §,"'§;
            if(param5)
            {
               _loc6_ = §[9§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §=!s§(param1:String, param2:String) : void
      {
         var _loc3_:int = §"!i§();
         §2!a§(§8<§,param1,param2,0);
         §2!a§(§'`§,param2,param1,0);
      }
      
      private static function §2!a§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §,"'§;
            if(param5)
            {
               _loc6_ = §[9§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §[9§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §,"'§;
      }
      
      private static function §=!m§(param1:Array) : String
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
      
      private static function §"!i§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
