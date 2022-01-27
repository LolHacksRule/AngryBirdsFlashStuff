package §!V§
{
   import flash.utils.getTimer;
   
   public class §>d§ extends §<!g§
   {
      
      private static const §6!"§:Boolean = §5!9§.§1!#§;
      
      private static const §?6§:String = "framerate";
      
      private static const §]8§:String = "warning";
      
      private static const §?H§:String = "user-statistics";
      
      private static const §+!^§:String = "error";
      
      private static const §3G§:String = "download-failed";
      
      private static const §]x§:String = "invalid-level";
      
      private static const §[[§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§?6§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§+!^§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §+!e§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §8W§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var § K§:Array = [];
      
      public static const §<§:String = "level-selection";
      
      public static const §?+§:String = "level-failed";
      
      public static const §`O§:String = "cheetos-powerup-bought";
      
      public static const §&`§:String = "level-started-free";
      
      public static const §3B§:String = "level-started-premium";
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§^!A§,§#!b§,§`O§,§&`§,§3B§,§#S§,§0!=§,§?+§];
       
      
      public function §>d§()
      {
         super();
      }
      
      public static function §-!L§() : void
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
      
      public static function §<!^§(param1:int, param2:int) : void
      {
         §@Y§(§<!g§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §@Y§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §#o§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §<!g§.trackSampledEvent(_loc4_,§3A§,param1,param2,param3);
      }
      
      public static function §+!<§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§ K§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = § K§.length == 0;
         § K§.push(param2);
         if(param3)
         {
            _loc6_ = §<!g§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §>d§.§+!e§;
            }
         }
         else
         {
            _loc6_ = §<!g§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §>d§.§8W§;
            }
         }
         if(_loc5_)
         {
            §@Y§(_loc6_,param1.toString(),param1);
         }
         §-!!§(§?6§,_loc6_,param2,param1);
      }
      
      public static function §2I§(param1:String) : void
      {
         §-!!§(§]8§,§3G§,param1,0);
      }
      
      public static function §]!5§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §-!!§(§]8§,§]x§,param1,0);
      }
      
      public static function §-]§(param1:String) : void
      {
         §-!!§(§]8§,§[[§,param1,0);
      }
      
      public static function § T§(param1:String) : void
      {
         §-!!§(§+!^§,param1,"",0,false);
      }
      
      private static function §-!!§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §?!N§;
            if(param5)
            {
               _loc6_ = §#o§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §#o§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §?!N§;
      }
      
      private static function §,"§(param1:Array) : String
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
      
      private static function §>g§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
