package §-!F§
{
   import flash.utils.getTimer;
   
   public class §]L§ extends §%>§
   {
      
      public static const §,!Z§:String = "level-selection";
      
      public static const §'>§:String = "registration-success";
      
      public static const §#c§:String = "registration-failure";
      
      public static const §7!!§:String = "login-success";
      
      public static const §-!s§:String = "login-failure";
      
      private static const § J§:Boolean = §&N§.§[z§;
      
      private static const §5-§:String = "framerate";
      
      private static const §]m§:String = "powerup-used";
      
      private static const §,!0§:String = "level-powerup-used";
      
      private static const §"Q§:String = "warning";
      
      private static const §7!9§:String = "user-statistics";
      
      private static const §!G§:String = "error";
      
      private static const §]!q§:String = "download-failed";
      
      private static const §?!8§:String = "invalid-level";
      
      private static const §^E§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§4@§,§@[§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§?"&§,§]n§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§5-§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§!G§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §`!w§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §'!y§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §6!f§:Array = [];
       
      
      public function §]L§()
      {
         super();
      }
      
      public static function §"!#§() : void
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
      
      public static function §<'§(param1:int, param2:int) : void
      {
         §0!S§(§%>§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §0!S§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §-4§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §%>§.trackSampledEvent(_loc5_,§%!_§,param1,param2,param3);
      }
      
      public static function §`F§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§6!f§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §6!f§.length == 0;
         §6!f§.push(param2);
         if(param3)
         {
            _loc6_ = §%>§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]L§.§`!w§;
            }
         }
         else
         {
            _loc6_ = §%>§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]L§.§'!y§;
            }
         }
         if(_loc5_)
         {
            §0!S§(_loc6_,param1.toString(),param1);
         }
         §#!-§(§5-§,_loc6_,param2,param1);
      }
      
      public static function §8J§(param1:String) : void
      {
         §#!-§(§"Q§,§]!q§,param1,0);
      }
      
      public static function §1=§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §#!-§(§"Q§,§?!8§,param1,0);
      }
      
      public static function §[?§(param1:String) : void
      {
         §#!-§(§"Q§,§^E§,param1,0);
      }
      
      public static function §@"'§(param1:String) : void
      {
         §#!-§(§!G§,param1,"",0,false);
      }
      
      private static function §#!-§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §?"$§;
            if(param5)
            {
               _loc6_ = §-4§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §;P§(param1:String, param2:String) : void
      {
         var _loc3_:int = §]u§();
         §]C§(§]m§,param1,param2,0);
         §]C§(§,!0§,param2,param1,0);
      }
      
      private static function §]C§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §?"$§;
            if(param5)
            {
               _loc6_ = §-4§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §-4§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §?"$§;
      }
      
      private static function §9U§(param1:Array) : String
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
      
      private static function §]u§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
