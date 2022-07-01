package §&!&§
{
   import flash.utils.getTimer;
   
   public class §8F§ extends §2!w§
   {
      
      private static const §^Y§:Boolean = §7"$§.§2!_§;
      
      private static const §!M§:String = "framerate";
      
      private static const §7!y§:String = "warning";
      
      private static const §+!A§:String = "user-statistics";
      
      private static const §-I§:String = "error";
      
      private static const §=!m§:String = "download-failed";
      
      private static const §+!+§:String = "invalid-level";
      
      private static const §@!L§:String = "flash-var-missing";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§+"4§,§3j§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§-I§,§ N§,§!M§,§+!A§,§7!y§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §<O§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §[&§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §2#§:Array = [];
      
      public static const §`!O§:String = "quest-started";
      
      public static const §#0§:String = "quest-completed";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§3!f§,§3!G§,§`!O§,§#0§];
       
      
      public function §8F§()
      {
         super();
      }
      
      public static function §else§() : void
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
      
      public static function §""$§(param1:int, param2:int) : void
      {
         §1p§(§2!w§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §1p§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §@y§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §2!w§.trackSampledEvent(_loc4_,§ N§,param1,param2,param3);
      }
      
      public static function §1",§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§2#§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §2#§.length == 0;
         §2#§.push(param2);
         if(param3)
         {
            _loc6_ = §2!w§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §8F§.§<O§;
            }
         }
         else
         {
            _loc6_ = §2!w§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §8F§.§[&§;
            }
         }
         if(_loc5_)
         {
            §1p§(_loc6_,param1.toString(),param1);
         }
         §#" §(§!M§,_loc6_,param2,param1);
      }
      
      public static function §&!j§(param1:String) : void
      {
         §#" §(§7!y§,§=!m§,param1,0);
      }
      
      public static function §@!t§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §#" §(§7!y§,§+!+§,param1,0);
      }
      
      public static function §]!m§(param1:String) : void
      {
         §#" §(§7!y§,§@!L§,param1,0);
      }
      
      public static function §=t§(param1:String) : void
      {
         §#" §(§-I§,param1,"",0,false);
      }
      
      private static function §#" §(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §2!0§;
            if(param5)
            {
               _loc6_ = §@y§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §@y§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §2!0§;
      }
      
      private static function §`B§(param1:Array) : String
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
      
      private static function §?!,§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
