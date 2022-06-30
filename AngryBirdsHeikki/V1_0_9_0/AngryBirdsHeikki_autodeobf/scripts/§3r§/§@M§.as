package §3r§
{
   import flash.utils.getTimer;
   
   public class §@M§ extends §2!G§
   {
      
      public static const §]Z§:String = "level-selection";
      
      public static const §]b§:String = "registration-success";
      
      public static const §0q§:String = "registration-failure";
      
      public static const §`!_§:String = "login-success";
      
      public static const §4!G§:String = "login-failure";
      
      private static const §`!P§:Boolean = §"H§.§1!7§;
      
      private static const §;h§:String = "framerate";
      
      private static const §%;§:String = "warning";
      
      private static const §-C§:String = "user-statistics";
      
      private static const §;!c§:String = "error";
      
      private static const §else §:String = "download-failed";
      
      private static const §3>§:String = "invalid-level";
      
      private static const §^6§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§+m§,§%!Q§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§[!B§,§<!<§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§;h§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§;!c§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §]p§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §#o§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §+-§:Array = [];
       
      
      public function §@M§()
      {
         super();
      }
      
      public static function §]!7§() : void
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
      
      public static function §7!4§(param1:int, param2:int) : void
      {
         §"6§(§2!G§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §"6§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §2!'§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §2!G§.trackSampledEvent(_loc4_,§,v§,param1,param2,param3);
      }
      
      public static function §3!$§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§+-§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §+-§.length == 0;
         §+-§.push(param2);
         if(param3)
         {
            _loc6_ = §2!G§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@M§.§]p§;
            }
         }
         else
         {
            _loc6_ = §2!G§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@M§.§#o§;
            }
         }
         if(_loc5_)
         {
            §"6§(_loc6_,param1.toString(),param1);
         }
         §'!P§(§;h§,_loc6_,param2,param1);
      }
      
      public static function §7r§(param1:String) : void
      {
         §'!P§(§%;§,§else §,param1,0);
      }
      
      public static function § try§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §'!P§(§%;§,§3>§,param1,0);
      }
      
      public static function §7!5§(param1:String) : void
      {
         §'!P§(§%;§,§^6§,param1,0);
      }
      
      public static function §9!W§(param1:String) : void
      {
         §'!P§(§;!c§,param1,"",0,false);
      }
      
      private static function §'!P§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §,8§;
            if(param5)
            {
               _loc6_ = §2!'§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §2!'§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §,8§;
      }
      
      private static function §6!U§(param1:Array) : String
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
      
      private static function §5!Y§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
