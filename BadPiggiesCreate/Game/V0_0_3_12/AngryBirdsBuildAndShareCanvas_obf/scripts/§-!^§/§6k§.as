package §-!^§
{
   import flash.utils.getTimer;
   
   public class §6k§ extends §-y§
   {
      
      private static const §9E§:Boolean = §%"$§.§;[§;
      
      private static const §""%§:String = "framerate";
      
      private static const §5"2§:String = "warning";
      
      private static const §=P§:String = "user-statistics";
      
      private static const §3x§:String = "error";
      
      private static const §`o§:String = "download-failed";
      
      private static const §1!Q§:String = "invalid-level";
      
      private static const §8""§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§2!@§,§8!z§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§3x§,§ else§,§""%§,§=P§,§5"2§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §&P§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §""!§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §`"0§:Array = [];
      
      public static const §'!=§:String = "quest-started";
      
      public static const §08§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§6!x§,§>!§,§'!=§,§08§];
       
      
      public function §6k§()
      {
         super();
      }
      
      public static function §<!7§() : void
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
      
      public static function §6";§(param1:int, param2:int) : void
      {
         §+"=§(§-y§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §+"=§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §else§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §-y§.trackSampledEvent(_loc4_,§ else§,param1,param2,param3);
      }
      
      public static function §%"5§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§`"0§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §`"0§.length == 0;
         §`"0§.push(param2);
         if(param3)
         {
            _loc6_ = §-y§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6k§.§&P§;
            }
         }
         else
         {
            _loc6_ = §-y§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6k§.§""!§;
            }
         }
         if(_loc5_)
         {
            §+"=§(_loc6_,param1.toString(),param1);
         }
         §%!'§(§""%§,_loc6_,param2,param1);
      }
      
      public static function §]!2§(param1:String) : void
      {
         §%!'§(§5"2§,§`o§,param1,0);
      }
      
      public static function §9"$§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §%!'§(§5"2§,§1!Q§,param1,0);
      }
      
      public static function §9O§(param1:String) : void
      {
         §%!'§(§5"2§,§8""§,param1,0);
      }
      
      public static function §7!n§(param1:String) : void
      {
         §%!'§(§3x§,param1,"",0,false);
      }
      
      private static function §%!'§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §-P§;
            if(param5)
            {
               _loc6_ = §else§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §else§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §-P§;
      }
      
      private static function §<"+§(param1:Array) : String
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
      
      private static function §@v§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
