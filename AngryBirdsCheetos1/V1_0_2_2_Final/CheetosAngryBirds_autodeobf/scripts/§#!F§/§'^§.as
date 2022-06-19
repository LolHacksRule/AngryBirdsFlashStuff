package §#!F§
{
   import flash.utils.getTimer;
   
   public class §'^§ extends §"!L§
   {
      
      private static const §[f§:Boolean = §#x§.§9h§;
      
      private static const §%8§:String = "framerate";
      
      private static const §<l§:String = "warning";
      
      private static const §"2§:String = "user-statistics";
      
      private static const §+P§:String = "error";
      
      private static const §]b§:String = "download-failed";
      
      private static const §with§:String = "invalid-level";
      
      private static const §>%§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§0y§,§6>§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§;!O§,§#!7§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§%8§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§+P§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §%&§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §]! §:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §]f§:Array = [];
      
      public static const §"'§:String = "level-selection";
       
      
      public function §'^§()
      {
         super();
      }
      
      public static function §0!"§() : void
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
      
      public static function §,[§(param1:int, param2:int) : void
      {
         §`0§(§"!L§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §`0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §-!T§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §"!L§.trackSampledEvent(_loc4_,§!!R§,param1,param2,param3);
      }
      
      public static function §>?§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§]f§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §]f§.length == 0;
         §]f§.push(param2);
         if(param3)
         {
            _loc6_ = §"!L§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'^§.§%&§;
            }
         }
         else
         {
            _loc6_ = §"!L§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'^§.§]! §;
            }
         }
         if(_loc5_)
         {
            §`0§(_loc6_,param1.toString(),param1);
         }
         §-!2§(§%8§,_loc6_,param2,param1);
      }
      
      public static function §??§(param1:String) : void
      {
         §-!2§(§<l§,§]b§,param1,0);
      }
      
      public static function §2!R§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §-!2§(§<l§,§with§,param1,0);
      }
      
      public static function §7!=§(param1:String) : void
      {
         §-!2§(§<l§,§>%§,param1,0);
      }
      
      public static function §10§(param1:String) : void
      {
         §-!2§(§+P§,param1,"",0,false);
      }
      
      private static function §-!2§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §9t§;
            if(param5)
            {
               _loc6_ = §-!T§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §-!T§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §9t§;
      }
      
      private static function §#S§(param1:Array) : String
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
      
      private static function §-"§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
