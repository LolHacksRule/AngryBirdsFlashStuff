package §,!!§
{
   import flash.utils.getTimer;
   
   public class §!U§ extends §%!L§
   {
      
      private static const §8"§:Boolean = §@=§.§1D§;
      
      private static const §%"4§:String = "framerate";
      
      private static const §#,§:String = "warning";
      
      private static const §[q§:String = "user-statistics";
      
      private static const §6?§:String = "error";
      
      private static const §8"1§:String = "download-failed";
      
      private static const §;!M§:String = "invalid-level";
      
      private static const §1h§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§3!h§,§1%§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§6?§,§>p§,§%"4§,§[q§,§#,§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §4"9§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const § 1§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §#M§:Array = [];
      
      public static const § T§:String = "quest-started";
      
      public static const §'!"§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§`s§,§4V§,§ T§,§'!"§];
       
      
      public function §!U§()
      {
         super();
      }
      
      public static function §^!q§() : void
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
      
      public static function §%p§(param1:int, param2:int) : void
      {
         §"!@§(§%!L§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §"!@§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §%r§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §%!L§.trackSampledEvent(_loc4_,§>p§,param1,param2,param3);
      }
      
      public static function §5!r§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§#M§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §#M§.length == 0;
         §#M§.push(param2);
         if(param3)
         {
            _loc6_ = §%!L§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!U§.§4"9§;
            }
         }
         else
         {
            _loc6_ = §%!L§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!U§.§ 1§;
            }
         }
         if(_loc5_)
         {
            §"!@§(_loc6_,param1.toString(),param1);
         }
         §@[§(§%"4§,_loc6_,param2,param1);
      }
      
      public static function §"!S§(param1:String) : void
      {
         §@[§(§#,§,§8"1§,param1,0);
      }
      
      public static function §?!e§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §@[§(§#,§,§;!M§,param1,0);
      }
      
      public static function §=d§(param1:String) : void
      {
         §@[§(§#,§,§1h§,param1,0);
      }
      
      public static function §1$§(param1:String) : void
      {
         §@[§(§6?§,param1,"",0,false);
      }
      
      private static function §@[§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §4T§;
            if(param5)
            {
               _loc6_ = §%r§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §%r§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §4T§;
      }
      
      private static function §%"-§(param1:Array) : String
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
      
      private static function §8p§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
