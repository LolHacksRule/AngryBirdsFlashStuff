package §8!Q§
{
   import flash.utils.getTimer;
   
   public class §,8§ extends § ^§
   {
      
      private static const §`!&§:Boolean = AngryBirdsFP11.§>!q§;
      
      private static const §?!J§:String = "warning";
      
      private static const §1!5§:String = "full-game-link";
      
      private static const §]!0§:String = "framerate";
      
      private static const §`+§:String = "error";
      
      public static const §&!I§:String = "slingshot-used";
      
      private static const §?!v§:String = "download-failed";
      
      private static const §<!K§:String = "invalid-level";
      
      private static const §<D§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§[!D§,§--§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§`+§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §"5§:Array = [];
      
      private static var §'X§:Boolean = false;
       
      
      public function §,8§()
      {
         super();
      }
      
      public static function §^!9§() : void
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
      
      public static function §9u§(param1:int, param2:int) : void
      {
         §?!@§(§ ^§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §?!@§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = dynamic(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§[N§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §@!V§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§"5§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §"5§.length == 0;
         §"5§.push(param2);
         if(param3)
         {
            _loc5_ = § ^§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = § ^§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §?!@§(_loc5_,param1.toString(),param1);
         }
         §9!A§(§]!0§,_loc5_,param2,param1);
      }
      
      public static function §4C§(param1:String) : void
      {
         §9!A§(§?!J§,§?!v§,param1,0);
      }
      
      public static function §1!I§(param1:String) : void
      {
         var _loc2_:int = §^!q§();
         §9!A§(§1!5§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §"!>§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §9!A§(§?!J§,§<!K§,param1,0);
      }
      
      public static function §^F§(param1:String) : void
      {
         §9!A§(§?!J§,§<D§,param1,0);
      }
      
      public static function §%!b§(param1:String) : void
      {
         §9!A§(§`+§,param1,"",0,false);
      }
      
      public static function §5!^§() : void
      {
         if(§'X§)
         {
            return;
         }
         §'X§ = true;
         var _loc1_:int = §^!q§();
         §?!@§(§&!I§,_loc1_.toString(),_loc1_);
      }
      
      private static function §9!A§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = dynamic(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
         }
      }
      
      private static function dynamic(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §^!q§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
