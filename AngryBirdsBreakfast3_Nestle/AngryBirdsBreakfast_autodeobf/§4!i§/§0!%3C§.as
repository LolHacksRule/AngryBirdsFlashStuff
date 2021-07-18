package §4!i§
{
   import flash.utils.getTimer;
   
   public class §0!<§ extends §^"#§
   {
      
      public static const §<z§:String = "level-selection";
      
      public static const §;!N§:String = "registration-success";
      
      public static const §6"2§:String = "registration-failure";
      
      public static const §+!-§:String = "login-success";
      
      public static const §5e§:String = "login-failure";
      
      private static const §#3§:Boolean = § !4§.§!L§;
      
      private static const §2!B§:String = "framerate";
      
      private static const §<!J§:String = "powerup-used";
      
      private static const §0!_§:String = "level-powerup-used";
      
      private static const §1!M§:String = "warning";
      
      private static const §5!Y§:String = "user-statistics";
      
      private static const §+I§:String = "error";
      
      private static const §67§:String = "download-failed";
      
      private static const § !-§:String = "invalid-level";
      
      private static const § Q§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§61§,§&!$§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§3",§,§9"&§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§2!B§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§+I§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §8!6§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §;!+§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §[h§:Array = [];
       
      
      public function §0!<§()
      {
         super();
      }
      
      public static function §!"-§() : void
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
      
      public static function §<[§(param1:int, param2:int) : void
      {
         §1x§(§^"#§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §1x§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §5!5§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §^"#§.trackSampledEvent(_loc5_,§&Q§,param1,param2,param3);
      }
      
      public static function §'d§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§[h§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §[h§.length == 0;
         §[h§.push(param2);
         if(param3)
         {
            _loc6_ = §^"#§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0!<§.§8!6§;
            }
         }
         else
         {
            _loc6_ = §^"#§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0!<§.§;!+§;
            }
         }
         if(_loc5_)
         {
            §1x§(_loc6_,param1.toString(),param1);
         }
         §@K§(§2!B§,_loc6_,param2,param1);
      }
      
      public static function §&K§(param1:String) : void
      {
         §@K§(§1!M§,§67§,param1,0);
      }
      
      public static function §2Z§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §@K§(§1!M§,§ !-§,param1,0);
      }
      
      public static function §,!y§(param1:String) : void
      {
         §@K§(§1!M§,§ Q§,param1,0);
      }
      
      public static function §3K§(param1:String) : void
      {
         §@K§(§+I§,param1,"",0,false);
      }
      
      private static function §@K§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;i§;
            if(param5)
            {
               _loc6_ = §5!5§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §+!m§(param1:String, param2:String) : void
      {
         var _loc3_:int = §6!3§();
         §+;§(§<!J§,param1,param2,0);
         §+;§(§0!_§,param2,param1,0);
      }
      
      private static function §+;§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;i§;
            if(param5)
            {
               _loc6_ = §5!5§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §5!5§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §;i§;
      }
      
      private static function §0H§(param1:Array) : String
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
      
      private static function §6!3§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
