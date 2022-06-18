package §`!@§
{
   import flash.utils.getTimer;
   
   public class §^@§ extends §&[§
   {
      
      private static const §1K§:Boolean = §2!-§.§6!-§;
      
      private static const §2![§:String = "framerate";
      
      private static const §;!3§:String = "warning";
      
      private static const §extends§:String = "user-statistics";
      
      private static const §`g§:String = "error";
      
      private static const §]!0§:String = "download-failed";
      
      private static const §9^§:String = "invalid-level";
      
      private static const §9m§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§4;§,§%,§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§]<§,§?d§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§2![§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§`g§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §3n§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §;t§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §">§:Array = [];
      
      public static const §4'§:String = "level-selection";
       
      
      public function §^@§()
      {
         super();
      }
      
      public static function §-X§() : void
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
      
      public static function §7! §(param1:int, param2:int) : void
      {
         § !9§(§&[§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function § !9§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §&X§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §&[§.trackSampledEvent(_loc4_,§[r§,param1,param2,param3);
      }
      
      public static function §&!%§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§">§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §">§.length == 0;
         §">§.push(param2);
         if(param3)
         {
            _loc6_ = §&[§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §^@§.§3n§;
            }
         }
         else
         {
            _loc6_ = §&[§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §^@§.§;t§;
            }
         }
         if(_loc5_)
         {
            § !9§(_loc6_,param1.toString(),param1);
         }
         §]v§(§2![§,_loc6_,param2,param1);
      }
      
      public static function §%!A§(param1:String) : void
      {
         §]v§(§;!3§,§]!0§,param1,0);
      }
      
      public static function §20§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §]v§(§;!3§,§9^§,param1,0);
      }
      
      public static function §^!M§(param1:String) : void
      {
         §]v§(§;!3§,§9m§,param1,0);
      }
      
      public static function §"5§(param1:String) : void
      {
         §]v§(§`g§,param1,"",0,false);
      }
      
      private static function §]v§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §,! §;
            if(param5)
            {
               _loc6_ = §&X§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §&X§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §,! §;
      }
      
      private static function §"!^§(param1:Array) : String
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
      
      private static function §3!P§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
