package §0!!§
{
   import flash.utils.getTimer;
   
   public class §46§ extends §,!@§
   {
      
      private static const §+6§:Boolean = AngryBirdsFP11.§'Q§;
      
      private static const §`!B§:String = "warning";
      
      private static const §!K§:String = "full-game-link";
      
      private static const §!`§:String = "framerate";
      
      private static const §9>§:String = "error";
      
      public static const §&g§:String = "slingshot-used";
      
      private static const §-!@§:String = "download-failed";
      
      private static const §!r§:String = "invalid-level";
      
      private static const §`d§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§#4§,§3%§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§9>§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §-!2§:Array = [];
      
      private static var §%!@§:Boolean = false;
       
      
      public function §46§()
      {
         super();
      }
      
      public static function §[!2§() : void
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
      
      public static function §>3§(param1:int, param2:int) : void
      {
         §3!7§(§,!@§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §3!7§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §-!;§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§=!§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §!m§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§-!2§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §-!2§.length == 0;
         §-!2§.push(param2);
         if(param3)
         {
            _loc5_ = §,!@§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §,!@§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §3!7§(_loc5_,param1.toString(),param1);
         }
         §5!§(§!`§,_loc5_,param2,param1);
      }
      
      public static function §+A§(param1:String) : void
      {
         §5!§(§`!B§,§-!@§,param1,0);
      }
      
      public static function §!t§(param1:String) : void
      {
         var _loc2_:int = §?N§();
         §5!§(§!K§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §=L§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §5!§(§`!B§,§!r§,param1,0);
      }
      
      public static function §[3§(param1:String) : void
      {
         §5!§(§`!B§,§`d§,param1,0);
      }
      
      public static function §?S§(param1:String) : void
      {
         §5!§(§9>§,param1,"",0,false);
      }
      
      public static function §5!B§() : void
      {
         if(§%!@§)
         {
            return;
         }
         §%!@§ = true;
         var _loc1_:int = §?N§();
         §3!7§(§&g§,_loc1_.toString(),_loc1_);
      }
      
      private static function §5!§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §-!;§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
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
      
      private static function §-!;§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §?N§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
