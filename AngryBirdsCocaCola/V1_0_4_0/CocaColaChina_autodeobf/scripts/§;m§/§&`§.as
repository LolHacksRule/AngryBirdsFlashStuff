package §;m§
{
   import flash.utils.getTimer;
   
   public class §&`§ extends §?I§
   {
      
      public static const §"O§:String = "level-selection";
      
      public static const §`u§:String = "registration-success";
      
      public static const §-'§:String = "registration-failure";
      
      public static const § case§:String = "registration-attempt";
      
      public static const §^,§:String = "login-success";
      
      public static const §2x§:String = "login-failure";
      
      private static const §=!#§:Boolean = §"!@§.§&g§;
      
      private static const §]1§:String = "framerate";
      
      private static const §=!G§:String = "warning";
      
      private static const §+!H§:String = "user-statistics";
      
      private static const §,%§:String = "error";
      
      private static const §%!6§:String = "download-failed";
      
      private static const §;U§:String = "invalid-level";
      
      private static const §<b§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§+J§,§,x§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§1!a§,§ 0§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§,%§,§'"§,§]1§,§+!H§,§=!G§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §49§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §7d§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §9!I§:Array = [];
       
      
      public function §&`§()
      {
         super();
      }
      
      public static function §"q§() : void
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
      
      public static function §5!"§(param1:int, param2:int) : void
      {
         §"!G§(§?I§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §"!G§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §=!Q§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §?I§.trackSampledEvent(_loc4_,§'"§,param1,param2,param3);
      }
      
      public static function §"[§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§9!I§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §9!I§.length == 0;
         §9!I§.push(param2);
         if(param3)
         {
            _loc6_ = §?I§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §&`§.§49§;
            }
         }
         else
         {
            _loc6_ = §?I§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §&`§.§7d§;
            }
         }
         if(_loc5_)
         {
            §"!G§(_loc6_,param1.toString(),param1);
         }
         §&!U§(§]1§,_loc6_,param2,param1);
      }
      
      public static function §#!0§(param1:String) : void
      {
         §&!U§(§=!G§,§%!6§,param1,0);
      }
      
      public static function §-@§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §&!U§(§=!G§,§;U§,param1,0);
      }
      
      public static function §'Z§(param1:String) : void
      {
         §&!U§(§=!G§,§<b§,param1,0);
      }
      
      public static function §53§(param1:String) : void
      {
         §&!U§(§,%§,param1,"",0,false);
      }
      
      private static function §&!U§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §>!;§;
            if(param5)
            {
               _loc6_ = §=!Q§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §=!Q§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §>!;§;
      }
      
      private static function §05§(param1:Array) : String
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
      
      private static function §,+§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
