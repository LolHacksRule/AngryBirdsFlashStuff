package §8!=§
{
   import flash.utils.getTimer;
   
   public class §=!"§ extends §4!§
   {
      
      private static const §-K§:Boolean = AngryBirdsFP11.§7!!§;
      
      private static const §"4§:String = "warning";
      
      private static const §;!1§:String = "full-game-link";
      
      private static const §6!C§:String = "framerate";
      
      private static const §"c§:String = "error";
      
      public static const §<5§:String = "slingshot-used";
      
      private static const §;!4§:String = "download-failed";
      
      private static const §@#§:String = "invalid-level";
      
      private static const § -§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§18§,§3-§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§"c§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §`!@§:Array = [];
      
      private static var §?B§:Boolean = false;
       
      
      public function §=!"§()
      {
         super();
      }
      
      public static function §[v§() : void
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
      
      public static function §,!B§(param1:int, param2:int) : void
      {
         §<!L§(§4!§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §<!L§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §@A§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§]x§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §@!B§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§`!@§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §`!@§.length == 0;
         §`!@§.push(param2);
         if(param3)
         {
            _loc5_ = §4!§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §4!§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §<!L§(_loc5_,param1.toString(),param1);
         }
         §"O§(§6!C§,_loc5_,param2,param1);
      }
      
      public static function §8!F§(param1:String) : void
      {
         §"O§(§"4§,§;!4§,param1,0);
      }
      
      public static function §%!$§(param1:String) : void
      {
         var _loc2_:int = §else §();
         §"O§(§;!1§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §7!K§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §"O§(§"4§,§@#§,param1,0);
      }
      
      public static function §=b§(param1:String) : void
      {
         §"O§(§"4§,§ -§,param1,0);
      }
      
      public static function §4g§(param1:String) : void
      {
         §"O§(§"c§,param1,"",0,false);
      }
      
      public static function §5I§() : void
      {
         if(§?B§)
         {
            return;
         }
         §?B§ = true;
         var _loc1_:int = §else §();
         §<!L§(§<5§,_loc1_.toString(),_loc1_);
      }
      
      private static function §"O§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §@A§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
            else
            {
               addr13:
            }
            return;
         }
         §§goto(addr13);
      }
      
      private static function §@A§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §else §(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
