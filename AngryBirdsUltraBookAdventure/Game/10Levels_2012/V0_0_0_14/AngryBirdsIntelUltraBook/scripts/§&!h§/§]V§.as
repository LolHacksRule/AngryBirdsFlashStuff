package §&!h§
{
   import §4!C§.§]!X§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §]V§ extends §"[§
   {
      
      private static const §@l§:Boolean = AngryBirdsFP11.§2!y§;
      
      private static const §8!m§:String = "powerup-used";
      
      private static const §[4§:String = "level-powerup-used";
      
      private static const §<E§:String = "powerup-" + §,!q§;
      
      private static const §`#§:String = §,!q§ + "-powerup";
      
      private static const §#g§:String = "framerate";
      
      private static const §4#§:String = "external-pause";
      
      private static const §6!X§:String = "gift";
      
      private static const §-!'§:String = "shop";
      
      private static const §4P§:String = "brag";
      
      private static const §20§:String = "invite";
      
      private static const §2,§:String = "avatar";
      
      private static const §-X§:String = "warning";
      
      private static const §=!U§:String = "user-statistics";
      
      private static const §[,§:String = "error";
      
      private static const § !p§:String = "paused";
      
      private static const §!!N§:String = "resumed";
      
      private static const §7!p§:String = "gift-claimed";
      
      private static const §4H§:String = "campaign-gift-claimed";
      
      private static const §!1§:String = "opened";
      
      private static const §0!O§:String = "product-selected";
      
      private static const §[!p§:String = "product-buy-selected";
      
      private static const §67§:String = "product-buy-completed";
      
      private static const §-j§:String = "brag-shown";
      
      private static const §'K§:String = "brag-clicked";
      
      private static const §`!l§:String = "friend-clicked";
      
      private static const §=!D§:String = "generic-clicked";
      
      private static const §;x§:String = "opened";
      
      private static const §6!O§:String = "set";
      
      private static const § !3§:String = "product-set";
      
      private static const §8a§:String = §[!p§;
      
      private static const §]#§:String = §67§;
      
      private static const §[!O§:String = "share-clicked";
      
      private static const §^_§:String = "share-completed";
      
      private static const §"j§:String = "download-failed";
      
      private static const §&o§:String = "3rd-party-cookies-missing";
      
      private static const §@N§:String = "invalid-level";
      
      private static const §<!R§:String = "flash-var-missing";
      
      private static const §'!r§:String = "friend-count";
      
      private static const §&5§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§%b§,§,!q§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§!!U§,§false§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§8!m§,§[4§,§<E§,§`#§,§#g§,§4#§,§6!X§,§-!'§,§4P§,§20§,§2,§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§[,§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §<!F§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §#q§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §=!;§:Array = [];
      
      private static var §%@§:int = 0;
      
      private static var §<N§:int = 0;
      
      private static var §03§:int = 0;
      
      private static var §[B§:int = 0;
       
      
      public function §]V§()
      {
         super();
      }
      
      public static function §-h§() : void
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
      
      public static function §+h§(param1:int, param2:int) : void
      {
         §8![§(§"[§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§]!X§.§#l§(AngryBirdsFP11.§6S§ + "/clienterror/" + param1));
      }
      
      public static function §8![§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §7!Z§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §"[§.trackSampledEvent(_loc4_,§-!$§,param1,param2,param3);
      }
      
      public static function §63§(param1:String, param2:String) : void
      {
         var _loc3_:int = §2!Z§();
         §]1§(§8!m§,param1,param2,0);
         §]1§(§[4§,param2,param1,0);
      }
      
      public static function §9!$§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §[F§(param1))
            {
               §]1§(§<E§,_loc4_,param2,param3);
               §]1§(§`#§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §6!Y§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§=!;§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §=!;§.length == 0;
         §=!;§.push(param2);
         if(param3)
         {
            _loc6_ = §"[§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]V§.§<!F§;
            }
         }
         else
         {
            _loc6_ = §"[§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]V§.§#q§;
            }
         }
         if(_loc5_)
         {
            §8![§(_loc6_,param1.toString(),param1);
         }
         §]1§(§#g§,_loc6_,param2,param1);
      }
      
      public static function §54§(param1:String, param2:int) : void
      {
         ++§%@§;
         §]1§(§6!X§,§7!p§,param1,param2);
      }
      
      public static function §[P§() : void
      {
         §]1§(§6!X§,§4H§,null,0);
      }
      
      public static function §;!a§() : void
      {
         ++§<N§;
         §03§ = §2!Z§();
         §]1§(§4#§,§ !p§,§<N§.toString(),§03§);
      }
      
      public static function §2'§() : void
      {
         §]1§(§4#§,§!!N§,"",§2!Z§(§03§));
      }
      
      public static function §8!T§() : void
      {
         if(!§@l§)
         {
            §]1§(§-!'§,§!1§,null,0);
         }
      }
      
      public static function §'!y§(param1:String) : void
      {
         if(!§@l§)
         {
            §]1§(§-!'§,§0!O§,param1,0);
         }
      }
      
      public static function § !Y§(param1:String, param2:int) : void
      {
         if(!§@l§)
         {
            §]1§(§-!'§,§[!p§,param1,param2,false);
         }
      }
      
      public static function §1![§(param1:String, param2:int) : void
      {
         if(!§@l§)
         {
            §]1§(§-!'§,§67§,param1,param2,false);
         }
      }
      
      public static function §`N§(param1:String) : void
      {
         §]1§(§4P§,§-j§,param1,0);
      }
      
      public static function §?!L§(param1:String) : void
      {
         §]1§(§4P§,§'K§,param1,0);
      }
      
      public static function §6!r§() : void
      {
         §]1§(§20§,§`!l§,null,0);
      }
      
      public static function §;Q§() : void
      {
         §]1§(§20§,§=!D§,null,0);
      }
      
      public static function §#!'§() : void
      {
         §]1§(§2,§,§;x§,null,0);
      }
      
      public static function §<c§() : void
      {
         §]1§(§2,§,§6!O§,null,0);
      }
      
      public static function §?!o§(param1:String) : void
      {
         §]1§(§2,§,§ !3§,param1,0);
      }
      
      public static function §",§() : void
      {
         §]1§(§2,§,§[!O§,null,0);
      }
      
      public static function §<[§() : void
      {
         §]1§(§2,§,§^_§,null,0);
      }
      
      public static function §^!3§(param1:String, param2:int = 0) : void
      {
         if(!§@l§)
         {
            §]1§(§2,§,§8a§,param1,param2,false);
         }
      }
      
      public static function §7`§(param1:String, param2:int = 0) : void
      {
         if(!§@l§)
         {
            §]1§(§2,§,§]#§,param1,param2,false);
         }
      }
      
      public static function §4!^§(param1:String) : void
      {
         §]1§(§-X§,§"j§,param1,0);
      }
      
      public static function §9f§() : void
      {
         §]1§(§-X§,§&o§,null,0);
      }
      
      public static function §3^§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §]1§(§-X§,§@N§,param1,0);
      }
      
      public static function §31§(param1:String) : void
      {
         §]1§(§-X§,§<!R§,param1,0);
      }
      
      public static function §"!W§(param1:int) : void
      {
         §]1§(§=!U§,§'!r§,param1.toString(),param1);
      }
      
      public static function § 4§(param1:String) : void
      {
         §]1§(§=!U§,§&5§,param1,0);
      }
      
      public static function §&$§(param1:String) : void
      {
         §]1§(§[,§,param1,"",0,false);
      }
      
      private static function §]1§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §]!H§;
            if(param5)
            {
               _loc6_ = §7!Z§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §7!Z§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §]!H§;
      }
      
      private static function §[F§(param1:Array) : String
      {
         var _loc4_:String = null;
         if(param1 == null || param1.length == 0)
         {
            return null;
         }
         var _loc2_:String = "";
         var _loc3_:Array = param1.concat();
         _loc3_.sort();
         for each(_loc4_ in _loc3_)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ += "-" + _loc4_;
            }
            else
            {
               _loc2_ = _loc4_;
            }
         }
         return _loc2_;
      }
      
      private static function §2!Z§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
