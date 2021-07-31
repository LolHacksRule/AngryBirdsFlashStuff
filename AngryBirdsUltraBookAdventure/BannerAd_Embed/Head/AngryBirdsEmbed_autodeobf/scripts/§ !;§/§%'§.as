package § !;§
{
   import flash.utils.getTimer;
   
   public class §%'§ extends §^!3§
   {
      
      private static const §??§:Boolean = AngryBirdsFP11.§[!2§;
      
      private static const § !-§:String = "warning";
      
      private static const §false§:String = "full-game-link";
      
      private static const §0!%§:String = "framerate";
      
      private static const §@_§:String = "error";
      
      public static const § !8§:String = "slingshot-used";
      
      private static const §0!0§:String = "download-failed";
      
      private static const §>?§:String = "invalid-level";
      
      private static const §3z§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§4n§,§4§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§@_§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §68§:Array = [];
      
      private static var §8g§:Boolean = false;
       
      
      public function §%'§()
      {
         super();
      }
      
      public static function §8e§() : void
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
      
      public static function §^D§(param1:int, param2:int) : void
      {
         §#r§(§^!3§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §#r§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §6;§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§'!6§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §,!?§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§68§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §68§.length == 0;
         §68§.push(param2);
         if(param3)
         {
            _loc5_ = §^!3§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §^!3§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §#r§(_loc5_,param1.toString(),param1);
         }
         §#!#§(§0!%§,_loc5_,param2,param1);
      }
      
      public static function §5'§(param1:String) : void
      {
         §#!#§(§ !-§,§0!0§,param1,0);
      }
      
      public static function §71§(param1:String) : void
      {
         var _loc2_:int = §@?§();
         §#!#§(§false§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §<_§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §#!#§(§ !-§,§>?§,param1,0);
      }
      
      public static function §?&§(param1:String) : void
      {
         §#!#§(§ !-§,§3z§,param1,0);
      }
      
      public static function §8!&§(param1:String) : void
      {
         §#!#§(§@_§,param1,"",0,false);
      }
      
      public static function §@2§() : void
      {
         if(§8g§)
         {
            return;
         }
         §8g§ = true;
         var _loc1_:int = §@?§();
         §#r§(§ !8§,_loc1_.toString(),_loc1_);
      }
      
      private static function §#!#§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §6;§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
         }
      }
      
      private static function §6;§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §@?§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
