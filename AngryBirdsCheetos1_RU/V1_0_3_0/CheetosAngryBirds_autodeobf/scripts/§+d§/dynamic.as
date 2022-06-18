package §+d§
{
   import flash.utils.getTimer;
   
   public class dynamic extends §3!9§
   {
      
      private static const §!N§:Boolean = §7!^§.§^B§;
      
      private static const §5!E§:String = "framerate";
      
      private static const §+5§:String = "warning";
      
      private static const §!!#§:String = "user-statistics";
      
      private static const §86§:String = "error";
      
      private static const §#!G§:String = "download-failed";
      
      private static const §;Z§:String = "invalid-level";
      
      private static const §3![§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§[!!§,§]q§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§!u§,§ Z§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§5!E§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§86§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const § ,§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §!$§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §0]§:Array = [];
      
      public static const §^-§:String = "level-selection";
       
      
      public function dynamic()
      {
         super();
      }
      
      public static function §1!J§() : void
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
      
      public static function § !M§(param1:int, param2:int) : void
      {
         §&!V§(§3!9§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §&!V§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §-!§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §3!9§.trackSampledEvent(_loc4_,§1L§,param1,param2,param3);
      }
      
      public static function §9W§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§0]§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §0]§.length == 0;
         §0]§.push(param2);
         if(param3)
         {
            _loc6_ = §3!9§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = dynamic.§ ,§;
            }
         }
         else
         {
            _loc6_ = §3!9§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = dynamic.§!$§;
            }
         }
         if(_loc5_)
         {
            §&!V§(_loc6_,param1.toString(),param1);
         }
         §03§(§5!E§,_loc6_,param2,param1);
      }
      
      public static function §]M§(param1:String) : void
      {
         §03§(§+5§,§#!G§,param1,0);
      }
      
      public static function §>!5§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §03§(§+5§,§;Z§,param1,0);
      }
      
      public static function §+,§(param1:String) : void
      {
         §03§(§+5§,§3![§,param1,0);
      }
      
      public static function § !2§(param1:String) : void
      {
         §03§(§86§,param1,"",0,false);
      }
      
      private static function §03§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §+!_§;
            if(param5)
            {
               _loc6_ = §-!§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §-!§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §+!_§;
      }
      
      private static function §^;§(param1:Array) : String
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
      
      private static function §<@§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
