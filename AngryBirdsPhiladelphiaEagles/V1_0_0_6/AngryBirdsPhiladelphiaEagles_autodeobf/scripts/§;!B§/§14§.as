package §;!B§
{
   import flash.utils.getTimer;
   
   public class §14§ extends §1"§
   {
      
      public static const §]'§:String = "level-selection";
      
      public static const §9L§:String = "abfriends-link-click";
      
      public static const §?Y§:String = "slingshot-drag-start";
      
      private static const §,"§:Boolean = §>!?§.§9!-§;
      
      private static const §7!<§:String = "framerate";
      
      private static const §?4§:String = "warning";
      
      private static const §"!J§:String = "user-statistics";
      
      private static const §%1§:String = "error";
      
      private static const §=d§:String = "download-failed";
      
      private static const §!a§:String = "invalid-level";
      
      private static const §]S§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§'2§,§@r§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§9E§,§=!L§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§7!<§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§%1§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §8!5§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §`!?§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var § h§:Array = [];
       
      
      public function §14§()
      {
         super();
      }
      
      public static function §2+§() : void
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
      
      public static function §<!0§(param1:int, param2:int) : void
      {
         §`!O§(§1"§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §`!O§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §%p§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §1"§.trackSampledEvent(_loc4_,§[!,§,param1,param2,param3);
      }
      
      public static function §+!I§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§ h§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = § h§.length == 0;
         § h§.push(param2);
         if(param3)
         {
            _loc6_ = §1"§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §14§.§8!5§;
            }
         }
         else
         {
            _loc6_ = §1"§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §14§.§`!?§;
            }
         }
         if(_loc5_)
         {
            §`!O§(_loc6_,param1.toString(),param1);
         }
         §?v§(§7!<§,_loc6_,param2,param1);
      }
      
      public static function § -§(param1:String) : void
      {
         §?v§(§?4§,§=d§,param1,0);
      }
      
      public static function §%!7§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §?v§(§?4§,§!a§,param1,0);
      }
      
      public static function §+!8§(param1:String) : void
      {
         §?v§(§?4§,§]S§,param1,0);
      }
      
      public static function §6!#§(param1:String) : void
      {
         §?v§(§%1§,param1,"",0,false);
      }
      
      private static function §?v§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §46§;
            if(param5)
            {
               _loc6_ = §%p§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §%p§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §46§;
      }
      
      private static function §3!>§(param1:Array) : String
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
      
      private static function §^!@§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
