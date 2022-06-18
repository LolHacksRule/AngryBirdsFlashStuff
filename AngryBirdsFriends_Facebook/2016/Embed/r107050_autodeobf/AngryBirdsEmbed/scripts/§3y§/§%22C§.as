package §3y§
{
   import flash.utils.getTimer;
   
   public class §"C§ extends §=l§
   {
      
      private static const §0v§:Boolean = AngryBirdsFP11.§^!I§;
      
      private static const § !2§:String = "warning";
      
      private static const §=!F§:String = "full-game-link";
      
      private static const §2D§:String = "framerate";
      
      private static const §'K§:String = "error";
      
      public static const §=g§:String = "slingshot-used";
      
      private static const §^K§:String = "download-failed";
      
      private static const §7!2§:String = "invalid-level";
      
      private static const §=!M§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§%?§,§81§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§'K§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §>0§:Array = [];
      
      private static var §>y§:Boolean = false;
       
      
      public function §"C§()
      {
         super();
      }
      
      public static function §@!&§() : void
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
      
      public static function §4!H§(param1:int, param2:int) : void
      {
         §#H§(§=l§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §#H§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §'!E§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§15§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §>!;§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§>0§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §>0§.length == 0;
         §>0§.push(param2);
         if(param3)
         {
            _loc5_ = §=l§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §=l§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §#H§(_loc5_,param1.toString(),param1);
         }
         §8b§(§2D§,_loc5_,param2,param1);
      }
      
      public static function §[M§(param1:String) : void
      {
         §8b§(§ !2§,§^K§,param1,0);
      }
      
      public static function §^!3§(param1:String) : void
      {
         var _loc2_:int = §2!G§();
         §8b§(§=!F§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §"w§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §8b§(§ !2§,§7!2§,param1,0);
      }
      
      public static function §=`§(param1:String) : void
      {
         §8b§(§ !2§,§=!M§,param1,0);
      }
      
      public static function §>b§(param1:String) : void
      {
         §8b§(§'K§,param1,"",0,false);
      }
      
      public static function §+>§() : void
      {
         if(§>y§)
         {
            return;
         }
         §>y§ = true;
         var _loc1_:int = §2!G§();
         §#H§(§=g§,_loc1_.toString(),_loc1_);
      }
      
      private static function §8b§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §'!E§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
            else
            {
               addr8:
            }
            return;
         }
         §§goto(addr8);
      }
      
      private static function §'!E§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §2!G§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
