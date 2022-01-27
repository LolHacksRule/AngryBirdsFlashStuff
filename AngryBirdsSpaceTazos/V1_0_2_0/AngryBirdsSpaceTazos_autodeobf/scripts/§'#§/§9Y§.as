package §'#§
{
   import flash.utils.getTimer;
   
   public class §9Y§ extends §9m§
   {
      
      public static const §!!,§:String = "level-selection";
      
      public static const §"!_§:String = "registration-success";
      
      public static const §7!X§:String = "registration-failure";
      
      public static const §8!W§:String = "login-success";
      
      public static const §0G§:String = "login-failure";
      
      private static const §3"9§:Boolean = §&!h§.§+",§;
      
      private static const §0!&§:String = "framerate";
      
      private static const §`!E§:String = "powerup-used";
      
      private static const §with§:String = "level-powerup-used";
      
      private static const §!l§:String = "warning";
      
      private static const §7!o§:String = "user-statistics";
      
      private static const §7"C§:String = "error";
      
      private static const §""+§:String = "download-failed";
      
      private static const § _§:String = "invalid-level";
      
      private static const §3!P§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§@_§,§<!J§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§ set§,§2T§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§0!&§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§7"C§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §5"3§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §'!u§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §]"7§:Array = [];
       
      
      public function §9Y§()
      {
         super();
      }
      
      public static function §^"?§() : void
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
      
      public static function §1!L§(param1:int, param2:int) : void
      {
         §6x§(§9m§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §6x§(param1:String, param2:String = null, param3:int = 0, param4:int = 0) : void
      {
         var _loc5_:String = §5'§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §9m§.trackSampledEvent(_loc5_,§ !g§,param1,param2,param3);
      }
      
      public static function §`!g§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§]"7§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §]"7§.length == 0;
         §]"7§.push(param2);
         if(param3)
         {
            _loc6_ = §9m§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §9Y§.§5"3§;
            }
         }
         else
         {
            _loc6_ = §9m§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §9Y§.§'!u§;
            }
         }
         if(_loc5_)
         {
            §6x§(_loc6_,param1.toString(),param1);
         }
         §]3§(§0!&§,_loc6_,param2,param1);
      }
      
      public static function §3!-§(param1:String) : void
      {
         §]3§(§!l§,§""+§,param1,0);
      }
      
      public static function §0!T§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §]3§(§!l§,§ _§,param1,0);
      }
      
      public static function §3!9§(param1:String) : void
      {
         §]3§(§!l§,§3!P§,param1,0);
      }
      
      public static function §0"E§(param1:String) : void
      {
         §]3§(§7"C§,param1,"",0,false);
      }
      
      private static function §]3§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;5§;
            if(param5)
            {
               _loc6_ = §5'§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      public static function §%6§(param1:String, param2:String) : void
      {
         var _loc3_:int = §`!P§();
         §"6§(§`!E§,param1,param2,0);
         §"6§(§with§,param2,param1,0);
      }
      
      private static function §"6§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;5§;
            if(param5)
            {
               _loc6_ = §5'§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §5'§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §;5§;
      }
      
      private static function §^!o§(param1:Array) : String
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
      
      private static function §`!P§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
