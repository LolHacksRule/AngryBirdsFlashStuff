package §=!S§
{
   import flash.utils.getTimer;
   
   public class §!!Z§ extends §+!G§
   {
      
      public static const §>!2§:String = "level-selection";
      
      public static const §=U§:String = "registration-success";
      
      public static const §7!2§:String = "registration-failure";
      
      public static const §%o§:String = "login-success";
      
      public static const §4!K§:String = "login-failure";
      
      private static const §<&§:Boolean = §,-§.§&P§;
      
      private static const §!!#§:String = "framerate";
      
      private static const §2!8§:String = "warning";
      
      private static const §?!=§:String = "user-statistics";
      
      private static const §@!@§:String = "error";
      
      private static const §+Q§:String = "download-failed";
      
      private static const §5d§:String = "invalid-level";
      
      private static const §17§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§ 1§,§0v§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§7K§,§^!§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§!!#§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§@!@§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §8e§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §&!U§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §+C§:Array = [];
       
      
      public function §!!Z§()
      {
         super();
      }
      
      public static function §-!;§() : void
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
      
      public static function §6`§(param1:int, param2:int) : void
      {
         §1!?§(§+!G§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §1!?§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §,C§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §+!G§.trackSampledEvent(_loc4_,§0!U§,param1,param2,param3);
      }
      
      public static function §7A§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§+C§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §+C§.length == 0;
         §+C§.push(param2);
         if(param3)
         {
            _loc6_ = §+!G§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!!Z§.§8e§;
            }
         }
         else
         {
            _loc6_ = §+!G§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!!Z§.§&!U§;
            }
         }
         if(_loc5_)
         {
            §1!?§(_loc6_,param1.toString(),param1);
         }
         §=!<§(§!!#§,_loc6_,param2,param1);
      }
      
      public static function §&T§(param1:String) : void
      {
         §=!<§(§2!8§,§+Q§,param1,0);
      }
      
      public static function §'f§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §=!<§(§2!8§,§5d§,param1,0);
      }
      
      public static function §#%§(param1:String) : void
      {
         §=!<§(§2!8§,§17§,param1,0);
      }
      
      public static function §2v§(param1:String) : void
      {
         §=!<§(§@!@§,param1,"",0,false);
      }
      
      private static function §=!<§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=1§;
            if(param5)
            {
               _loc6_ = §,C§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §,C§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §=1§;
      }
      
      private static function §=!7§(param1:Array) : String
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
      
      private static function §7p§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
