package §%!6§
{
   import flash.utils.getTimer;
   
   public class §+9§ extends §5!A§
   {
      
      private static const §<!+§:Boolean = AngryBirdsFP11.§0b§;
      
      private static const §?3§:String = "warning";
      
      private static const §`@§:String = "full-game-link";
      
      private static const §1!+§:String = "framerate";
      
      private static const §&f§:String = "error";
      
      public static const §>h§:String = "slingshot-used";
      
      private static const §-w§:String = "download-failed";
      
      private static const §1#§:String = "invalid-level";
      
      private static const §6Q§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§7'§,§'!+§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§&f§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §>W§:Array = [];
      
      private static var §@!"§:Boolean = false;
       
      
      public function §+9§()
      {
         super();
      }
      
      public static function §3!0§() : void
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
      
      public static function §0E§(param1:int, param2:int) : void
      {
         §]c§(§5!A§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §]c§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §9[§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§2`§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §=+§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§>W§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §>W§.length == 0;
         §>W§.push(param2);
         if(param3)
         {
            _loc5_ = §5!A§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §5!A§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §]c§(_loc5_,param1.toString(),param1);
         }
         §0p§(§1!+§,_loc5_,param2,param1);
      }
      
      public static function §#9§(param1:String) : void
      {
         §0p§(§?3§,§-w§,param1,0);
      }
      
      public static function §1!3§(param1:String) : void
      {
         var _loc2_:int = §"y§();
         §0p§(§`@§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §-t§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §0p§(§?3§,§1#§,param1,0);
      }
      
      public static function §4!&§(param1:String) : void
      {
         §0p§(§?3§,§6Q§,param1,0);
      }
      
      public static function §`r§(param1:String) : void
      {
         §0p§(§&f§,param1,"",0,false);
      }
      
      public static function §3A§() : void
      {
         if(§@!"§)
         {
            return;
         }
         §@!"§ = true;
         var _loc1_:int = §"y§();
         §]c§(§>h§,_loc1_.toString(),_loc1_);
      }
      
      private static function §0p§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §9[§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
         }
      }
      
      private static function §9[§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §"y§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
