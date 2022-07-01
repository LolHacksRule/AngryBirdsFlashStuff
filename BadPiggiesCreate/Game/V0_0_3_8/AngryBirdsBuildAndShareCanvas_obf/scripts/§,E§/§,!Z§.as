package §,E§
{
   import flash.utils.getTimer;
   
   public class §,!Z§ extends §0!g§
   {
      
      private static const §,!x§:Boolean = §3!P§.§`"&§;
      
      private static const §3;§:String = "framerate";
      
      private static const §1m§:String = "warning";
      
      private static const §,Z§:String = "user-statistics";
      
      private static const §`!Y§:String = "error";
      
      private static const §1"0§:String = "download-failed";
      
      private static const §!!"§:String = "invalid-level";
      
      private static const §7c§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§#!Z§,§9Q§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§`!Y§,§6"3§,§3;§,§,Z§,§1m§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §6^§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §2T§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §>!T§:Array = [];
      
      public static const §]u§:String = "quest-started";
      
      public static const §4I§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§-!v§,§![§,§]u§,§4I§];
       
      
      public function §,!Z§()
      {
         super();
      }
      
      public static function §^!D§() : void
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
      
      public static function §<!c§(param1:int, param2:int) : void
      {
         §8"0§(§0!g§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §8"0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §>!-§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §0!g§.trackSampledEvent(_loc4_,§6"3§,param1,param2,param3);
      }
      
      public static function §6!K§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§>!T§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §>!T§.length == 0;
         §>!T§.push(param2);
         if(param3)
         {
            _loc6_ = §0!g§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §,!Z§.§6^§;
            }
         }
         else
         {
            _loc6_ = §0!g§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §,!Z§.§2T§;
            }
         }
         if(_loc5_)
         {
            §8"0§(_loc6_,param1.toString(),param1);
         }
         §]3§(§3;§,_loc6_,param2,param1);
      }
      
      public static function §5Y§(param1:String) : void
      {
         §]3§(§1m§,§1"0§,param1,0);
      }
      
      public static function §96§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §]3§(§1m§,§!!"§,param1,0);
      }
      
      public static function §#!;§(param1:String) : void
      {
         §]3§(§1m§,§7c§,param1,0);
      }
      
      public static function §,!T§(param1:String) : void
      {
         §]3§(§`!Y§,param1,"",0,false);
      }
      
      private static function §]3§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §1=§;
            if(param5)
            {
               _loc6_ = §>!-§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §>!-§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §1=§;
      }
      
      private static function §2",§(param1:Array) : String
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
      
      private static function §=!_§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
