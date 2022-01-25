package §&$§
{
   import flash.utils.getTimer;
   
   public class §6g§ extends §6j§
   {
      
      public static const §8&§:String = "level-selection";
      
      public static const §'!8§:String = "registration-success";
      
      public static const §<!K§:String = "registration-failure";
      
      public static const §4!T§:String = "registration-attempt";
      
      public static const §3!9§:String = "login-success";
      
      public static const §6!2§:String = "login-failure";
      
      private static const §9!7§:Boolean = §-!#§.§?!-§;
      
      private static const §6!R§:String = "framerate";
      
      private static const §"U§:String = "warning";
      
      private static const §#,§:String = "user-statistics";
      
      private static const §3!$§:String = "error";
      
      private static const §]!O§:String = "download-failed";
      
      private static const §#!a§:String = "invalid-level";
      
      private static const §&!K§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§#!+§,§`!]§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§[!=§,§!7§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§3!$§,§+O§,§6!R§,§#,§,§"U§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §==§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §@!^§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §0r§:Array = [];
       
      
      public function §6g§()
      {
         super();
      }
      
      public static function §07§() : void
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
      
      public static function §'>§(param1:int, param2:int) : void
      {
         §+!J§(§6j§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §+!J§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §2P§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §6j§.trackSampledEvent(_loc4_,§+O§,param1,param2,param3);
      }
      
      public static function §35§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§0r§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §0r§.length == 0;
         §0r§.push(param2);
         if(param3)
         {
            _loc6_ = §6j§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6g§.§==§;
            }
         }
         else
         {
            _loc6_ = §6j§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6g§.§@!^§;
            }
         }
         if(_loc5_)
         {
            §+!J§(_loc6_,param1.toString(),param1);
         }
         §30§(§6!R§,_loc6_,param2,param1);
      }
      
      public static function §4!1§(param1:String) : void
      {
         §30§(§"U§,§]!O§,param1,0);
      }
      
      public static function §9!?§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §30§(§"U§,§#!a§,param1,0);
      }
      
      public static function §;k§(param1:String) : void
      {
         §30§(§"U§,§&!K§,param1,0);
      }
      
      public static function §,;§(param1:String) : void
      {
         §30§(§3!$§,param1,"",0,false);
      }
      
      private static function §30§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §[`§;
            if(param5)
            {
               _loc6_ = §2P§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §2P§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §[`§;
      }
      
      private static function §9!H§(param1:Array) : String
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
      
      private static function §>!&§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
