package §9!0§
{
   import flash.utils.getTimer;
   
   public class §15§ extends § §
   {
      
      public static const §'8§:String = "level-selection";
      
      public static const §^Y§:String = "abfriends-link-click";
      
      public static const §var §:String = "slingshot-drag-start";
      
      private static const §1!D§:Boolean = §#!1§.§7I§;
      
      private static const §98§:String = "framerate";
      
      private static const §=X§:String = "warning";
      
      private static const §"<§:String = "user-statistics";
      
      private static const §=e§:String = "error";
      
      private static const §0!<§:String = "download-failed";
      
      private static const §;e§:String = "invalid-level";
      
      private static const §`s§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§+c§,§`%§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§5`§,§2g§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§98§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§=e§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §,Y§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §>>§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var § !6§:Array = [];
       
      
      public function §15§()
      {
         super();
      }
      
      public static function §[§() : void
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
      
      public static function §2!0§(param1:int, param2:int) : void
      {
         §,!1§(§ §.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §,!1§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §0!6§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         § §.trackSampledEvent(_loc4_,§"2§,param1,param2,param3);
      }
      
      public static function §8h§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§ !6§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = § !6§.length == 0;
         § !6§.push(param2);
         if(param3)
         {
            _loc6_ = § §.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §15§.§,Y§;
            }
         }
         else
         {
            _loc6_ = § §.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §15§.§>>§;
            }
         }
         if(_loc5_)
         {
            §,!1§(_loc6_,param1.toString(),param1);
         }
         §">§(§98§,_loc6_,param2,param1);
      }
      
      public static function §6$§(param1:String) : void
      {
         §">§(§=X§,§0!<§,param1,0);
      }
      
      public static function §^&§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §">§(§=X§,§;e§,param1,0);
      }
      
      public static function §>!J§(param1:String) : void
      {
         §">§(§=X§,§`s§,param1,0);
      }
      
      public static function §87§(param1:String) : void
      {
         §">§(§=e§,param1,"",0,false);
      }
      
      private static function §">§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §>a§;
            if(param5)
            {
               _loc6_ = §0!6§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §0!6§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §>a§;
      }
      
      private static function §0!&§(param1:Array) : String
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
      
      private static function §%o§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
