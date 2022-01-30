package §2W§
{
   import flash.utils.getTimer;
   
   public class §4L§ extends §7"4§
   {
      
      public static const §`!Y§:String = "level-selection";
      
      public static const §,!i§:String = "registration-success";
      
      public static const §[h§:String = "registration-failure";
      
      public static const §]!z§:String = "login-success";
      
      public static const §%O§:String = "login-failure";
      
      private static const §+h§:Boolean = §-!I§.§%q§;
      
      private static const §[z§:String = "framerate";
      
      private static const §#G§:String = "powerup-used";
      
      private static const §&p§:String = "level-powerup-used";
      
      private static const §<!M§:String = "warning";
      
      private static const §#""§:String = "user-statistics";
      
      private static const §%!]§:String = "error";
      
      private static const §!!E§:String = "download-failed";
      
      private static const §"M§:String = "invalid-level";
      
      private static const §8d§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§6!Z§,§,!R§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§2!m§,§?!]§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§[z§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§%!]§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §"!]§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §]!9§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §1!i§:Array = [];
       
      
      public function §4L§()
      {
         super();
      }
      
      public static function §<3§() : void
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
      
      public static function §7!F§(param1:int, param2:int) : void
      {
         §2!4§(§7"4§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §2!4§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §?!U§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §7"4§.trackSampledEvent(_loc5_,§91§,param1,param2,param3);
      }
      
      public static function §,q§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§1!i§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §1!i§.length == 0;
         §1!i§.push(param2);
         if(param3)
         {
            _loc6_ = §7"4§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §4L§.§"!]§;
            }
         }
         else
         {
            _loc6_ = §7"4§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §4L§.§]!9§;
            }
         }
         if(_loc5_)
         {
            §2!4§(_loc6_,param1.toString(),param1);
         }
         §in §(§[z§,_loc6_,param2,param1);
      }
      
      public static function §]!1§(param1:String) : void
      {
         §in §(§<!M§,§!!E§,param1,0);
      }
      
      public static function §@!Z§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §in §(§<!M§,§"M§,param1,0);
      }
      
      public static function §6!G§(param1:String) : void
      {
         §in §(§<!M§,§8d§,param1,0);
      }
      
      public static function §3!w§(param1:String) : void
      {
         §in §(§%!]§,param1,"",0,false);
      }
      
      private static function §in §(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §@!1§;
            if(param5)
            {
               _loc6_ = §?!U§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §#!]§(param1:String, param2:String) : void
      {
         var _loc3_:int = §&9§();
         §=G§(§#G§,param1,param2,0);
         §=G§(§&p§,param2,param1,0);
      }
      
      private static function §=G§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §@!1§;
            if(param5)
            {
               _loc6_ = §?!U§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §?!U§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §@!1§;
      }
      
      private static function §#!E§(param1:Array) : String
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
      
      private static function §&9§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
