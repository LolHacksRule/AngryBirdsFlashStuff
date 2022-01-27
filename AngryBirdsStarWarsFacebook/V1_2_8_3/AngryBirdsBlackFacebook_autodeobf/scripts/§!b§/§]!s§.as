package §!b§
{
   import §+d§.§`!<§;
   import flash.utils.getTimer;
   
   public class §]!s§ extends §`!<§
   {
      
      private static const §`"M§:Boolean = §4"#§.§<C§;
      
      private static const §@!-§:String = "powerup-used";
      
      private static const §""k§:String = "level-powerup-used";
      
      private static const §="d§:String = "powerup-" + §;5§;
      
      private static const §"!f§:String = §;5§ + "-powerup";
      
      private static const §#!o§:String = "powerup-gained";
      
      private static const §&!g§:String = "framerate";
      
      private static const §?#,§:String = "external-pause";
      
      private static const §"!%§:String = "gift";
      
      private static const §8!j§:String = "shop";
      
      private static const §8"D§:String = "brag";
      
      private static const §-!K§:String = "invite";
      
      private static const §,"I§:String = "challenge";
      
      private static const §^"&§:String = "ab-test";
      
      private static const §;A§:String = "walet-snapshot";
      
      private static const §;"_§:String = "send-request-popups";
      
      private static const §%!o§:String = "popup-opened";
      
      private static const §]"S§:String = "skip-button";
      
      private static const §in§:String = "warning";
      
      private static const §2#"§:String = "user-statistics";
      
      private static const §`B§:String = "error";
      
      private static const §81§:String = "paused";
      
      private static const §@!,§:String = "resumed";
      
      private static const §>7§:String = "gift-claimed";
      
      private static const §;"&§:String = "campaign-gift-claimed";
      
      private static const §12§:String = "opened";
      
      private static const §!!3§:String = "product-buy-selected";
      
      private static const §6§:String = "product-buy-completed";
      
      private static const §!g§:String = "subscription-buy-selected";
      
      private static const §]"l§:String = "subscription-buy-completed";
      
      private static const §!"C§:String = "coin-buy-selected";
      
      private static const §,!O§:String = "coin-buy-completed";
      
      private static const §4"R§:String = "brag-shown";
      
      private static const §+!P§:String = "brag-clicked";
      
      private static const §""w§:String = "friend-clicked";
      
      private static const §0!j§:String = "generic-clicked";
      
      private static const §]!Y§:String = "challenge-clicked";
      
      private static const §@"N§:String = "upsell-clicked";
      
      private static const §]"M§:String = "upsell-open-purchase";
      
      private static const §74§:String = "upsell-buy";
      
      private static const §4y§:String = "-normal";
      
      private static const §0"x§:String = "-a";
      
      private static const get:String = "-b";
      
      private static const §#z§:String = "invalid-currency";
      
      private static const §2"b§:String = "download-failed";
      
      private static const §>!f§:String = "3rd-party-cookies-missing";
      
      private static const §6"S§:String = "invalid-level";
      
      private static const §4!'§:String = "flash-var-missing";
      
      private static const §+!1§:String = "friend-count";
      
      private static const §8p§:String = "start";
      
      private static const §&!U§:String = "complete";
      
      private static const §5!2§:String = "error";
      
      private static const §"!3§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§-x§,§;5§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§5>§,§!#$§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§@!-§,§""k§,§="d§,§"!f§,§&!g§,§?#,§,§"!%§,§8!j§,§8"D§,§-!K§,§#!o§,§;A§,§;"_§,§%!o§,§]"S§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§`B§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §]!N§:String = "DailyReward";
      
      public static const §?k§:String = "PaidSpin";
      
      public static const §'!@§:String = "LevelComplete";
      
      public static const §#"l§:String = "starcoins";
      
      public static const § $§:String = "crystals";
      
      public static const §""3§:String = "mighty-falcons";
      
      public static const §,w§:String = "clone-birds";
      
      public static const §6"H§:String = "thermal-detonator";
      
      public static const §?_§:String = "laser-droid";
      
      public static const §`!b§:String = "saber-slingshot";
      
      public static const §]"4§:String = "send-free-crystals";
      
      public static const §]#!§:String = "invite-friends";
      
      public static const §="S§:String = "request-for-crystals";
      
      public static const § "u§:String = "challenge-your-friends";
      
      public static const §["9§:String = "get-bigger-rewards";
      
      public static const §,a§:String = "help-your-friends";
      
      public static const §2"B§:String = "free-clone-birds";
      
      public static const SKIP_EXTRA_BIRD:String = "skip-extra-bird";
      
      public static const §[r§:String = "skip-to-extra-bird";
      
      public static const §-"O§:String = "skip-to-victory";
      
      public static const §4"c§:String = "skip-to-failure";
      
      public static const §->§:String = "popup-tournament-history";
      
      private static var §+#§:Array = [];
      
      private static var §6"L§:int = 0;
      
      private static var §#"O§:int = 0;
      
      private static var §1!c§:int = 0;
       
      
      public function §]!s§()
      {
         super();
      }
      
      public static function §>"z§(param1:int, param2:int) : void
      {
         §+#$§(§`!<§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §+#$§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §7!5§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §4n§(_loc4_,§8!a§,param1,param2,param3);
      }
      
      public static function §4!§(param1:String, param2:String, param3:Boolean = false) : void
      {
         if(param3)
         {
            param1 += "_subscription";
         }
         §9"x§(§@!-§,param1,param2,0,!param3);
         §9"x§(§""k§,param2,param1,0,!param3);
      }
      
      public static function §,!T§(param1:String, param2:String, param3:int) : void
      {
         §9"x§(§#!o§,param1,param2 + "-" + param3,param3);
      }
      
      public static function § "V§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §""2§(param1))
            {
               §9"x§(§="d§,_loc4_,param2,param3);
               §9"x§(§"!f§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §>X§(param1:String, param2:int) : void
      {
         §9"x§(§;A§,param1,"",param2);
      }
      
      public static function §<!2§(param1:String, param2:int) : void
      {
         §9"x§(§;"_§,param1,"",param2);
      }
      
      public static function §[!S§(param1:String) : void
      {
         §9"x§(§]"S§,param1,"",0);
      }
      
      public static function §1!f§(param1:String) : void
      {
         §9"x§(§%!o§,param1,"",0);
      }
      
      public static function §]!^§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§+#§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §+#§.length == 0;
         §+#§.push(param2);
         if(param3)
         {
            _loc6_ = §`!<§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]!s§.ACTION_CPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         else
         {
            _loc6_ = §`!<§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §]!s§.ACTION_GPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         if(_loc5_)
         {
            §+#$§(_loc6_,param1.toString(),param1);
         }
         §9"x§(§&!g§,_loc6_,param2,param1);
      }
      
      public static function §-"q§(param1:String, param2:int) : void
      {
         ++§6"L§;
         §9"x§(§"!%§,§>7§,param1,param2);
      }
      
      public static function §5"+§() : void
      {
         §9"x§(§"!%§,§;"&§,null,0);
      }
      
      public static function §@"P§() : void
      {
         ++§#"O§;
         §1!c§ = §'"#§();
         §9"x§(§?#,§,§81§,§#"O§.toString(),§1!c§);
      }
      
      public static function §4"i§() : void
      {
         §9"x§(§?#,§,§@!,§,"",§'"#§(§1!c§));
      }
      
      public static function §-m§() : void
      {
         if(!§`"M§)
         {
            §9"x§(§8!j§,§12§,null,0);
         }
      }
      
      public static function §5[§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:* = null;
         if(!§`"M§)
         {
            _loc5_ = param1 + "-" + param2;
            if(param4)
            {
               _loc5_ += "_subscription";
            }
            §9"x§(§8!j§,§!!3§,_loc5_,param3,false);
         }
      }
      
      public static function §1C§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:* = null;
         if(!§`"M§)
         {
            _loc5_ = param1 + "-" + param2;
            if(param4)
            {
               _loc5_ += "_subscription";
            }
            §9"x§(§8!j§,§6§,_loc5_,param3,false);
         }
      }
      
      public static function §[!A§(param1:String, param2:int, param3:int) : void
      {
         if(!§`"M§)
         {
            §9"x§(§8!j§,§!g§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §<"?§(param1:String, param2:int, param3:int) : void
      {
         if(!§`"M§)
         {
            §9"x§(§8!j§,§]"l§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §9!w§(param1:String) : void
      {
         if(!§`"M§)
         {
            §9"x§(§^"&§,§@"N§,param1,0,false);
         }
      }
      
      public static function §-"x§(param1:String, param2:int = -1) : void
      {
         var _loc3_:String = §]"M§;
         if(param2 == 0)
         {
            _loc3_ += §0"x§;
         }
         else
         {
            _loc3_ += get;
         }
         if(!§`"M§)
         {
            §9"x§(§^"&§,_loc3_,param1,0,false);
         }
      }
      
      public static function §=""§(param1:String, param2:int, param3:int = -1) : void
      {
         var _loc4_:String = §74§;
         if(param3 == 0)
         {
            _loc4_ += §0"x§;
         }
         else if(param3 == 1)
         {
            _loc4_ += get;
         }
         else
         {
            _loc4_ += §4y§;
         }
         if(!§`"M§)
         {
            §9"x§(§^"&§,_loc4_,param1,param2,false);
         }
      }
      
      public static function §3"!§(param1:String, param2:int, param3:int) : void
      {
         if(!§`"M§)
         {
            §9"x§(§8!j§,§!"C§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function § "e§(param1:String, param2:int, param3:int) : void
      {
         if(!§`"M§)
         {
            §9"x§(§8!j§,§,!O§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §2"d§(param1:String) : void
      {
         §9"x§(§8"D§,§4"R§,param1,0);
      }
      
      public static function §`h§(param1:String) : void
      {
         §9"x§(§8"D§,§+!P§,param1,0);
      }
      
      public static function §?m§() : void
      {
         §9"x§(§-!K§,§""w§,null,0);
      }
      
      public static function § !K§() : void
      {
         §9"x§(§,"I§,§]!Y§,null,0);
      }
      
      public static function §1"Z§() : void
      {
         §9"x§(§-!K§,§0!j§,null,0);
      }
      
      public static function §9!$§(param1:String) : void
      {
         §9"x§(§in§,§#z§,param1,0);
      }
      
      public static function §#!g§(param1:String) : void
      {
         §9"x§(§in§,§2"b§,param1,0);
      }
      
      public static function §[!W§() : void
      {
         §9"x§(§in§,§>!f§,null,0);
      }
      
      public static function §]"k§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §9"x§(§in§,§6"S§,param1,0);
      }
      
      public static function §%"§(param1:String) : void
      {
         §9"x§(§in§,§4!'§,param1,0);
      }
      
      public static function §[!f§(param1:int) : void
      {
         §9"x§(§2#"§,§+!1§,param1.toString(),param1);
      }
      
      public static function §%_§(param1:String) : void
      {
         §9"x§(§`B§,param1,"",0,false);
      }
      
      private static function §9"x§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §-!g§;
            if(param5)
            {
               _loc6_ = §7!5§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            §4n§(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §7!5§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §-!g§;
      }
      
      private static function §""2§(param1:Array) : String
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
      
      private static function §'"#§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
