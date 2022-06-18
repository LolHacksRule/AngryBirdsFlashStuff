package §3V§
{
   import flash.utils.getTimer;
   
   public class §^!G§ extends §34§
   {
      
      private static const §5!6§:Boolean = AngryBirdsFP11.§78§;
      
      private static const §#D§:String = "warning";
      
      private static const §!`§:String = "full-game-link";
      
      private static const §--§:String = "framerate";
      
      private static const §"V§:String = "error";
      
      public static const §>R§:String = "slingshot-used";
      
      private static const §<]§:String = "download-failed";
      
      private static const §"Z§:String = "invalid-level";
      
      private static const §5!L§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§"!A§,§<9§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§"V§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §>!5§:Array = [];
      
      private static var §<g§:Boolean = false;
       
      
      public function §^!G§()
      {
         super();
      }
      
      public static function §&! §() : void
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
      
      public static function §&5§(param1:int, param2:int) : void
      {
         §[V§(§34§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §[V§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §0!C§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§9S§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §3!O§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§>!5§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §>!5§.length == 0;
         §>!5§.push(param2);
         if(param3)
         {
            _loc5_ = §34§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §34§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §[V§(_loc5_,param1.toString(),param1);
         }
         §4!3§(§--§,_loc5_,param2,param1);
      }
      
      public static function §,<§(param1:String) : void
      {
         §4!3§(§#D§,§<]§,param1,0);
      }
      
      public static function §55§(param1:String) : void
      {
         var _loc2_:int = §,6§();
         §4!3§(§!`§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function § U§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §4!3§(§#D§,§"Z§,param1,0);
      }
      
      public static function §9!=§(param1:String) : void
      {
         §4!3§(§#D§,§5!L§,param1,0);
      }
      
      public static function §;@§(param1:String) : void
      {
         §4!3§(§"V§,param1,"",0,false);
      }
      
      public static function §9K§() : void
      {
         if(§<g§)
         {
            return;
         }
         §<g§ = true;
         var _loc1_:int = §,6§();
         §[V§(§>R§,_loc1_.toString(),_loc1_);
      }
      
      private static function §4!3§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §0!C§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
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
      
      private static function §0!C§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §,6§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
