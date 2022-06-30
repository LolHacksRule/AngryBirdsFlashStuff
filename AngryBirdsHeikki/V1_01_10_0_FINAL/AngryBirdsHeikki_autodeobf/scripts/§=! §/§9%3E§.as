package §=! §
{
   import flash.utils.getTimer;
   
   public class §9>§ extends §,Z§
   {
      
      public static const §8W§:String = "level-selection";
      
      public static const §9B§:String = "registration-success";
      
      public static const §3!Q§:String = "registration-failure";
      
      public static const §-!D§:String = "login-success";
      
      public static const § j§:String = "login-failure";
      
      private static const §throw§:Boolean = §,L§.§]!^§;
      
      private static const §>i§:String = "framerate";
      
      private static const §2!6§:String = "warning";
      
      private static const §?!V§:String = "user-statistics";
      
      private static const §>P§:String = "error";
      
      private static const §0Z§:String = "download-failed";
      
      private static const §;i§:String = "invalid-level";
      
      private static const §`!>§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§-Q§,§"-§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§+!V§,§,+§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§>i§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§>P§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §"S§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §3q§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §;!F§:Array = [];
       
      
      public function §9>§()
      {
         super();
      }
      
      public static function §=2§() : void
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
      
      public static function §0X§(param1:int, param2:int) : void
      {
         §>%§(§,Z§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §>%§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §@F§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §,Z§.trackSampledEvent(_loc4_,§=!H§,param1,param2,param3);
      }
      
      public static function §+u§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§;!F§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §;!F§.length == 0;
         §;!F§.push(param2);
         if(param3)
         {
            _loc6_ = §,Z§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §9>§.§"S§;
            }
         }
         else
         {
            _loc6_ = §,Z§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §9>§.§3q§;
            }
         }
         if(_loc5_)
         {
            §>%§(_loc6_,param1.toString(),param1);
         }
         §,`§(§>i§,_loc6_,param2,param1);
      }
      
      public static function §+!%§(param1:String) : void
      {
         §,`§(§2!6§,§0Z§,param1,0);
      }
      
      public static function §>!,§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §,`§(§2!6§,§;i§,param1,0);
      }
      
      public static function §,e§(param1:String) : void
      {
         §,`§(§2!6§,§`!>§,param1,0);
      }
      
      public static function §%k§(param1:String) : void
      {
         §,`§(§>P§,param1,"",0,false);
      }
      
      private static function §,`§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §6!O§;
            if(param5)
            {
               _loc6_ = §@F§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §@F§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §]!f§(param1:Array) : String
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
      
      private static function §@h§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
