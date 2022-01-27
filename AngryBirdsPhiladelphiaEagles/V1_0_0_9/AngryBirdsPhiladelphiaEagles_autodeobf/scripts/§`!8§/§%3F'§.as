package §`!8§
{
   import flash.utils.getTimer;
   
   public class §?'§ extends §^!0§
   {
      
      public static const §,4§:String = "level-selection";
      
      public static const §1v§:String = "abfriends-link-click";
      
      public static const §,!G§:String = "slingshot-drag-start";
      
      private static const §>!3§:Boolean = §=!<§.§=o§;
      
      private static const §[R§:String = "framerate";
      
      private static const §^M§:String = "warning";
      
      private static const §?!5§:String = "user-statistics";
      
      private static const §!A§:String = "error";
      
      private static const §>!+§:String = "download-failed";
      
      private static const §@8§:String = "invalid-level";
      
      private static const §;!F§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§#!'§,§7g§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§?!J§,§,n§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§[R§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§!A§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §-V§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §"w§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §[`§:Array = [];
       
      
      public function §?'§()
      {
         super();
      }
      
      public static function §8#§() : void
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
      
      public static function §&!C§(param1:int, param2:int) : void
      {
         §%P§(§^!0§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §%P§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §@"§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §^!0§.trackSampledEvent(_loc4_,§>2§,param1,param2,param3);
      }
      
      public static function §-!J§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§[`§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §[`§.length == 0;
         §[`§.push(param2);
         if(param3)
         {
            _loc6_ = §^!0§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §?'§.§-V§;
            }
         }
         else
         {
            _loc6_ = §^!0§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §?'§.§"w§;
            }
         }
         if(_loc5_)
         {
            §%P§(_loc6_,param1.toString(),param1);
         }
         §,N§(§[R§,_loc6_,param2,param1);
      }
      
      public static function §2v§(param1:String) : void
      {
         §,N§(§^M§,§>!+§,param1,0);
      }
      
      public static function §%-§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §,N§(§^M§,§@8§,param1,0);
      }
      
      public static function §",§(param1:String) : void
      {
         §,N§(§^M§,§;!F§,param1,0);
      }
      
      public static function §+1§(param1:String) : void
      {
         §,N§(§!A§,param1,"",0,false);
      }
      
      private static function §,N§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §3!>§;
            if(param5)
            {
               _loc6_ = §@"§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §@"§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §3!>§;
      }
      
      private static function §`n§(param1:Array) : String
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
      
      private static function §0!G§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
