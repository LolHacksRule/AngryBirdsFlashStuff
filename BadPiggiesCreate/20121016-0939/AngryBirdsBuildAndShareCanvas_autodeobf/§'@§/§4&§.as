package §'@§
{
   import flash.utils.getTimer;
   
   public class §4&§ extends §4!n§
   {
      
      private static const §7F§:Boolean = §>"§.§>3§;
      
      private static const §^!n§:String = "framerate";
      
      private static const §'!§:String = "warning";
      
      private static const §var§:String = "user-statistics";
      
      private static const §[!&§:String = "error";
      
      private static const §+`§:String = "download-failed";
      
      private static const §+!3§:String = "invalid-level";
      
      private static const §8!e§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§3!c§,§'"&§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§[!&§,§@$§,§^!n§,§var§,§'!§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §"!n§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §^""§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §#!2§:Array = [];
      
      public static const §`E§:String = "quest-started";
      
      public static const §^!X§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§^",§,§]!y§,§`E§,§^!X§];
       
      
      public function §4&§()
      {
         super();
      }
      
      public static function §5"3§() : void
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
      
      public static function §;"?§(param1:int, param2:int) : void
      {
         §@!Q§(§4!n§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §@!Q§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §"?§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §4!n§.trackSampledEvent(_loc4_,§@$§,param1,param2,param3);
      }
      
      public static function §8"7§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§#!2§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §#!2§.length == 0;
         §#!2§.push(param2);
         if(param3)
         {
            _loc6_ = §4!n§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §4&§.§"!n§;
            }
         }
         else
         {
            _loc6_ = §4!n§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §4&§.§^""§;
            }
         }
         if(_loc5_)
         {
            §@!Q§(_loc6_,param1.toString(),param1);
         }
         §9L§(§^!n§,_loc6_,param2,param1);
      }
      
      public static function §0"4§(param1:String) : void
      {
         §9L§(§'!§,§+`§,param1,0);
      }
      
      public static function §,d§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §9L§(§'!§,§+!3§,param1,0);
      }
      
      public static function §3N§(param1:String) : void
      {
         §9L§(§'!§,§8!e§,param1,0);
      }
      
      public static function §2!r§(param1:String) : void
      {
         §9L§(§[!&§,param1,"",0,false);
      }
      
      private static function §9L§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §#,§;
            if(param5)
            {
               _loc6_ = §"?§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §"?§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §#,§;
      }
      
      private static function §%";§(param1:Array) : String
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
      
      private static function §=!t§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
