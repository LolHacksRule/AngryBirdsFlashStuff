package §'!n§
{
   import flash.utils.getTimer;
   
   public class §1!x§ extends §3"7§
   {
      
      public static const §[!X§:String = "level-selection";
      
      public static const §<`§:String = "registration-success";
      
      public static const §?!W§:String = "registration-failure";
      
      public static const §7<§:String = "login-success";
      
      public static const §+i§:String = "login-failure";
      
      private static const §7h§:Boolean = §&"<§.§;!§;
      
      private static const §%"C§:String = "framerate";
      
      private static const §`!N§:String = "powerup-used";
      
      private static const §-H§:String = "level-powerup-used";
      
      private static const §!N§:String = "warning";
      
      private static const §^!Q§:String = "user-statistics";
      
      private static const §7!A§:String = "error";
      
      private static const §>S§:String = "download-failed";
      
      private static const §=t§:String = "invalid-level";
      
      private static const §1"#§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§%6§,§`!h§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§>-§,§%"&§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§%"C§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§7!A§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §0h§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const § "F§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §%!3§:Array = [];
       
      
      public function §1!x§()
      {
         super();
      }
      
      public static function §'x§() : void
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
      
      public static function §#P§(param1:int, param2:int) : void
      {
         §6"6§(§3"7§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §6"6§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §+!I§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §3"7§.trackSampledEvent(_loc5_,§@!=§,param1,param2,param3);
      }
      
      public static function §8!P§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§%!3§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §%!3§.length == 0;
         §%!3§.push(param2);
         if(param3)
         {
            _loc6_ = §3"7§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §1!x§.§0h§;
            }
         }
         else
         {
            _loc6_ = §3"7§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §1!x§.§ "F§;
            }
         }
         if(_loc5_)
         {
            §6"6§(_loc6_,param1.toString(),param1);
         }
         §?"<§(§%"C§,_loc6_,param2,param1);
      }
      
      public static function §0",§(param1:String) : void
      {
         §?"<§(§!N§,§>S§,param1,0);
      }
      
      public static function §4!§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §?"<§(§!N§,§=t§,param1,0);
      }
      
      public static function §`!l§(param1:String) : void
      {
         §?"<§(§!N§,§1"#§,param1,0);
      }
      
      public static function §%!n§(param1:String) : void
      {
         §?"<§(§7!A§,param1,"",0,false);
      }
      
      private static function §?"<§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §"""§;
            if(param5)
            {
               _loc6_ = §+!I§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §7F§(param1:String, param2:String) : void
      {
         var _loc3_:int = §`"7§();
         §@!2§(§`!N§,param1,param2,0);
         §@!2§(§-H§,param2,param1,0);
      }
      
      private static function §@!2§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §"""§;
            if(param5)
            {
               _loc6_ = §+!I§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §+!I§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §"""§;
      }
      
      private static function §"1§(param1:Array) : String
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
      
      private static function §`"7§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
