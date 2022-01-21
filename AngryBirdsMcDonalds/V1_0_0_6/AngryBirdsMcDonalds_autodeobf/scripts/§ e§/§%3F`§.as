package § e§
{
   import flash.utils.getTimer;
   
   public class §?`§ extends §0y§
   {
      
      public static const §#!E§:String = "level-selection";
      
      public static const §;8§:String = "registration-success";
      
      public static const §85§:String = "registration-failure";
      
      public static const §,!0§:String = "login-success";
      
      public static const §6S§:String = "login-failure";
      
      private static const §-X§:Boolean = § 4§.§`0§;
      
      private static const §'!f§:String = "framerate";
      
      private static const §<^§:String = "powerup-used";
      
      private static const §;!§:String = "level-powerup-used";
      
      private static const §?!h§:String = "warning";
      
      private static const §]!!§:String = "user-statistics";
      
      private static const §&x§:String = "error";
      
      private static const §9G§:String = "download-failed";
      
      private static const §]I§:String = "invalid-level";
      
      private static const §1U§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,§<a§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§0!B§,§88§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§'!f§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§&x§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §+!_§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §6!#§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §#!M§:Array = [];
       
      
      public function §?`§()
      {
         super();
      }
      
      public static function §"Q§() : void
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
      
      public static function §8E§(param1:int, param2:int) : void
      {
         §%p§(§0y§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §%p§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §+!T§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §0y§.trackSampledEvent(_loc5_,§1@§,param1,param2,param3);
         §8A§(param1,param2,param3,param4);
      }
      
      private static function §8A§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         if(param1 == §0y§.ACTION_GAME_LEVEL_STARTED)
         {
            § 4§.§6q§.§^z§.§%p§(param1,param2,1);
         }
         else if(param1 == §88§)
         {
            § 4§.§6q§.§^z§.§%p§(param1,param2,1,param4);
         }
         else if(param1 == ACTION_APPLICATION_CRASH)
         {
            § 4§.§6q§.§^z§.§%p§(param1,param2,1);
         }
      }
      
      public static function §0p§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§#!M§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §#!M§.length == 0;
         §#!M§.push(param2);
         if(param3)
         {
            _loc6_ = §0y§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §?`§.§+!_§;
            }
         }
         else
         {
            _loc6_ = §0y§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §?`§.§6!#§;
            }
         }
         if(_loc5_)
         {
            §%p§(_loc6_,param1.toString(),param1);
         }
         §8!O§(§'!f§,_loc6_,param2,param1);
      }
      
      public static function §;!c§(param1:String) : void
      {
         §8!O§(§?!h§,§9G§,param1,0);
      }
      
      public static function §8!;§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §8!O§(§?!h§,§]I§,param1,0);
      }
      
      public static function §@v§(param1:String) : void
      {
         §8!O§(§?!h§,§1U§,param1,0);
      }
      
      public static function §6<§(param1:String) : void
      {
         §8!O§(§&x§,param1,"",0,false);
      }
      
      private static function §8!O§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §-l§;
            if(param5)
            {
               _loc6_ = §+!T§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §+'§(param1:String, param2:String) : void
      {
         var _loc3_:int = §?!3§();
         §[!-§(§<^§,param1,param2,0);
         §[!-§(§;!§,param2,param1,0);
      }
      
      private static function §[!-§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §-l§;
            if(param5)
            {
               _loc6_ = §+!T§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §+!T§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §-l§;
      }
      
      private static function §2!X§(param1:Array) : String
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
      
      private static function §?!3§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
