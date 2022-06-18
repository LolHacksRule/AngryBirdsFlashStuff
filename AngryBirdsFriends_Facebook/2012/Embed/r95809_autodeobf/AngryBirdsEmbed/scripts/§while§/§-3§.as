package §while§
{
   import flash.utils.getTimer;
   
   public class §-3§ extends §+o§
   {
      
      private static const §^0§:Boolean = AngryBirdsFP11.§!k§;
      
      private static const §'!5§:String = "warning";
      
      private static const §;! §:String = "full-game-link";
      
      private static const §-,§:String = "framerate";
      
      private static const §6!C§:String = "error";
      
      public static const §^^§:String = "slingshot-used";
      
      private static const §import§:String = "download-failed";
      
      private static const §4<§:String = "invalid-level";
      
      private static const §`v§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§;D§,§=H§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§6!C§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §false§:Array = [];
      
      private static var §3D§:Boolean = false;
       
      
      public function §-3§()
      {
         super();
      }
      
      public static function §9!5§() : void
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
      
      public static function §5`§(param1:int, param2:int) : void
      {
         §53§(§+o§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §53§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §8=§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§0!"§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §#=§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§false§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §false§.length == 0;
         §false§.push(param2);
         if(param3)
         {
            _loc5_ = §+o§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §+o§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §53§(_loc5_,param1.toString(),param1);
         }
         §5!1§(§-,§,_loc5_,param2,param1);
      }
      
      public static function § F§(param1:String) : void
      {
         §5!1§(§'!5§,§import§,param1,0);
      }
      
      public static function §-=§(param1:String) : void
      {
         var _loc2_:int = §0r§();
         §5!1§(§;! §,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §<6§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §5!1§(§'!5§,§4<§,param1,0);
      }
      
      public static function §+!E§(param1:String) : void
      {
         §5!1§(§'!5§,§`v§,param1,0);
      }
      
      public static function §3,§(param1:String) : void
      {
         §5!1§(§6!C§,param1,"",0,false);
      }
      
      public static function §?"§() : void
      {
         if(§3D§)
         {
            return;
         }
         §3D§ = true;
         var _loc1_:int = §0r§();
         §53§(§^^§,_loc1_.toString(),_loc1_);
      }
      
      private static function §5!1§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §8=§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
         }
      }
      
      private static function §8=§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §0r§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
