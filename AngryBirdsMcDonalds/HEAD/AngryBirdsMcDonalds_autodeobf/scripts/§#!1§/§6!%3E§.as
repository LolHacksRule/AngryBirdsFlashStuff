package §#!1§
{
   import flash.utils.getTimer;
   
   public class §6!>§ extends §6!<§
   {
      
      public static const §!!@§:String = "level-selection";
      
      public static const §4!9§:String = "registration-success";
      
      public static const §>8§:String = "registration-failure";
      
      public static const §?!4§:String = "login-success";
      
      public static const §^J§:String = "login-failure";
      
      private static const §8Q§:Boolean = §3![§.§,x§;
      
      private static const §4!O§:String = "framerate";
      
      private static const §;!a§:String = "powerup-used";
      
      private static const §+u§:String = "level-powerup-used";
      
      private static const §6!I§:String = "warning";
      
      private static const §3e§:String = "user-statistics";
      
      private static const §'!H§:String = "error";
      
      private static const §8C§:String = "download-failed";
      
      private static const §#!R§:String = "invalid-level";
      
      private static const §@_§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,§7M§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§1!j§,§1L§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§4!O§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§'!H§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §"!e§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §3v§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §1M§:Array = [];
       
      
      public function §6!>§()
      {
         super();
      }
      
      public static function §8H§() : void
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
      
      public static function §3!]§(param1:int, param2:int) : void
      {
         §7!'§(§6!<§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §7!'§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §`!a§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §6!<§.trackSampledEvent(_loc5_,§'`§,param1,param2,param3);
         §?!q§(param1,param2,param3,param4);
      }
      
      private static function §?!q§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         if(param1 == §6!<§.ACTION_GAME_LEVEL_STARTED)
         {
            §3![§.§+w§.§]!>§.§7!'§(param1,param2,1);
         }
         else if(param1 == §1L§)
         {
            §3![§.§+w§.§]!>§.§7!'§(param1,param2,1,param4);
         }
         else if(param1 == ACTION_APPLICATION_CRASH)
         {
            §3![§.§+w§.§]!>§.§7!'§(param1,param2,1);
         }
         else if(param1 == §6!>§.§!!@§)
         {
            §3![§.§+w§.§]!>§.§7!'§(param1);
         }
         else if(param1 == §6!>§.§?!4§)
         {
            §3![§.§+w§.§]!>§.§7!'§(param1);
         }
         else if(param1 == §6!>§.§4!9§)
         {
            §3![§.§+w§.§]!>§.§7!'§(param1);
         }
      }
      
      public static function §4Q§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§1M§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §1M§.length == 0;
         §1M§.push(param2);
         if(param3)
         {
            _loc6_ = §6!<§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6!>§.§"!e§;
            }
         }
         else
         {
            _loc6_ = §6!<§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6!>§.§3v§;
            }
         }
         if(_loc5_)
         {
            §7!'§(_loc6_,param1.toString(),param1);
         }
         §"c§(§4!O§,_loc6_,param2,param1);
      }
      
      public static function §8?§(param1:String) : void
      {
         §"c§(§6!I§,§8C§,param1,0);
      }
      
      public static function § !1§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §"c§(§6!I§,§#!R§,param1,0);
      }
      
      public static function §4M§(param1:String) : void
      {
         §"c§(§6!I§,§@_§,param1,0);
      }
      
      public static function §]!I§(param1:String) : void
      {
         §"c§(§'!H§,param1,"",0,false);
      }
      
      private static function §"c§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=§;
            if(param5)
            {
               _loc6_ = §`!a§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §2!]§(param1:String, param2:String) : void
      {
         var _loc3_:int = §0!`§();
         §62§(§;!a§,param1,param2,0);
         §62§(§+u§,param2,param1,0);
      }
      
      private static function §62§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=§;
            if(param5)
            {
               _loc6_ = §`!a§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §`!a§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §=§;
      }
      
      private static function §3!b§(param1:Array) : String
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
      
      private static function §0!`§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
