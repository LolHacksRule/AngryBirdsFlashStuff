package §0!E§
{
   import flash.utils.getTimer;
   
   public class §-<§ extends §3"§
   {
      
      public static const §,2§:String = "level-selection";
      
      public static const §[!'§:String = "abfriends-link-click";
      
      public static const §]!%§:String = "slingshot-drag-start";
      
      private static const §-c§:Boolean = §!D§.§^!E§;
      
      private static const §9§:String = "framerate";
      
      private static const §>'§:String = "warning";
      
      private static const §&H§:String = "user-statistics";
      
      private static const § $§:String = "error";
      
      private static const §>!J§:String = "download-failed";
      
      private static const §-m§:String = "invalid-level";
      
      private static const §+!=§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§0a§,§,!M§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§>-§,§]#§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§9§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§ $§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §^H§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §>!P§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §+a§:Array = [];
       
      
      public function §-<§()
      {
         super();
      }
      
      public static function §8!!§() : void
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
      
      public static function §]S§(param1:int, param2:int) : void
      {
         §>v§(§3"§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §>v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §]H§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §3"§.trackSampledEvent(_loc4_,§`0§,param1,param2,param3);
      }
      
      public static function §`q§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§+a§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §+a§.length == 0;
         §+a§.push(param2);
         if(param3)
         {
            _loc6_ = §3"§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §-<§.§^H§;
            }
         }
         else
         {
            _loc6_ = §3"§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §-<§.§>!P§;
            }
         }
         if(_loc5_)
         {
            §>v§(_loc6_,param1.toString(),param1);
         }
         §?,§(§9§,_loc6_,param2,param1);
      }
      
      public static function §7I§(param1:String) : void
      {
         §?,§(§>'§,§>!J§,param1,0);
      }
      
      public static function §%j§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §?,§(§>'§,§-m§,param1,0);
      }
      
      public static function §0O§(param1:String) : void
      {
         §?,§(§>'§,§+!=§,param1,0);
      }
      
      public static function §6!#§(param1:String) : void
      {
         §?,§(§ $§,param1,"",0,false);
      }
      
      private static function §?,§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=Z§;
            if(param5)
            {
               _loc6_ = §]H§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §]H§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §=Z§;
      }
      
      private static function §+!G§(param1:Array) : String
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
      
      private static function §18§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
