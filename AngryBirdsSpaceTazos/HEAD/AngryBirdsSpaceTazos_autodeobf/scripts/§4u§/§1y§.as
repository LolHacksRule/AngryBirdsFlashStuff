package §4u§
{
   import flash.utils.getTimer;
   
   public class §1y§ extends §]b§
   {
      
      public static const §,""§:String = "level-selection";
      
      public static const §9"5§:String = "registration-success";
      
      public static const §`!v§:String = "registration-failure";
      
      public static const §5P§:String = "login-success";
      
      public static const §;r§:String = "login-failure";
      
      private static const §&T§:Boolean = §2&§.§"",§;
      
      private static const §,A§:String = "framerate";
      
      private static const §3V§:String = "powerup-used";
      
      private static const §0!_§:String = "level-powerup-used";
      
      private static const §4!9§:String = "warning";
      
      private static const §"8§:String = "user-statistics";
      
      private static const §"v§:String = "error";
      
      private static const §&!q§:String = "download-failed";
      
      private static const §%!e§:String = "invalid-level";
      
      private static const §?F§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§9"A§,§#N§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§5t§,§^"1§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§,A§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§"v§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §4"E§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §,S§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §7"H§:Array = [];
       
      
      public function §1y§()
      {
         super();
      }
      
      public static function §6!`§() : void
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
      
      public static function §2!F§(param1:int, param2:int) : void
      {
         §<>§(§]b§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §<>§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §,!1§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §]b§.trackSampledEvent(_loc5_,§4!y§,param1,param2,param3);
      }
      
      public static function §8!a§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§7"H§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §7"H§.length == 0;
         §7"H§.push(param2);
         if(param3)
         {
            _loc6_ = §]b§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §1y§.§4"E§;
            }
         }
         else
         {
            _loc6_ = §]b§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §1y§.§,S§;
            }
         }
         if(_loc5_)
         {
            §<>§(_loc6_,param1.toString(),param1);
         }
         §<!r§(§,A§,_loc6_,param2,param1);
      }
      
      public static function §9!P§(param1:String) : void
      {
         §<!r§(§4!9§,§&!q§,param1,0);
      }
      
      public static function §>"D§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §<!r§(§4!9§,§%!e§,param1,0);
      }
      
      public static function §%"-§(param1:String) : void
      {
         §<!r§(§4!9§,§?F§,param1,0);
      }
      
      public static function §,J§(param1:String) : void
      {
         §<!r§(§"v§,param1,"",0,false);
      }
      
      private static function §<!r§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §0"4§;
            if(param5)
            {
               _loc6_ = §,!1§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §&!4§(param1:String, param2:String) : void
      {
         var _loc3_:int = §&!H§();
         §!!%§(§3V§,param1,param2,0);
         §!!%§(§0!_§,param2,param1,0);
      }
      
      private static function §!!%§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §0"4§;
            if(param5)
            {
               _loc6_ = §,!1§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §,!1§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §0"4§;
      }
      
      private static function §%"A§(param1:Array) : String
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
      
      private static function §&!H§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
