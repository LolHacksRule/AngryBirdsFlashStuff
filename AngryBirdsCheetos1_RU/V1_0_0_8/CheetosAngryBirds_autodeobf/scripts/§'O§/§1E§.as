package §'O§
{
   import flash.utils.getTimer;
   
   public class §1E§ extends §!#§
   {
      
      private static const §4!S§:Boolean = §1R§.§8G§;
      
      private static const §-!G§:String = "framerate";
      
      private static const §6!@§:String = "warning";
      
      private static const §!!#§:String = "user-statistics";
      
      private static const §2D§:String = "error";
      
      private static const § 6§:String = "download-failed";
      
      private static const §`§:String = "invalid-level";
      
      private static const §87§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§0!'§,§6s§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§[8§,§3!6§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§-!G§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§2D§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §'A§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §5`§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §?`§:Array = [];
      
      public static const §3]§:String = "level-selection";
       
      
      public function §1E§()
      {
         super();
      }
      
      public static function §2;§() : void
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
      
      public static function §4!>§(param1:int, param2:int) : void
      {
         §6!S§(§!#§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §6!S§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §+!9§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §!#§.trackSampledEvent(_loc4_,§<S§,param1,param2,param3);
      }
      
      public static function §5!T§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§?`§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §?`§.length == 0;
         §?`§.push(param2);
         if(param3)
         {
            _loc6_ = §!#§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §1E§.§'A§;
            }
         }
         else
         {
            _loc6_ = §!#§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §1E§.§5`§;
            }
         }
         if(_loc5_)
         {
            §6!S§(_loc6_,param1.toString(),param1);
         }
         §1U§(§-!G§,_loc6_,param2,param1);
      }
      
      public static function §import§(param1:String) : void
      {
         §1U§(§6!@§,§ 6§,param1,0);
      }
      
      public static function §#L§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §1U§(§6!@§,§`§,param1,0);
      }
      
      public static function §@"§(param1:String) : void
      {
         §1U§(§6!@§,§87§,param1,0);
      }
      
      public static function §5§(param1:String) : void
      {
         §1U§(§2D§,param1,"",0,false);
      }
      
      private static function §1U§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;!L§;
            if(param5)
            {
               _loc6_ = §+!9§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §+!9§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §;!L§;
      }
      
      private static function §<i§(param1:Array) : String
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
      
      private static function §3A§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
