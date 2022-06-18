package §#[§
{
   import flash.utils.getTimer;
   
   public class §#!Q§ extends §9;§
   {
      
      private static const §`3§:Boolean = §@!!§.§3!G§;
      
      private static const §]!"§:String = "framerate";
      
      private static const §@E§:String = "warning";
      
      private static const §+g§:String = "user-statistics";
      
      private static const §!Y§:String = "error";
      
      private static const §&!@§:String = "download-failed";
      
      private static const §=!>§:String = "invalid-level";
      
      private static const §,!0§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§5e§,§[!Y§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§9!1§,§-!Y§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§]!"§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§!Y§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §8!9§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §#I§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §=!"§:Array = [];
      
      public static const §+!H§:String = "level-selection";
       
      
      public function §#!Q§()
      {
         super();
      }
      
      public static function §<X§() : void
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
      
      public static function §,P§(param1:int, param2:int) : void
      {
         § 3§(§9;§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function § 3§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §8C§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §9;§.trackSampledEvent(_loc4_,§0N§,param1,param2,param3);
      }
      
      public static function §,!]§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§=!"§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §=!"§.length == 0;
         §=!"§.push(param2);
         if(param3)
         {
            _loc6_ = §9;§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §#!Q§.§8!9§;
            }
         }
         else
         {
            _loc6_ = §9;§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §#!Q§.§#I§;
            }
         }
         if(_loc5_)
         {
            § 3§(_loc6_,param1.toString(),param1);
         }
         §0@§(§]!"§,_loc6_,param2,param1);
      }
      
      public static function §9H§(param1:String) : void
      {
         §0@§(§@E§,§&!@§,param1,0);
      }
      
      public static function §6j§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §0@§(§@E§,§=!>§,param1,0);
      }
      
      public static function §#g§(param1:String) : void
      {
         §0@§(§@E§,§,!0§,param1,0);
      }
      
      public static function §--§(param1:String) : void
      {
         §0@§(§!Y§,param1,"",0,false);
      }
      
      private static function §0@§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §#+§;
            if(param5)
            {
               _loc6_ = §8C§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §8C§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §#+§;
      }
      
      private static function §#@§(param1:Array) : String
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
      
      private static function §=!X§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
