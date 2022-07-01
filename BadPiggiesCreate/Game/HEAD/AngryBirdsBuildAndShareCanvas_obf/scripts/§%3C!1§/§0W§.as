package §<!1§
{
   import flash.utils.getTimer;
   
   public class §0W§ extends §&%§
   {
      
      private static const §#"'§:Boolean = §[!^§.§^q§;
      
      private static const §9a§:String = "framerate";
      
      private static const §;!x§:String = "warning";
      
      private static const §7!o§:String = "user-statistics";
      
      private static const §"x§:String = "error";
      
      private static const §0!2§:String = "download-failed";
      
      private static const §99§:String = "invalid-level";
      
      private static const §%T§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§2v§,§!!`§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§"x§,§^R§,§9a§,§7!o§,§;!x§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §#",§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §;y§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §8"9§:Array = [];
      
      public static const §,!G§:String = "quest-started";
      
      public static const §;K§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§+S§,§,!@§,§,!G§,§;K§];
       
      
      public function §0W§()
      {
         super();
      }
      
      public static function §5!N§() : void
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
      
      public static function §!7§(param1:int, param2:int) : void
      {
         §#W§(§&%§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §#W§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §]!h§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §&%§.trackSampledEvent(_loc4_,§^R§,param1,param2,param3);
      }
      
      public static function §8"!§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§8"9§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §8"9§.length == 0;
         §8"9§.push(param2);
         if(param3)
         {
            _loc6_ = §&%§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0W§.§#",§;
            }
         }
         else
         {
            _loc6_ = §&%§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0W§.§;y§;
            }
         }
         if(_loc5_)
         {
            §#W§(_loc6_,param1.toString(),param1);
         }
         §7"<§(§9a§,_loc6_,param2,param1);
      }
      
      public static function §#"8§(param1:String) : void
      {
         §7"<§(§;!x§,§0!2§,param1,0);
      }
      
      public static function §;"$§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §7"<§(§;!x§,§99§,param1,0);
      }
      
      public static function §?!=§(param1:String) : void
      {
         §7"<§(§;!x§,§%T§,param1,0);
      }
      
      public static function § !0§(param1:String) : void
      {
         §7"<§(§"x§,param1,"",0,false);
      }
      
      private static function §7"<§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §@!C§;
            if(param5)
            {
               _loc6_ = §]!h§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §]!h§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §@!C§;
      }
      
      private static function §;'§(param1:Array) : String
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
      
      private static function §7!p§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
