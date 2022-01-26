package §9I§
{
   import flash.utils.getTimer;
   
   public class §"!G§ extends §]!^§
   {
      
      public static const §&`§:String = "level-selection";
      
      public static const §"O§:String = "registration-success";
      
      public static const §`u§:String = "registration-failure";
      
      public static const §-'§:String = "registration-attempt";
      
      public static const § case§:String = "login-success";
      
      public static const §^,§:String = "login-failure";
      
      private static const §2x§:Boolean = §"!@§.§7e§;
      
      private static const §=!#§:String = "framerate";
      
      private static const §]1§:String = "warning";
      
      private static const §=!G§:String = "user-statistics";
      
      private static const §+!H§:String = "error";
      
      private static const §49§:String = "download-failed";
      
      private static const §%!6§:String = "invalid-level";
      
      private static const §;U§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§0!B§,§<!#§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§+J§,§,x§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§+!H§,§?I§,§=!#§,§=!G§,§]1§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §7d§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §,%§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §<b§:Array = [];
       
      
      public function §"!G§()
      {
         super();
      }
      
      public static function §9!I§() : void
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
      
      public static function §"q§(param1:int, param2:int) : void
      {
         §,U§(§]!^§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §,U§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §&!U§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §]!^§.trackSampledEvent(_loc4_,§?I§,param1,param2,param3);
      }
      
      public static function §5!"§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§<b§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §<b§.length == 0;
         §<b§.push(param2);
         if(param3)
         {
            _loc6_ = §]!^§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"!G§.§7d§;
            }
         }
         else
         {
            _loc6_ = §]!^§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"!G§.§,%§;
            }
         }
         if(_loc5_)
         {
            §,U§(_loc6_,param1.toString(),param1);
         }
         §53§(§=!#§,_loc6_,param2,param1);
      }
      
      public static function §"[§(param1:String) : void
      {
         §53§(§]1§,§49§,param1,0);
      }
      
      public static function §#!0§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §53§(§]1§,§%!6§,param1,0);
      }
      
      public static function §-@§(param1:String) : void
      {
         §53§(§]1§,§;U§,param1,0);
      }
      
      public static function §'Z§(param1:String) : void
      {
         §53§(§+!H§,param1,"",0,false);
      }
      
      private static function §53§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;m§;
            if(param5)
            {
               _loc6_ = §&!U§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §&!U§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §;m§;
      }
      
      private static function §=!Q§(param1:Array) : String
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
      
      private static function §05§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
