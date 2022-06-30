package §4!9§
{
   import flash.utils.getTimer;
   
   public class §>6§ extends §5d§
   {
      
      public static const §9l§:String = "level-selection";
      
      public static const §9!a§:String = "registration-success";
      
      public static const §`^§:String = "registration-failure";
      
      public static const §63§:String = "login-success";
      
      public static const §-1§:String = "login-failure";
      
      private static const §"A§:Boolean = §1F§.§7U§;
      
      private static const §%n§:String = "framerate";
      
      private static const §8!;§:String = "warning";
      
      private static const §-]§:String = "user-statistics";
      
      private static const §&!K§:String = "error";
      
      private static const §7! §:String = "download-failed";
      
      private static const §"!K§:String = "invalid-level";
      
      private static const §!h§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§'!'§,§<!U§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§8!A§,§7!+§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§%n§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§&!K§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §69§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §2!$§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §[-§:Array = [];
       
      
      public function §>6§()
      {
         super();
      }
      
      public static function §8l§() : void
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
      
      public static function §=g§(param1:int, param2:int) : void
      {
         §%;§(§5d§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §%;§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §'W§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §5d§.trackSampledEvent(_loc4_,§@!U§,param1,param2,param3);
      }
      
      public static function §<6§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§[-§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §[-§.length == 0;
         §[-§.push(param2);
         if(param3)
         {
            _loc6_ = §5d§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §>6§.§69§;
            }
         }
         else
         {
            _loc6_ = §5d§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §>6§.§2!$§;
            }
         }
         if(_loc5_)
         {
            §%;§(_loc6_,param1.toString(),param1);
         }
         §#!B§(§%n§,_loc6_,param2,param1);
      }
      
      public static function §3g§(param1:String) : void
      {
         §#!B§(§8!;§,§7! §,param1,0);
      }
      
      public static function §^!X§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §#!B§(§8!;§,§"!K§,param1,0);
      }
      
      public static function §9!"§(param1:String) : void
      {
         §#!B§(§8!;§,§!h§,param1,0);
      }
      
      public static function §#;§(param1:String) : void
      {
         §#!B§(§&!K§,param1,"",0,false);
      }
      
      private static function §#!B§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §<!O§;
            if(param5)
            {
               _loc6_ = §'W§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §'W§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §<!O§;
      }
      
      private static function §"J§(param1:Array) : String
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
      
      private static function §2!B§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
