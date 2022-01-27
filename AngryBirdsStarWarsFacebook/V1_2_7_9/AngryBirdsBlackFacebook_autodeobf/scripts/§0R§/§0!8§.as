package §0R§
{
   import §7A§.§>!]§;
   import flash.utils.getTimer;
   
   public class §0!8§ extends §>!]§
   {
      
      private static const §[!@§:Boolean = §;"@§.§[!S§;
      
      private static const § N§:String = "powerup-used";
      
      private static const §7!<§:String = "level-powerup-used";
      
      private static const §#"+§:String = "powerup-" + §6k§;
      
      private static const §%""§:String = §6k§ + "-powerup";
      
      private static const §9!f§:String = "powerup-gained";
      
      private static const §5Z§:String = "framerate";
      
      private static const §-#6§:String = "external-pause";
      
      private static const §^"a§:String = "gift";
      
      private static const §,"K§:String = "shop";
      
      private static const §2#%§:String = "brag";
      
      private static const §4q§:String = "invite";
      
      private static const §2"]§:String = "challenge";
      
      private static const §%!1§:String = "ab-test";
      
      private static const §>"^§:String = "walet-snapshot";
      
      private static const §'!i§:String = "send-request-popups";
      
      private static const §6!m§:String = "popup-opened";
      
      private static const § !J§:String = "skip-button";
      
      private static const §'"[§:String = "warning";
      
      private static const §>"U§:String = "user-statistics";
      
      private static const § b§:String = "error";
      
      private static const §[w§:String = "paused";
      
      private static const §@!W§:String = "resumed";
      
      private static const §-"o§:String = "gift-claimed";
      
      private static const §+!K§:String = "campaign-gift-claimed";
      
      private static const §>L§:String = "opened";
      
      private static const §+q§:String = "product-buy-selected";
      
      private static const §!"z§:String = "product-buy-completed";
      
      private static const §[-§:String = "subscription-buy-selected";
      
      private static const §4#6§:String = "subscription-buy-completed";
      
      private static const §&q§:String = "coin-buy-selected";
      
      private static const §5"n§:String = "coin-buy-completed";
      
      private static const §]^§:String = "brag-shown";
      
      private static const §+"7§:String = "brag-clicked";
      
      private static const §"""§:String = "friend-clicked";
      
      private static const §#_§:String = "generic-clicked";
      
      private static const §=!G§:String = "challenge-clicked";
      
      private static const §9K§:String = "upsell-clicked";
      
      private static const §+!j§:String = "upsell-open-purchase";
      
      private static const §,!F§:String = "upsell-buy";
      
      private static const §6!l§:String = "-normal";
      
      private static const §?"&§:String = "-a";
      
      private static const §-"`§:String = "-b";
      
      private static const §^#6§:String = "invalid-currency";
      
      private static const §-"a§:String = "download-failed";
      
      private static const §'!B§:String = "3rd-party-cookies-missing";
      
      private static const §#!V§:String = "invalid-level";
      
      private static const §'##§:String = "flash-var-missing";
      
      private static const §^7§:String = "friend-count";
      
      private static const §&"X§:String = "start";
      
      private static const §55§:String = "complete";
      
      private static const §4!R§:String = "error";
      
      private static const §4"w§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§ ">§,§6k§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§4"%§,§&"P§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§ N§,§7!<§,§#"+§,§%""§,§5Z§,§-#6§,§^"a§,§,"K§,§2#%§,§4q§,§9!f§,§>"^§,§'!i§,§6!m§,§ !J§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§ b§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §`",§:String = "DailyReward";
      
      public static const §9]§:String = "PaidSpin";
      
      public static const §'"M§:String = "LevelComplete";
      
      public static const §>" §:String = "starcoins";
      
      public static const §[m§:String = "crystals";
      
      public static const §>"G§:String = "mighty-falcons";
      
      public static const §["W§:String = "clone-birds";
      
      public static const §-"C§:String = "thermal-detonator";
      
      public static const §^"r§:String = "laser-droid";
      
      public static const §1!k§:String = "saber-slingshot";
      
      public static const §!""§:String = "send-free-crystals";
      
      public static const §3"'§:String = "invite-friends";
      
      public static const §5"<§:String = "request-for-crystals";
      
      public static const §2"m§:String = "challenge-your-friends";
      
      public static const §[!M§:String = "get-bigger-rewards";
      
      public static const §4c§:String = "help-your-friends";
      
      public static const §;!2§:String = "free-clone-birds";
      
      public static const SKIP_EXTRA_BIRD:String = "skip-extra-bird";
      
      public static const §+"N§:String = "skip-to-extra-bird";
      
      public static const §#"Y§:String = "skip-to-victory";
      
      public static const §!!C§:String = "skip-to-failure";
      
      public static const §7!0§:String = "popup-tournament-history";
      
      private static var §"! §:Array = [];
      
      private static var §]6§:int = 0;
      
      private static var §?!3§:int = 0;
      
      private static var §#W§:int = 0;
       
      
      public function §0!8§()
      {
         super();
      }
      
      public static function §[!+§(param1:int, param2:int) : void
      {
         §-!7§(§>!]§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §-!7§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §#"O§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §'j§(_loc4_,§5#,§,param1,param2,param3);
      }
      
      public static function §7!_§(param1:String, param2:String, param3:Boolean = false) : void
      {
         if(param3)
         {
            param1 += "_subscription";
         }
         §2!!§(§ N§,param1,param2,0,!param3);
         §2!!§(§7!<§,param2,param1,0,!param3);
      }
      
      public static function §,">§(param1:String, param2:String, param3:int) : void
      {
         §2!!§(§9!f§,param1,param2 + "-" + param3,param3);
      }
      
      public static function §&",§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §+#2§(param1))
            {
               §2!!§(§#"+§,_loc4_,param2,param3);
               §2!!§(§%""§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §[I§(param1:String, param2:int) : void
      {
         §2!!§(§>"^§,param1,"",param2);
      }
      
      public static function §&"g§(param1:String, param2:int) : void
      {
         §2!!§(§'!i§,param1,"",param2);
      }
      
      public static function §[#,§(param1:String) : void
      {
         §2!!§(§ !J§,param1,"",0);
      }
      
      public static function §0e§(param1:String) : void
      {
         §2!!§(§6!m§,param1,"",0);
      }
      
      public static function §[=§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§"! §.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §"! §.length == 0;
         §"! §.push(param2);
         if(param3)
         {
            _loc6_ = §>!]§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0!8§.ACTION_CPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         else
         {
            _loc6_ = §>!]§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0!8§.ACTION_GPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         if(_loc5_)
         {
            §-!7§(_loc6_,param1.toString(),param1);
         }
         §2!!§(§5Z§,_loc6_,param2,param1);
      }
      
      public static function §5f§(param1:String, param2:int) : void
      {
         ++§]6§;
         §2!!§(§^"a§,§-"o§,param1,param2);
      }
      
      public static function §4"W§() : void
      {
         §2!!§(§^"a§,§+!K§,null,0);
      }
      
      public static function §,Z§() : void
      {
         ++§?!3§;
         §#W§ = §5"d§();
         §2!!§(§-#6§,§[w§,§?!3§.toString(),§#W§);
      }
      
      public static function §;"e§() : void
      {
         §2!!§(§-#6§,§@!W§,"",§5"d§(§#W§));
      }
      
      public static function §^!B§() : void
      {
         if(!§[!@§)
         {
            §2!!§(§,"K§,§>L§,null,0);
         }
      }
      
      public static function §9"v§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:* = null;
         if(!§[!@§)
         {
            _loc5_ = param1 + "-" + param2;
            if(param4)
            {
               _loc5_ += "_subscription";
            }
            §2!!§(§,"K§,§+q§,_loc5_,param3,false);
         }
      }
      
      public static function §]"D§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:* = null;
         if(!§[!@§)
         {
            _loc5_ = param1 + "-" + param2;
            if(param4)
            {
               _loc5_ += "_subscription";
            }
            §2!!§(§,"K§,§!"z§,_loc5_,param3,false);
         }
      }
      
      public static function §-!k§(param1:String, param2:int, param3:int) : void
      {
         if(!§[!@§)
         {
            §2!!§(§,"K§,§[-§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §-"B§(param1:String, param2:int, param3:int) : void
      {
         if(!§[!@§)
         {
            §2!!§(§,"K§,§4#6§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §"!o§(param1:String) : void
      {
         if(!§[!@§)
         {
            §2!!§(§%!1§,§9K§,param1,0,false);
         }
      }
      
      public static function §-"F§(param1:String, param2:int = -1) : void
      {
         var _loc3_:String = §+!j§;
         if(param2 == 0)
         {
            _loc3_ += §?"&§;
         }
         else
         {
            _loc3_ += §-"`§;
         }
         if(!§[!@§)
         {
            §2!!§(§%!1§,_loc3_,param1,0,false);
         }
      }
      
      public static function §["y§(param1:String, param2:int, param3:int = -1) : void
      {
         var _loc4_:String = §,!F§;
         if(param3 == 0)
         {
            _loc4_ += §?"&§;
         }
         else if(param3 == 1)
         {
            _loc4_ += §-"`§;
         }
         else
         {
            _loc4_ += §6!l§;
         }
         if(!§[!@§)
         {
            §2!!§(§%!1§,_loc4_,param1,param2,false);
         }
      }
      
      public static function §[X§(param1:String, param2:int, param3:int) : void
      {
         if(!§[!@§)
         {
            §2!!§(§,"K§,§&q§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §=D§(param1:String, param2:int, param3:int) : void
      {
         if(!§[!@§)
         {
            §2!!§(§,"K§,§5"n§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §&"<§(param1:String) : void
      {
         §2!!§(§2#%§,§]^§,param1,0);
      }
      
      public static function §@"W§(param1:String) : void
      {
         §2!!§(§2#%§,§+"7§,param1,0);
      }
      
      public static function §,"8§() : void
      {
         §2!!§(§4q§,§"""§,null,0);
      }
      
      public static function §["g§() : void
      {
         §2!!§(§2"]§,§=!G§,null,0);
      }
      
      public static function §`!U§() : void
      {
         §2!!§(§4q§,§#_§,null,0);
      }
      
      public static function §;!W§(param1:String) : void
      {
         §2!!§(§'"[§,§^#6§,param1,0);
      }
      
      public static function §@!e§(param1:String) : void
      {
         §2!!§(§'"[§,§-"a§,param1,0);
      }
      
      public static function §["X§() : void
      {
         §2!!§(§'"[§,§'!B§,null,0);
      }
      
      public static function §8"O§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §2!!§(§'"[§,§#!V§,param1,0);
      }
      
      public static function §1!-§(param1:String) : void
      {
         §2!!§(§'"[§,§'##§,param1,0);
      }
      
      public static function §[Z§(param1:int) : void
      {
         §2!!§(§>"U§,§^7§,param1.toString(),param1);
      }
      
      public static function §'"a§(param1:String) : void
      {
         §2!!§(§ b§,param1,"",0,false);
      }
      
      private static function §2!!§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §=#0§;
            if(param5)
            {
               _loc6_ = §#"O§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            §'j§(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §#"O§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §=#0§;
      }
      
      private static function §+#2§(param1:Array) : String
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
      
      private static function §5"d§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
