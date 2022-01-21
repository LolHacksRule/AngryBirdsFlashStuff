package §1!D§
{
   import flash.utils.getTimer;
   
   public class §]!§ extends §"!6§
   {
      
      public static const §,!O§:String = "level-selection";
      
      public static const §!!F§:String = "registration-success";
      
      public static const §;!e§:String = "registration-failure";
      
      public static const §?6§:String = "login-success";
      
      public static const §#!j§:String = "login-failure";
      
      private static const §?!e§:Boolean = §;!4§.§+!,§;
      
      private static const §99§:String = "framerate";
      
      private static const §>!o§:String = "powerup-used";
      
      private static const §^T§:String = "level-powerup-used";
      
      private static const §;!<§:String = "warning";
      
      private static const §3!"§:String = "user-statistics";
      
      private static const §7y§:String = "error";
      
      private static const §]H§:String = "download-failed";
      
      private static const §9!P§:String = "invalid-level";
      
      private static const §7!A§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [ACTION_GAME_LEVEL_STARTED,§5n§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§3g§,§7#§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§99§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§7y§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §`M§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §9!N§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §"!V§:Array = [];
       
      
      public function §]!§()
      {
         super();
      }
      
      public static function §"!Z§() : void
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
      
      public static function §"!^§(param1:int, param2:int) : void
      {
         §>G§(§"!6§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §>G§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §1+§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §"!6§.trackSampledEvent(_loc5_,§=!M§,param1,param2,param3);
         §,6§(param1,param2,param3,param4);
      }
      
      private static function §,6§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         if(param1 == §"!6§.ACTION_GAME_LEVEL_STARTED)
         {
            §;!4§.§?-§.§1!L§.§>G§(param1,param2,1);
         }
         else if(param1 == §7#§)
         {
            §;!4§.§?-§.§1!L§.§>G§(param1,param2,1,param4);
         }
         else if(param1 == ACTION_APPLICATION_CRASH)
         {
            §;!4§.§?-§.§1!L§.§>G§(param1,param2,1);
         }
      }
      
      public static function §2W§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§"!V§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §"!V§.length == 0;
         §"!V§.push(param2);
         if(param3)
         {
            _loc6_ = §"!6§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]!§.§`M§;
            }
         }
         else
         {
            _loc6_ = §"!6§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]!§.§9!N§;
            }
         }
         if(_loc5_)
         {
            §>G§(_loc6_,param1.toString(),param1);
         }
         §8!F§(§99§,_loc6_,param2,param1);
      }
      
      public static function §`!5§(param1:String) : void
      {
         §8!F§(§;!<§,§]H§,param1,0);
      }
      
      public static function §=!&§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §8!F§(§;!<§,§9!P§,param1,0);
      }
      
      public static function §"!f§(param1:String) : void
      {
         §8!F§(§;!<§,§7!A§,param1,0);
      }
      
      public static function §6!n§(param1:String) : void
      {
         §8!F§(§7y§,param1,"",0,false);
      }
      
      private static function §8!F§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §6P§;
            if(param5)
            {
               _loc6_ = §1+§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §7!;§(param1:String, param2:String) : void
      {
         var _loc3_:int = §[k§();
         §-F§(§>!o§,param1,param2,0);
         §-F§(§^T§,param2,param1,0);
      }
      
      private static function §-F§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §6P§;
            if(param5)
            {
               _loc6_ = §1+§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §1+§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §6P§;
      }
      
      private static function §?!'§(param1:Array) : String
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
      
      private static function §[k§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
