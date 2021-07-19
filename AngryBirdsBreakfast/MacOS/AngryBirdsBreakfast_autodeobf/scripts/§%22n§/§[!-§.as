package §"n§
{
   import flash.utils.getTimer;
   
   public class §[!-§ extends §+!a§
   {
      
      public static const §[G§:String = "level-selection";
      
      public static const §01§:String = "registration-success";
      
      public static const §&!l§:String = "registration-failure";
      
      public static const §=!$§:String = "login-success";
      
      public static const §1!a§:String = "login-failure";
      
      private static const §?!2§:Boolean = §6!!§.§7!2§;
      
      private static const §4§:String = "framerate";
      
      private static const §;5§:String = "powerup-used";
      
      private static const § h§:String = "level-powerup-used";
      
      private static const §9%§:String = "warning";
      
      private static const §^!y§:String = "user-statistics";
      
      private static const §6b§:String = "error";
      
      private static const §^!]§:String = "download-failed";
      
      private static const §!c§:String = "invalid-level";
      
      private static const §>2§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§[`§,§-!y§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§;G§,§%!F§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§4§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§6b§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §;y§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §-s§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §`!D§:Array = [];
       
      
      public function §[!-§()
      {
         super();
      }
      
      public static function §2@§() : void
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
      
      public static function §[A§(param1:int, param2:int) : void
      {
         §@v§(§+!a§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §@v§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §5o§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §+!a§.trackSampledEvent(_loc5_,§<!0§,param1,param2,param3);
      }
      
      public static function §`Y§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§`!D§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §`!D§.length == 0;
         §`!D§.push(param2);
         if(param3)
         {
            _loc6_ = §+!a§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §[!-§.§;y§;
            }
         }
         else
         {
            _loc6_ = §+!a§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §[!-§.§-s§;
            }
         }
         if(_loc5_)
         {
            §@v§(_loc6_,param1.toString(),param1);
         }
         § !I§(§4§,_loc6_,param2,param1);
      }
      
      public static function §'!w§(param1:String) : void
      {
         § !I§(§9%§,§^!]§,param1,0);
      }
      
      public static function §'"'§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         § !I§(§9%§,§!c§,param1,0);
      }
      
      public static function §6!P§(param1:String) : void
      {
         § !I§(§9%§,§>2§,param1,0);
      }
      
      public static function §7T§(param1:String) : void
      {
         § !I§(§6b§,param1,"",0,false);
      }
      
      private static function § !I§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §[3§;
            if(param5)
            {
               _loc6_ = §5o§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §-!7§(param1:String, param2:String) : void
      {
         var _loc3_:int = §7l§();
         §&!Q§(§;5§,param1,param2,0);
         §&!Q§(§ h§,param2,param1,0);
      }
      
      private static function §&!Q§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §[3§;
            if(param5)
            {
               _loc6_ = §5o§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §5o§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §[3§;
      }
      
      private static function §%#§(param1:Array) : String
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
      
      private static function §7l§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
