package §^3§
{
   import flash.utils.getTimer;
   
   public class §@!"§ extends §=!Z§
   {
      
      private static const §@! §:Boolean = §4+§.§4!-§;
      
      private static const §&!§:String = "framerate";
      
      private static const §^^§:String = "warning";
      
      private static const §1!`§:String = "user-statistics";
      
      private static const §3f§:String = "error";
      
      private static const §?&§:String = "download-failed";
      
      private static const §[!&§:String = "invalid-level";
      
      private static const §@H§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§+!%§,§]J§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§>!7§,§;f§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§&!§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§3f§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §3!P§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §;!;§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §>8§:Array = [];
      
      public static const §;!O§:String = "level-selection";
       
      
      public function §@!"§()
      {
         super();
      }
      
      public static function §`!H§() : void
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
      
      public static function §&P§(param1:int, param2:int) : void
      {
         §2^§(§=!Z§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §2^§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §2f§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §=!Z§.trackSampledEvent(_loc4_,§!g§,param1,param2,param3);
      }
      
      public static function §"!"§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§>8§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §>8§.length == 0;
         §>8§.push(param2);
         if(param3)
         {
            _loc6_ = §=!Z§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@!"§.§3!P§;
            }
         }
         else
         {
            _loc6_ = §=!Z§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@!"§.§;!;§;
            }
         }
         if(_loc5_)
         {
            §2^§(_loc6_,param1.toString(),param1);
         }
         §-!0§(§&!§,_loc6_,param2,param1);
      }
      
      public static function § !3§(param1:String) : void
      {
         §-!0§(§^^§,§?&§,param1,0);
      }
      
      public static function §0!W§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §-!0§(§^^§,§[!&§,param1,0);
      }
      
      public static function §`>§(param1:String) : void
      {
         §-!0§(§^^§,§@H§,param1,0);
      }
      
      public static function §;!B§(param1:String) : void
      {
         §-!0§(§3f§,param1,"",0,false);
      }
      
      private static function §-!0§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §@l§;
            if(param5)
            {
               _loc6_ = §2f§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §2f§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §@l§;
      }
      
      private static function §9!U§(param1:Array) : String
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
      
      private static function §[i§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
