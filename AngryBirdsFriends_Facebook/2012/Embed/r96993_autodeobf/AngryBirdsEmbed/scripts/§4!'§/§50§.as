package §4!'§
{
   import flash.utils.getTimer;
   
   public class §50§ extends §0g§
   {
      
      private static const §>§:Boolean = AngryBirdsFP11.§;!9§;
      
      private static const §;1§:String = "warning";
      
      private static const §&Z§:String = "full-game-link";
      
      private static const §"Q§:String = "framerate";
      
      private static const §]'§:String = "error";
      
      public static const §0p§:String = "slingshot-used";
      
      private static const §3[§:String = "download-failed";
      
      private static const §6!3§:String = "invalid-level";
      
      private static const §&i§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§2"§,§ set§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§]'§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §`!>§:Array = [];
      
      private static var §0!6§:Boolean = false;
       
      
      public function §50§()
      {
         super();
      }
      
      public static function §>K§() : void
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
      
      public static function §-6§(param1:int, param2:int) : void
      {
         §>J§(§0g§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §>J§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §0N§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§-N§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §]!C§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§`!>§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §`!>§.length == 0;
         §`!>§.push(param2);
         if(param3)
         {
            _loc5_ = §0g§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §0g§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §>J§(_loc5_,param1.toString(),param1);
         }
         §9t§(§"Q§,_loc5_,param2,param1);
      }
      
      public static function §^=§(param1:String) : void
      {
         §9t§(§;1§,§3[§,param1,0);
      }
      
      public static function §]@§(param1:String) : void
      {
         var _loc2_:int = § var§();
         §9t§(§&Z§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §!-§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §9t§(§;1§,§6!3§,param1,0);
      }
      
      public static function §!x§(param1:String) : void
      {
         §9t§(§;1§,§&i§,param1,0);
      }
      
      public static function §&a§(param1:String) : void
      {
         §9t§(§]'§,param1,"",0,false);
      }
      
      public static function §=1§() : void
      {
         if(§0!6§)
         {
            return;
         }
         §0!6§ = true;
         var _loc1_:int = § var§();
         §>J§(§0p§,_loc1_.toString(),_loc1_);
      }
      
      private static function §9t§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §0N§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
         }
      }
      
      private static function §0N§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            if(sSample1Percent)
            {
               return SAMPLE_1_PERCENT;
            }
            return null;
         }
         if(param2.indexOf(param1) < 0)
         {
            if(sSample10Percent)
            {
               return SAMPLE_10_PERCENT;
            }
            return null;
         }
         return "";
      }
      
      private static function § var§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
