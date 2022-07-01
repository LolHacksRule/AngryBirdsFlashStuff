package §2i§
{
   import flash.utils.getTimer;
   
   public class §,,§ extends §=Q§
   {
      
      private static const §`>§:Boolean = §'N§.§8&§;
      
      private static const §,"0§:String = "framerate";
      
      private static const §5!e§:String = "warning";
      
      private static const §3b§:String = "user-statistics";
      
      private static const §0C§:String = "error";
      
      private static const §!I§:String = "download-failed";
      
      private static const §6!-§:String = "invalid-level";
      
      private static const §#A§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§^!6§,§2@§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§0C§,§`!g§,§,"0§,§3b§,§5!e§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §0!D§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §^!G§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §1p§:Array = [];
      
      public static const §9`§:String = "quest-started";
      
      public static const §3q§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§75§,§`!@§,§9`§,§3q§];
       
      
      public function §,,§()
      {
         super();
      }
      
      public static function §@!t§() : void
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
      
      public static function §&!=§(param1:int, param2:int) : void
      {
         §<Q§(§=Q§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §<Q§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §;!x§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §=Q§.trackSampledEvent(_loc4_,§`!g§,param1,param2,param3);
      }
      
      public static function §+!r§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§1p§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §1p§.length == 0;
         §1p§.push(param2);
         if(param3)
         {
            _loc6_ = §=Q§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §,,§.§0!D§;
            }
         }
         else
         {
            _loc6_ = §=Q§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §,,§.§^!G§;
            }
         }
         if(_loc5_)
         {
            §<Q§(_loc6_,param1.toString(),param1);
         }
         §["§(§,"0§,_loc6_,param2,param1);
      }
      
      public static function §]3§(param1:String) : void
      {
         §["§(§5!e§,§!I§,param1,0);
      }
      
      public static function §1-§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §["§(§5!e§,§6!-§,param1,0);
      }
      
      public static function §8j§(param1:String) : void
      {
         §["§(§5!e§,§#A§,param1,0);
      }
      
      public static function §[!C§(param1:String) : void
      {
         §["§(§0C§,param1,"",0,false);
      }
      
      private static function §["§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;R§;
            if(param5)
            {
               _loc6_ = §;!x§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §;!x§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §;R§;
      }
      
      private static function §7!<§(param1:Array) : String
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
      
      private static function §`<§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
