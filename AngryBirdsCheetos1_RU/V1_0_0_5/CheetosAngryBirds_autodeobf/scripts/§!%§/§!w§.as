package §!%§
{
   import flash.utils.getTimer;
   
   public class §!w§ extends § D§
   {
      
      private static const §5!D§:Boolean = §3§.§ -§;
      
      private static const §5g§:String = "framerate";
      
      private static const §]!"§:String = "warning";
      
      private static const §@$§:String = "user-statistics";
      
      private static const §#t§:String = "error";
      
      private static const §^j§:String = "download-failed";
      
      private static const §@!3§:String = "invalid-level";
      
      private static const §>!H§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§[!H§,§9!K§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§9!,§,§]z§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§5g§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§#t§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §`!N§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §;'§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §4I§:Array = [];
      
      public static const §%6§:String = "level-selection";
       
      
      public function §!w§()
      {
         super();
      }
      
      public static function §5k§() : void
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
      
      public static function §>§(param1:int, param2:int) : void
      {
         §]!§(§ D§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §]!§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §0c§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         § D§.trackSampledEvent(_loc4_,§1G§,param1,param2,param3);
      }
      
      public static function §%!T§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§4I§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §4I§.length == 0;
         §4I§.push(param2);
         if(param3)
         {
            _loc6_ = § D§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!w§.§`!N§;
            }
         }
         else
         {
            _loc6_ = § D§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!w§.§;'§;
            }
         }
         if(_loc5_)
         {
            §]!§(_loc6_,param1.toString(),param1);
         }
         §6! §(§5g§,_loc6_,param2,param1);
      }
      
      public static function §=P§(param1:String) : void
      {
         §6! §(§]!"§,§^j§,param1,0);
      }
      
      public static function § u§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §6! §(§]!"§,§@!3§,param1,0);
      }
      
      public static function §0!E§(param1:String) : void
      {
         §6! §(§]!"§,§>!H§,param1,0);
      }
      
      public static function §5!8§(param1:String) : void
      {
         §6! §(§#t§,param1,"",0,false);
      }
      
      private static function §6! §(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §]m§;
            if(param5)
            {
               _loc6_ = §0c§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §0c§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §]m§;
      }
      
      private static function §,!+§(param1:Array) : String
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
      
      private static function §4!2§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
