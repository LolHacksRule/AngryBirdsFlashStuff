package §try§
{
   import flash.utils.getTimer;
   
   public class §7!0§ extends §9Q§
   {
      
      private static const §,;§:Boolean = AngryBirdsFP11.§<! §;
      
      private static const §2x§:String = "warning";
      
      private static const §+i§:String = "full-game-link";
      
      private static const §^F§:String = "framerate";
      
      private static const §@R§:String = "error";
      
      public static const §-R§:String = "slingshot-used";
      
      private static const static:String = "download-failed";
      
      private static const §1&§:String = "invalid-level";
      
      private static const §^!>§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§1L§,§%!A§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§@R§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §=!6§:Array = [];
      
      private static var § T§:Boolean = false;
       
      
      public function §7!0§()
      {
         super();
      }
      
      public static function §set §() : void
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
      
      public static function §=`§(param1:int, param2:int) : void
      {
         §?z§(§9Q§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §?z§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §[T§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§"!6§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §1S§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§=!6§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §=!6§.length == 0;
         §=!6§.push(param2);
         if(param3)
         {
            _loc5_ = §9Q§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §9Q§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §?z§(_loc5_,param1.toString(),param1);
         }
         §@!"§(§^F§,_loc5_,param2,param1);
      }
      
      public static function §8W§(param1:String) : void
      {
         §@!"§(§2x§,static,param1,0);
      }
      
      public static function §!!A§(param1:String) : void
      {
         var _loc2_:int = §<d§();
         §@!"§(§+i§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §4F§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §@!"§(§2x§,§1&§,param1,0);
      }
      
      public static function §2! §(param1:String) : void
      {
         §@!"§(§2x§,§^!>§,param1,0);
      }
      
      public static function §%2§(param1:String) : void
      {
         §@!"§(§@R§,param1,"",0,false);
      }
      
      public static function §0!&§() : void
      {
         if(§ T§)
         {
            return;
         }
         § T§ = true;
         var _loc1_:int = §<d§();
         §?z§(§-R§,_loc1_.toString(),_loc1_);
      }
      
      private static function §@!"§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §[T§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
            else
            {
               addr12:
            }
            return;
         }
         §§goto(addr12);
      }
      
      private static function §[T§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §<d§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
