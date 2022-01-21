package §?I§
{
   import flash.utils.getTimer;
   
   public class §'k§ extends §2C§
   {
      
      public static const §[$§:String = "level-selection";
      
      public static const §3!W§:String = "registration-success";
      
      public static const §]!§:String = "registration-failure";
      
      public static const §6!i§:String = "login-success";
      
      public static const §<!M§:String = "login-failure";
      
      private static const §";§:Boolean = §2!M§.§6T§;
      
      private static const §!![§:String = "framerate";
      
      private static const §0!#§:String = "powerup-used";
      
      private static const § !;§:String = "level-powerup-used";
      
      private static const §[!^§:String = "warning";
      
      private static const §`!d§:String = "user-statistics";
      
      private static const §<;§:String = "error";
      
      private static const §#Y§:String = "download-failed";
      
      private static const §!_§:String = "invalid-level";
      
      private static const §"!O§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,§"V§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§+!'§,§"!4§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§!![§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§<;§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §0!C§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §8!o§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §30§:Array = [];
       
      
      public function §'k§()
      {
         super();
      }
      
      public static function §?l§() : void
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
      
      public static function §%!S§(param1:int, param2:int) : void
      {
         §=<§(§2C§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §=<§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §1!a§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §2C§.trackSampledEvent(_loc5_,§46§,param1,param2,param3);
         §%!8§(param1,param2,param3,param4);
      }
      
      private static function §%!8§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         if(param1 == §2C§.ACTION_GAME_LEVEL_STARTED)
         {
            §2!M§.§7!F§.§@!2§.§=<§(param1,param2,1);
         }
         else if(param1 == §"!4§)
         {
            §2!M§.§7!F§.§@!2§.§=<§(param1,param2,1,param4);
         }
         else if(param1 == ACTION_APPLICATION_CRASH)
         {
            §2!M§.§7!F§.§@!2§.§=<§(param1,param2,1);
         }
         else if(param1 == §'k§.§[$§)
         {
            §2!M§.§7!F§.§@!2§.§=<§(param1);
         }
         else if(param1 == §'k§.§6!i§)
         {
            §2!M§.§7!F§.§@!2§.§=<§(param1);
         }
         else if(param1 == §'k§.§3!W§)
         {
            §2!M§.§7!F§.§@!2§.§=<§(param1);
         }
      }
      
      public static function §2&§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§30§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §30§.length == 0;
         §30§.push(param2);
         if(param3)
         {
            _loc6_ = §2C§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'k§.§0!C§;
            }
         }
         else
         {
            _loc6_ = §2C§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'k§.§8!o§;
            }
         }
         if(_loc5_)
         {
            §=<§(_loc6_,param1.toString(),param1);
         }
         §'"§(§!![§,_loc6_,param2,param1);
      }
      
      public static function §>-§(param1:String) : void
      {
         §'"§(§[!^§,§#Y§,param1,0);
      }
      
      public static function §!&§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §'"§(§[!^§,§!_§,param1,0);
      }
      
      public static function §7!4§(param1:String) : void
      {
         §'"§(§[!^§,§"!O§,param1,0);
      }
      
      public static function §6O§(param1:String) : void
      {
         §'"§(§<;§,param1,"",0,false);
      }
      
      private static function §'"§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §"!d§;
            if(param5)
            {
               _loc6_ = §1!a§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §<"§(param1:String, param2:String) : void
      {
         var _loc3_:int = §28§();
         §5s§(§0!#§,param1,param2,0);
         §5s§(§ !;§,param2,param1,0);
      }
      
      private static function §5s§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §"!d§;
            if(param5)
            {
               _loc6_ = §1!a§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §1!a§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §"!d§;
      }
      
      private static function §?!4§(param1:Array) : String
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
      
      private static function §28§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
