package §>P§
{
   import flash.utils.getTimer;
   
   public class §"N§ extends §+!%§
   {
      
      public static const §7O§:String = "level-selection";
      
      public static const §1j§:String = "registration-success";
      
      public static const §5"§:String = "registration-failure";
      
      public static const §8!"§:String = "registration-attempt";
      
      public static const §9m§:String = "login-success";
      
      public static const §7g§:String = "login-failure";
      
      private static const §6V§:Boolean = §=i§.§2!@§;
      
      private static const §28§:String = "framerate";
      
      private static const §%Z§:String = "warning";
      
      private static const §>_§:String = "user-statistics";
      
      private static const §-`§:String = "error";
      
      private static const §5e§:String = "download-failed";
      
      private static const §5!6§:String = "invalid-level";
      
      private static const §-n§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§5!8§,§`!S§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§61§,§&!&§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§28§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§-`§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const § +§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §,H§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §%E§:Array = [];
       
      
      public function §"N§()
      {
         super();
      }
      
      public static function §"!4§() : void
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
      
      public static function §'!C§(param1:int, param2:int) : void
      {
         §0o§(§+!%§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §0o§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §'Z§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §+!%§.trackSampledEvent(_loc4_,§^T§,param1,param2,param3);
      }
      
      public static function §]!1§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§%E§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §%E§.length == 0;
         §%E§.push(param2);
         if(param3)
         {
            _loc6_ = §+!%§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"N§.§ +§;
            }
         }
         else
         {
            _loc6_ = §+!%§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"N§.§,H§;
            }
         }
         if(_loc5_)
         {
            §0o§(_loc6_,param1.toString(),param1);
         }
         §!!2§(§28§,_loc6_,param2,param1);
      }
      
      public static function §^z§(param1:String) : void
      {
         §!!2§(§%Z§,§5e§,param1,0);
      }
      
      public static function §;!1§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §!!2§(§%Z§,§5!6§,param1,0);
      }
      
      public static function §#!-§(param1:String) : void
      {
         §!!2§(§%Z§,§-n§,param1,0);
      }
      
      public static function §@;§(param1:String) : void
      {
         §!!2§(§-`§,param1,"",0,false);
      }
      
      private static function §!!2§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §[!7§;
            if(param5)
            {
               _loc6_ = §'Z§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §'Z§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §[!7§;
      }
      
      private static function §[!G§(param1:Array) : String
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
      
      private static function §+!D§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
