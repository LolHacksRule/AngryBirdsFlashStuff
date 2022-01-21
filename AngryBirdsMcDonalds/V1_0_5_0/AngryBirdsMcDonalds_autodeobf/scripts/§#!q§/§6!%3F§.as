package §#!q§
{
   import flash.utils.getTimer;
   
   public class §6!?§ extends §6!1§
   {
      
      public static const §?!a§:String = "level-selection";
      
      public static const §^0§:String = "registration-success";
      
      public static const §45§:String = "registration-failure";
      
      public static const §!c§:String = "login-success";
      
      public static const §<!B§:String = "login-failure";
      
      private static const §^%§:Boolean = §9!_§.§'!m§;
      
      private static const §1o§:String = "framerate";
      
      private static const §3!b§:String = "powerup-used";
      
      private static const §8P§:String = "level-powerup-used";
      
      private static const §2!<§:String = "warning";
      
      private static const §8!e§:String = "user-statistics";
      
      private static const §!^§:String = "error";
      
      private static const §1V§:String = "download-failed";
      
      private static const §98§:String = "invalid-level";
      
      private static const §3?§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,§5!j§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§-6§,§ !c§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§1o§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§!^§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §%+§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §,&§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §8t§:Array = [];
       
      
      public function §6!?§()
      {
         super();
      }
      
      public static function §>!a§() : void
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
      
      public static function §9p§(param1:int, param2:int) : void
      {
         §>!I§(§6!1§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §>!I§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §?e§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §6!1§.trackSampledEvent(_loc5_,§7e§,param1,param2,param3);
         §%w§(param1,param2,param3,param4);
      }
      
      private static function §%w§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         if(param1 == §6!1§.ACTION_GAME_LEVEL_STARTED)
         {
            §9!_§.§@r§.§2!k§.§>!I§(param1,param2,1);
         }
         else if(param1 == § !c§)
         {
            §9!_§.§@r§.§2!k§.§>!I§(param1,param2,1,param4);
         }
         else if(param1 == ACTION_APPLICATION_CRASH)
         {
            §9!_§.§@r§.§2!k§.§>!I§(param1,param2,1);
         }
         else if(param1 == §6!?§.§?!a§)
         {
            §9!_§.§@r§.§2!k§.§>!I§(param1);
         }
         else if(param1 == §6!?§.§!c§)
         {
            §9!_§.§@r§.§2!k§.§>!I§(param1);
         }
         else if(param1 == §6!?§.§^0§)
         {
            §9!_§.§@r§.§2!k§.§>!I§(param1);
         }
      }
      
      public static function §;!j§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§8t§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §8t§.length == 0;
         §8t§.push(param2);
         if(param3)
         {
            _loc6_ = §6!1§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6!?§.§%+§;
            }
         }
         else
         {
            _loc6_ = §6!1§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6!?§.§,&§;
            }
         }
         if(_loc5_)
         {
            §>!I§(_loc6_,param1.toString(),param1);
         }
         §]]§(§1o§,_loc6_,param2,param1);
      }
      
      public static function §3!&§(param1:String) : void
      {
         §]]§(§2!<§,§1V§,param1,0);
      }
      
      public static function §3!L§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §]]§(§2!<§,§98§,param1,0);
      }
      
      public static function §>[§(param1:String) : void
      {
         §]]§(§2!<§,§3?§,param1,0);
      }
      
      public static function §^f§(param1:String) : void
      {
         §]]§(§!^§,param1,"",0,false);
      }
      
      private static function §]]§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §[4§;
            if(param5)
            {
               _loc6_ = §?e§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §=!4§(param1:String, param2:String) : void
      {
         var _loc3_:int = §@!?§();
         §,4§(§3!b§,param1,param2,0);
         §,4§(§8P§,param2,param1,0);
      }
      
      private static function §,4§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §[4§;
            if(param5)
            {
               _loc6_ = §?e§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §?e§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §[4§;
      }
      
      private static function §#K§(param1:Array) : String
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
      
      private static function §@!?§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
