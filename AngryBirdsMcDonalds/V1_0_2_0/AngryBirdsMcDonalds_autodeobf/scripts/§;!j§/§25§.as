package §;!j§
{
   import flash.utils.getTimer;
   
   public class §25§ extends §'s§
   {
      
      public static const §+]§:String = "level-selection";
      
      public static const §`E§:String = "registration-success";
      
      public static const §[B§:String = "registration-failure";
      
      public static const §7e§:String = "login-success";
      
      public static const §^X§:String = "login-failure";
      
      private static const §9! §:Boolean = §'j§.§>!%§;
      
      private static const §7!J§:String = "framerate";
      
      private static const §-!$§:String = "powerup-used";
      
      private static const §-Z§:String = "level-powerup-used";
      
      private static const §;5§:String = "warning";
      
      private static const §2!B§:String = "user-statistics";
      
      private static const §#!V§:String = "error";
      
      private static const §[!T§:String = "download-failed";
      
      private static const §0!0§:String = "invalid-level";
      
      private static const §^M§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,§<!K§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§`@§,§13§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§7!J§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§#!V§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §-'§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §,5§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §-!,§:Array = [];
       
      
      public function §25§()
      {
         super();
      }
      
      public static function §#!W§() : void
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
      
      public static function §>-§(param1:int, param2:int) : void
      {
         §%!<§(§'s§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §%!<§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §@!0§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §'s§.trackSampledEvent(_loc5_,§`!b§,param1,param2,param3);
         §0r§(param1,param2,param3,param4);
      }
      
      private static function §0r§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         if(param1 == §'s§.ACTION_GAME_LEVEL_STARTED)
         {
            §'j§.§7!$§.§,!_§.§%!<§(param1,param2,1);
         }
         else if(param1 == §13§)
         {
            §'j§.§7!$§.§,!_§.§%!<§(param1,param2,1,param4);
         }
         else if(param1 == ACTION_APPLICATION_CRASH)
         {
            §'j§.§7!$§.§,!_§.§%!<§(param1,param2,1);
         }
         else if(param1 == §25§.§+]§)
         {
            §'j§.§7!$§.§,!_§.§%!<§(param1);
         }
         else if(param1 == §25§.§7e§)
         {
            §'j§.§7!$§.§,!_§.§%!<§(param1);
         }
         else if(param1 == §25§.§`E§)
         {
            §'j§.§7!$§.§,!_§.§%!<§(param1);
         }
      }
      
      public static function §?N§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§-!,§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §-!,§.length == 0;
         §-!,§.push(param2);
         if(param3)
         {
            _loc6_ = §'s§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §25§.§-'§;
            }
         }
         else
         {
            _loc6_ = §'s§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §25§.§,5§;
            }
         }
         if(_loc5_)
         {
            §%!<§(_loc6_,param1.toString(),param1);
         }
         §"!§(§7!J§,_loc6_,param2,param1);
      }
      
      public static function §'!3§(param1:String) : void
      {
         §"!§(§;5§,§[!T§,param1,0);
      }
      
      public static function §9v§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §"!§(§;5§,§0!0§,param1,0);
      }
      
      public static function §%!;§(param1:String) : void
      {
         §"!§(§;5§,§^M§,param1,0);
      }
      
      public static function §^!I§(param1:String) : void
      {
         §"!§(§#!V§,param1,"",0,false);
      }
      
      private static function §"!§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=3§;
            if(param5)
            {
               _loc6_ = §@!0§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §0!1§(param1:String, param2:String) : void
      {
         var _loc3_:int = §20§();
         §`!l§(§-!$§,param1,param2,0);
         §`!l§(§-Z§,param2,param1,0);
      }
      
      private static function §`!l§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=3§;
            if(param5)
            {
               _loc6_ = §@!0§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §@!0§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §=3§;
      }
      
      private static function §"r§(param1:Array) : String
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
      
      private static function §20§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
