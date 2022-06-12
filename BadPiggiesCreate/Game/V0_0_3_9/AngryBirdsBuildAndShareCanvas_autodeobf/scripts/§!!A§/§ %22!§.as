package §!!A§
{
   import flash.utils.getTimer;
   
   public class § "!§ extends §@P§
   {
      
      private static const §[6§:Boolean = §1+§.§3'§;
      
      private static const §]!,§:String = "framerate";
      
      private static const §-!d§:String = "warning";
      
      private static const §1!#§:String = "user-statistics";
      
      private static const §5J§:String = "error";
      
      private static const §5K§:String = "download-failed";
      
      private static const §4!&§:String = "invalid-level";
      
      private static const §1!t§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§-$§,§&m§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§5J§,§3!?§,§]!,§,§1!#§,§-!d§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §4!G§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §^!e§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §8D§:Array = [];
      
      public static const §7U§:String = "quest-started";
      
      public static const §?"+§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§]!O§,§#%§,§7U§,§?"+§];
       
      
      public function § "!§()
      {
         super();
      }
      
      public static function §&C§() : void
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
      
      public static function §4!8§(param1:int, param2:int) : void
      {
         static(§@P§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function static(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §="7§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §@P§.trackSampledEvent(_loc4_,§3!?§,param1,param2,param3);
      }
      
      public static function §#!;§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§8D§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §8D§.length == 0;
         §8D§.push(param2);
         if(param3)
         {
            _loc6_ = §@P§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = § "!§.§4!G§;
            }
         }
         else
         {
            _loc6_ = §@P§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = § "!§.§^!e§;
            }
         }
         if(_loc5_)
         {
            static(_loc6_,param1.toString(),param1);
         }
         § f§(§]!,§,_loc6_,param2,param1);
      }
      
      public static function §<?§(param1:String) : void
      {
         § f§(§-!d§,§5K§,param1,0);
      }
      
      public static function §<F§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         § f§(§-!d§,§4!&§,param1,0);
      }
      
      public static function §2!&§(param1:String) : void
      {
         § f§(§-!d§,§1!t§,param1,0);
      }
      
      public static function §%!M§(param1:String) : void
      {
         § f§(§5J§,param1,"",0,false);
      }
      
      private static function § f§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §`!Y§;
            if(param5)
            {
               _loc6_ = §="7§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §="7§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §`!Y§;
      }
      
      private static function §"@§(param1:Array) : String
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
      
      private static function §7!m§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
