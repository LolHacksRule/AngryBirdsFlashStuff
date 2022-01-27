package §4!6§
{
   import flash.utils.getTimer;
   
   public class §>r§ extends §<!1§
   {
      
      public static const §^r§:String = "level-selection";
      
      public static const §?!-§:String = "abfriends-link-click";
      
      public static const §5v§:String = "slingshot-drag-start";
      
      private static const §?^§:Boolean = §#'§.§<y§;
      
      private static const §#$§:String = "framerate";
      
      private static const §;!C§:String = "warning";
      
      private static const §<p§:String = "user-statistics";
      
      private static const §&!E§:String = "error";
      
      private static const §[3§:String = "download-failed";
      
      private static const §,7§:String = "invalid-level";
      
      private static const §1!H§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§'m§,§=§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§]`§,§2y§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§#$§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§&!E§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §[f§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §]-§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §;!+§:Array = [];
       
      
      public function §>r§()
      {
         super();
      }
      
      public static function §3-§() : void
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
      
      public static function §%o§(param1:int, param2:int) : void
      {
         §!§(§<!1§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §!§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §<!6§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §<!1§.trackSampledEvent(_loc4_,§ !F§,param1,param2,param3);
      }
      
      public static function §&<§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§;!+§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §;!+§.length == 0;
         §;!+§.push(param2);
         if(param3)
         {
            _loc6_ = §<!1§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §>r§.§[f§;
            }
         }
         else
         {
            _loc6_ = §<!1§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §>r§.§]-§;
            }
         }
         if(_loc5_)
         {
            §!§(_loc6_,param1.toString(),param1);
         }
         §`[§(§#$§,_loc6_,param2,param1);
      }
      
      public static function §#N§(param1:String) : void
      {
         §`[§(§;!C§,§[3§,param1,0);
      }
      
      public static function §&9§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §`[§(§;!C§,§,7§,param1,0);
      }
      
      public static function §7y§(param1:String) : void
      {
         §`[§(§;!C§,§1!H§,param1,0);
      }
      
      public static function §'x§(param1:String) : void
      {
         §`[§(§&!E§,param1,"",0,false);
      }
      
      private static function §`[§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §5!&§;
            if(param5)
            {
               _loc6_ = §<!6§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §<!6§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §5!&§;
      }
      
      private static function §,C§(param1:Array) : String
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
      
      private static function §9!;§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
