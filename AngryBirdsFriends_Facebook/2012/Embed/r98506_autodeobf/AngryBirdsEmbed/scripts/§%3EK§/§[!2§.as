package §>K§
{
   import flash.utils.getTimer;
   
   public class §[!2§ extends §"!C§
   {
      
      private static const §89§:Boolean = AngryBirdsFP11.§8!=§;
      
      private static const §!!§:String = "warning";
      
      private static const §5`§:String = "full-game-link";
      
      private static const §6U§:String = "framerate";
      
      private static const §!W§:String = "error";
      
      public static const § K§:String = "slingshot-used";
      
      private static const §null§:String = "download-failed";
      
      private static const §5§:String = "invalid-level";
      
      private static const §2f§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§9H§,§[q§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§!W§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §9!=§:Array = [];
      
      private static var §!7§:Boolean = false;
       
      
      public function §[!2§()
      {
         super();
      }
      
      public static function §@!,§() : void
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
      
      public static function §%]§(param1:int, param2:int) : void
      {
         §#U§(§"!C§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §#U§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §@r§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§3!J§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §0v§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§9!=§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §9!=§.length == 0;
         §9!=§.push(param2);
         if(param3)
         {
            _loc5_ = §"!C§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §"!C§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §#U§(_loc5_,param1.toString(),param1);
         }
         §!6§(§6U§,_loc5_,param2,param1);
      }
      
      public static function §90§(param1:String) : void
      {
         §!6§(§!!§,§null§,param1,0);
      }
      
      public static function §3U§(param1:String) : void
      {
         var _loc2_:int = §`!1§();
         §!6§(§5`§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §8x§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §!6§(§!!§,§5§,param1,0);
      }
      
      public static function §8Y§(param1:String) : void
      {
         §!6§(§!!§,§2f§,param1,0);
      }
      
      public static function §4W§(param1:String) : void
      {
         §!6§(§!W§,param1,"",0,false);
      }
      
      public static function §-!<§() : void
      {
         if(§!7§)
         {
            return;
         }
         §!7§ = true;
         var _loc1_:int = §`!1§();
         §#U§(§ K§,_loc1_.toString(),_loc1_);
      }
      
      private static function §!6§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §@r§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
         }
      }
      
      private static function §@r§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §`!1§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
