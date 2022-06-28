package §+!B§
{
   import flash.utils.getTimer;
   
   public class §;9§ extends §-Q§
   {
      
      private static const §=!L§:Boolean = AngryBirdsFP11.§%Z§;
      
      private static const §8N§:String = "warning";
      
      private static const §=L§:String = "full-game-link";
      
      private static const §3f§:String = "framerate";
      
      private static const §"v§:String = "error";
      
      public static const §"!'§:String = "slingshot-used";
      
      private static const §]7§:String = "download-failed";
      
      private static const §3§:String = "invalid-level";
      
      private static const §%m§:String = "flash-var-missing";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§@! §,§?c§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§"v§];
      
      private static const SAMPLE_1_PERCENT:String = " x 100";
      
      private static const SAMPLE_10_PERCENT:String = " x 10";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §?3§:Array = [];
      
      private static var §&C§:Boolean = false;
       
      
      public function §;9§()
      {
         super();
      }
      
      public static function §0!7§() : void
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
      
      public static function §<w§(param1:int, param2:int) : void
      {
         §"!A§(§-Q§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §"!A§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if((_loc4_ = §#&§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS)) != null)
            {
               trackEvent(§;>§,param1 + _loc4_,param2,param3);
            }
         }
      }
      
      public static function §=q§(param1:int, param2:String, param3:Boolean) : void
      {
         var _loc5_:String = null;
         if(§?3§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc4_:* = §?3§.length == 0;
         §?3§.push(param2);
         if(param3)
         {
            _loc5_ = §-Q§.ACTION_CPU_FPS_REPORT;
         }
         else
         {
            _loc5_ = §-Q§.ACTION_GPU_FPS_REPORT;
         }
         if(_loc4_)
         {
            §"!A§(_loc5_,param1.toString(),param1);
         }
         §<!8§(§3f§,_loc5_,param2,param1);
      }
      
      public static function §`,§(param1:String) : void
      {
         §<!8§(§8N§,§]7§,param1,0);
      }
      
      public static function §%p§(param1:String) : void
      {
         var _loc2_:int = §,!&§();
         §<!8§(§=L§,param1,_loc2_.toString(),_loc2_);
      }
      
      public static function §^'§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §<!8§(§8N§,§3§,param1,0);
      }
      
      public static function §2j§(param1:String) : void
      {
         §<!8§(§8N§,§%m§,param1,0);
      }
      
      public static function §!!L§(param1:String) : void
      {
         §<!8§(§"v§,param1,"",0,false);
      }
      
      public static function §^!,§() : void
      {
         if(§&C§)
         {
            return;
         }
         §&C§ = true;
         var _loc1_:int = §,!&§();
         §"!A§(§"!'§,_loc1_.toString(),_loc1_);
      }
      
      private static function §<!8§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = "";
            if(param5)
            {
               _loc6_ = §#&§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            if(_loc6_ != null)
            {
               trackEvent(param1,param2 + _loc6_,param3,param4);
            }
         }
      }
      
      private static function §#&§(param1:String, param2:Array, param3:Array) : String
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
      
      private static function §,!&§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
