package § !Y§
{
   import flash.utils.getTimer;
   
   public class §="6§ extends §%Y§
   {
      
      public static const §,!&§:String = "level-selection";
      
      public static const §6G§:String = "registration-success";
      
      public static const §9$§:String = "registration-failure";
      
      public static const §+!C§:String = "login-success";
      
      public static const §@!>§:String = "login-failure";
      
      private static const §#T§:Boolean = § !g§.§-"<§;
      
      private static const §7!O§:String = "framerate";
      
      private static const §%!]§:String = "powerup-used";
      
      private static const §-!e§:String = "level-powerup-used";
      
      private static const §'"'§:String = "warning";
      
      private static const §]O§:String = "user-statistics";
      
      private static const §^+§:String = "error";
      
      private static const §?!8§:String = "download-failed";
      
      private static const §<"4§:String = "invalid-level";
      
      private static const §;1§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§!t§,§49§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§8!5§,§83§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§7!O§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§^+§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §8!Y§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §6^§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §!1§:Array = [];
       
      
      public function §="6§()
      {
         super();
      }
      
      public static function §]C§() : void
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
      
      public static function §`" §(param1:int, param2:int) : void
      {
         §^!U§(§%Y§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §^!U§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §2!u§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §%Y§.trackSampledEvent(_loc5_,§!!&§,param1,param2,param3);
      }
      
      public static function §"b§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§!1§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §!1§.length == 0;
         §!1§.push(param2);
         if(param3)
         {
            _loc6_ = §%Y§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §="6§.§8!Y§;
            }
         }
         else
         {
            _loc6_ = §%Y§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §="6§.§6^§;
            }
         }
         if(_loc5_)
         {
            §^!U§(_loc6_,param1.toString(),param1);
         }
         §"!F§(§7!O§,_loc6_,param2,param1);
      }
      
      public static function §&!x§(param1:String) : void
      {
         §"!F§(§'"'§,§?!8§,param1,0);
      }
      
      public static function §-J§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §"!F§(§'"'§,§<"4§,param1,0);
      }
      
      public static function §'!]§(param1:String) : void
      {
         §"!F§(§'"'§,§;1§,param1,0);
      }
      
      public static function §,"<§(param1:String) : void
      {
         §"!F§(§^+§,param1,"",0,false);
      }
      
      private static function §"!F§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §?!U§;
            if(param5)
            {
               _loc6_ = §2!u§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §[!F§(param1:String, param2:String) : void
      {
         var _loc3_:int = §1!O§();
         §%9§(§%!]§,param1,param2,0);
         §%9§(§-!e§,param2,param1,0);
      }
      
      private static function §%9§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §?!U§;
            if(param5)
            {
               _loc6_ = §2!u§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §2!u§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §?!U§;
      }
      
      private static function §,I§(param1:Array) : String
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
      
      private static function §1!O§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
