package §0!F§
{
   import flash.utils.getTimer;
   
   public class §3>§ extends §,!U§
   {
      
      private static const §!"§:Boolean = §+§.§;6§;
      
      private static const §-"§:String = "framerate";
      
      private static const §0S§:String = "warning";
      
      private static const §=!F§:String = "user-statistics";
      
      private static const §#4§:String = "error";
      
      private static const §=%§:String = "download-failed";
      
      private static const §5@§:String = "invalid-level";
      
      private static const § z§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§"!4§,§"9§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§2!,§,§"!_§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§-"§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§#4§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §+@§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §?!Y§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §7!B§:Array = [];
      
      public static const §80§:String = "level-selection";
       
      
      public function §3>§()
      {
         super();
      }
      
      public static function §;u§() : void
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
      
      public static function §[t§(param1:int, param2:int) : void
      {
         §7!]§(§,!U§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §7!]§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §'!?§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §,!U§.trackSampledEvent(_loc4_,§63§,param1,param2,param3);
      }
      
      public static function §=&§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§7!B§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §7!B§.length == 0;
         §7!B§.push(param2);
         if(param3)
         {
            _loc6_ = §,!U§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §3>§.§+@§;
            }
         }
         else
         {
            _loc6_ = §,!U§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §3>§.§?!Y§;
            }
         }
         if(_loc5_)
         {
            §7!]§(_loc6_,param1.toString(),param1);
         }
         §89§(§-"§,_loc6_,param2,param1);
      }
      
      public static function §+!R§(param1:String) : void
      {
         §89§(§0S§,§=%§,param1,0);
      }
      
      public static function §[!B§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §89§(§0S§,§5@§,param1,0);
      }
      
      public static function §@!Y§(param1:String) : void
      {
         §89§(§0S§,§ z§,param1,0);
      }
      
      public static function §case§(param1:String) : void
      {
         §89§(§#4§,param1,"",0,false);
      }
      
      private static function §89§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §8!@§;
            if(param5)
            {
               _loc6_ = §'!?§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §'!?§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §8!@§;
      }
      
      private static function §[!;§(param1:Array) : String
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
      
      private static function § y§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
