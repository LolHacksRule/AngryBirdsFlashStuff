package §`!s§
{
   import flash.utils.getTimer;
   
   public class §5P§ extends §!z§
   {
      
      public static const §"!h§:String = "level-selection";
      
      public static const §[s§:String = "registration-success";
      
      public static const §9=§:String = "registration-failure";
      
      public static const §7"-§:String = "login-success";
      
      public static const §"!8§:String = "login-failure";
      
      private static const §"!`§:Boolean = §-!2§.§#!a§;
      
      private static const §]"§:String = "framerate";
      
      private static const §&!?§:String = "powerup-used";
      
      private static const §"`§:String = "level-powerup-used";
      
      private static const §`%§:String = "warning";
      
      private static const §0!X§:String = "user-statistics";
      
      private static const §,q§:String = "error";
      
      private static const §0d§:String = "download-failed";
      
      private static const §1"-§:String = "invalid-level";
      
      private static const §?!$§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§'!z§,§1!;§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§ ^§,§=!W§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§]"§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§,q§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §<!4§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §3!B§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §2T§:Array = [];
       
      
      public function §5P§()
      {
         super();
      }
      
      public static function §^!`§() : void
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
      
      public static function §2Z§(param1:int, param2:int) : void
      {
         § !F§(§!z§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function § !F§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §%`§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §!z§.trackSampledEvent(_loc5_,§<4§,param1,param2,param3);
      }
      
      public static function §;l§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§2T§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §2T§.length == 0;
         §2T§.push(param2);
         if(param3)
         {
            _loc6_ = §!z§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §5P§.§<!4§;
            }
         }
         else
         {
            _loc6_ = §!z§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §5P§.§3!B§;
            }
         }
         if(_loc5_)
         {
            § !F§(_loc6_,param1.toString(),param1);
         }
         §8!e§(§]"§,_loc6_,param2,param1);
      }
      
      public static function §>!D§(param1:String) : void
      {
         §8!e§(§`%§,§0d§,param1,0);
      }
      
      public static function §7q§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §8!e§(§`%§,§1"-§,param1,0);
      }
      
      public static function § !j§(param1:String) : void
      {
         §8!e§(§`%§,§?!$§,param1,0);
      }
      
      public static function §2! §(param1:String) : void
      {
         §8!e§(§,q§,param1,"",0,false);
      }
      
      private static function §8!e§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §`!k§;
            if(param5)
            {
               _loc6_ = §%`§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §9!f§(param1:String, param2:String) : void
      {
         var _loc3_:int = §4;§();
         §?!8§(§&!?§,param1,param2,0);
         §?!8§(§"`§,param2,param1,0);
      }
      
      private static function §?!8§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §`!k§;
            if(param5)
            {
               _loc6_ = §%`§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §%`§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §`!k§;
      }
      
      private static function §@f§(param1:Array) : String
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
      
      private static function §4;§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
