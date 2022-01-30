package §`6§
{
   import flash.utils.getTimer;
   
   public class §6,§ extends §9a§
   {
      
      public static const §-!a§:String = "level-selection";
      
      public static const §^!C§:String = "registration-success";
      
      public static const §@"§:String = "registration-failure";
      
      public static const §;G§:String = "login-success";
      
      public static const §7'§:String = "login-failure";
      
      private static const §[!&§:Boolean = §-!l§.§`"$§;
      
      private static const §&@§:String = "framerate";
      
      private static const §+,§:String = "powerup-used";
      
      private static const §^?§:String = "level-powerup-used";
      
      private static const §>!W§:String = "warning";
      
      private static const §4!M§:String = "user-statistics";
      
      private static const §%!2§:String = "error";
      
      private static const §@!@§:String = "download-failed";
      
      private static const §+!_§:String = "invalid-level";
      
      private static const §,M§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§1G§,§4!Q§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§0!<§,§%!v§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§&@§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§%!2§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §,&§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §>!m§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §^W§:Array = [];
       
      
      public function §6,§()
      {
         super();
      }
      
      public static function §@!Q§() : void
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
      
      public static function §0?§(param1:int, param2:int) : void
      {
         §8"0§(§9a§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §8"0§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §[!3§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §9a§.trackSampledEvent(_loc5_,§<!U§,param1,param2,param3);
      }
      
      public static function §7?§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§^W§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §^W§.length == 0;
         §^W§.push(param2);
         if(param3)
         {
            _loc6_ = §9a§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6,§.§,&§;
            }
         }
         else
         {
            _loc6_ = §9a§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6,§.§>!m§;
            }
         }
         if(_loc5_)
         {
            §8"0§(_loc6_,param1.toString(),param1);
         }
         §?!O§(§&@§,_loc6_,param2,param1);
      }
      
      public static function §&B§(param1:String) : void
      {
         §?!O§(§>!W§,§@!@§,param1,0);
      }
      
      public static function §@Y§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §?!O§(§>!W§,§+!_§,param1,0);
      }
      
      public static function §?e§(param1:String) : void
      {
         §?!O§(§>!W§,§,M§,param1,0);
      }
      
      public static function §4l§(param1:String) : void
      {
         §?!O§(§%!2§,param1,"",0,false);
      }
      
      private static function §?!O§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §6!O§;
            if(param5)
            {
               _loc6_ = §[!3§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §^N§(param1:String, param2:String) : void
      {
         var _loc3_:int = §<!B§();
         §1!;§(§+,§,param1,param2,0);
         §1!;§(§^?§,param2,param1,0);
      }
      
      private static function §1!;§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §6!O§;
            if(param5)
            {
               _loc6_ = §[!3§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §[!3§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §6!O§;
      }
      
      private static function §!!<§(param1:Array) : String
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
      
      private static function §<!B§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
