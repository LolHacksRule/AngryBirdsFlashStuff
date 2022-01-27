package §#!'§
{
   import §1!i§.§>!%§;
   import flash.utils.getTimer;
   
   public class §6"]§ extends §>!%§
   {
      
      private static const §=!+§:Boolean = §4#;§.§<N§;
      
      private static const §-#]§:String = "powerup-used";
      
      private static const §-#T§:String = "level-powerup-used";
      
      private static const §4"A§:String = "powerup-" + §""+§;
      
      private static const § !§:String = §""+§ + "-powerup";
      
      private static const §2"I§:String = "powerup-gained";
      
      private static const §",§:String = "framerate";
      
      private static const §4!E§:String = "external-pause";
      
      private static const §7#!§:String = "gift";
      
      private static const §3#?§:String = "shop";
      
      private static const §0#O§:String = "brag";
      
      private static const §?n§:String = "invite";
      
      private static const §?"w§:String = "challenge";
      
      private static const §4!d§:String = "ab-test";
      
      private static const §3"+§:String = "walet-snapshot";
      
      private static const §]"N§:String = "send-request-popups";
      
      private static const §8!T§:String = "popup-opened";
      
      private static const §6"Y§:String = "skip-button";
      
      private static const §7"W§:String = "warning";
      
      private static const §4!6§:String = "user-statistics";
      
      private static const §1!t§:String = "error";
      
      private static const §8"_§:String = "paused";
      
      private static const §#"3§:String = "resumed";
      
      private static const §="&§:String = "gift-claimed";
      
      private static const §@!n§:String = "campaign-gift-claimed";
      
      private static const §6"R§:String = "opened";
      
      private static const §=!2§:String = "product-buy-selected";
      
      private static const §5!g§:String = "product-buy-completed";
      
      private static const §,a§:String = "subscription-buy-selected";
      
      private static const §0"?§:String = "subscription-buy-completed";
      
      private static const §["=§:String = "coin-buy-selected";
      
      private static const §0"H§:String = "coin-buy-completed";
      
      private static const §["!§:String = "brag-shown";
      
      private static const §,"4§:String = "brag-clicked";
      
      private static const §@"M§:String = "friend-clicked";
      
      private static const §1">§:String = "generic-clicked";
      
      private static const §]b§:String = "challenge-clicked";
      
      private static const §8#+§:String = "upsell-clicked";
      
      private static const §]#C§:String = "upsell-open-purchase";
      
      private static const §+"%§:String = "upsell-buy";
      
      private static const §>!S§:String = "-normal";
      
      private static const §8"c§:String = "-a";
      
      private static const §%#?§:String = "-b";
      
      private static const §4h§:String = "invalid-currency";
      
      private static const §^#J§:String = "download-failed";
      
      private static const §,#8§:String = "3rd-party-cookies-missing";
      
      private static const §]!a§:String = "invalid-level";
      
      private static const §'"_§:String = "flash-var-missing";
      
      private static const §#!!§:String = "friend-count";
      
      private static const §8#[§:String = "start";
      
      private static const §-S§:String = "complete";
      
      private static const §#>§:String = "error";
      
      private static const §0#=§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§,6§,§""+§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§!!W§,§?#T§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§-#]§,§-#T§,§4"A§,§ !§,§",§,§4!E§,§7#!§,§3#?§,§0#O§,§?n§,§2"I§,§3"+§,§]"N§,§8!T§,§6"Y§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§1!t§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const ACTION_CPU_FPS_FULL_SCREEN_REPORT:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const ACTION_GPU_FPS_FULL_SCREEN_REPORT:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §2"#§:String = "DailyReward";
      
      public static const §'"X§:String = "PaidSpin";
      
      public static const §3!b§:String = "LevelComplete";
      
      public static const §4!2§:String = "starcoins";
      
      public static const §6"W§:String = "crystals";
      
      public static const §5"^§:String = "mighty-falcons";
      
      public static const §8##§:String = "clone-birds";
      
      public static const §;b§:String = "thermal-detonator";
      
      public static const §-#E§:String = "laser-droid";
      
      public static const §#"z§:String = "saber-slingshot";
      
      public static const §""x§:String = "send-free-crystals";
      
      public static const §^S§:String = "invite-friends";
      
      public static const §]_§:String = "request-for-crystals";
      
      public static const §@!Y§:String = "challenge-your-friends";
      
      public static const §-"O§:String = "get-bigger-rewards";
      
      public static const §@!O§:String = "help-your-friends";
      
      public static const §4!§:String = "free-clone-birds";
      
      public static const SKIP_EXTRA_BIRD:String = "skip-extra-bird";
      
      public static const §<8§:String = "skip-to-extra-bird";
      
      public static const §'v§:String = "skip-to-victory";
      
      public static const § "i§:String = "skip-to-failure";
      
      public static const §8!1§:String = "popup-tournament-history";
      
      private static var § l§:Array = [];
      
      private static var §8u§:int = 0;
      
      private static var §3#W§:int = 0;
      
      private static var §%#E§:int = 0;
       
      
      public function §6"]§()
      {
         super();
      }
      
      public static function §-!&§(param1:int, param2:int) : void
      {
         §2!L§(§>!%§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §2!L§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §!>§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §>#V§(_loc4_,§'"r§,param1,param2,param3);
      }
      
      public static function §?!h§(param1:String, param2:String, param3:Boolean = false) : void
      {
         if(param3)
         {
            param1 += "_subscription";
         }
         §<!O§(§-#]§,param1,param2,0,!param3);
         §<!O§(§-#T§,param2,param1,0,!param3);
      }
      
      public static function §4!9§(param1:String, param2:String, param3:int) : void
      {
         §<!O§(§2"I§,param1,param2 + "-" + param3,param3);
      }
      
      public static function §@!f§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §>#&§(param1))
            {
               §<!O§(§4"A§,_loc4_,param2,param3);
               §<!O§(§ !§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §'5§(param1:String, param2:int) : void
      {
         §<!O§(§3"+§,param1,"",param2);
      }
      
      public static function §8#2§(param1:String, param2:int) : void
      {
         §<!O§(§]"N§,param1,"",param2);
      }
      
      public static function §]C§(param1:String) : void
      {
         §<!O§(§6"Y§,param1,"",0);
      }
      
      public static function §2![§(param1:String) : void
      {
         §<!O§(§8!T§,param1,"",0);
      }
      
      public static function §]F§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§ l§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = § l§.length == 0;
         § l§.push(param2);
         if(param3)
         {
            _loc6_ = §>!%§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6"]§.ACTION_CPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         else
         {
            _loc6_ = §>!%§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §6"]§.ACTION_GPU_FPS_FULL_SCREEN_REPORT;
            }
         }
         if(_loc5_)
         {
            §2!L§(_loc6_,param1.toString(),param1);
         }
         §<!O§(§",§,_loc6_,param2,param1);
      }
      
      public static function §>u§(param1:String, param2:int) : void
      {
         ++§8u§;
         §<!O§(§7#!§,§="&§,param1,param2);
      }
      
      public static function §`"&§() : void
      {
         §<!O§(§7#!§,§@!n§,null,0);
      }
      
      public static function §]!y§() : void
      {
         ++§3#W§;
         §%#E§ = §5!W§();
         §<!O§(§4!E§,§8"_§,§3#W§.toString(),§%#E§);
      }
      
      public static function §<!;§() : void
      {
         §<!O§(§4!E§,§#"3§,"",§5!W§(§%#E§));
      }
      
      public static function §>!=§() : void
      {
         if(!§=!+§)
         {
            §<!O§(§3#?§,§6"R§,null,0);
         }
      }
      
      public static function §9!d§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:* = null;
         if(!§=!+§)
         {
            _loc5_ = param1 + "-" + param2;
            if(param4)
            {
               _loc5_ += "_subscription";
            }
            §<!O§(§3#?§,§=!2§,_loc5_,param3,false);
         }
      }
      
      public static function §>Q§(param1:String, param2:int, param3:int, param4:Boolean = false) : void
      {
         var _loc5_:* = null;
         if(!§=!+§)
         {
            _loc5_ = param1 + "-" + param2;
            if(param4)
            {
               _loc5_ += "_subscription";
            }
            §<!O§(§3#?§,§5!g§,_loc5_,param3,false);
         }
      }
      
      public static function § "§(param1:String, param2:int, param3:int) : void
      {
         if(!§=!+§)
         {
            §<!O§(§3#?§,§,a§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §#"c§(param1:String, param2:int, param3:int) : void
      {
         if(!§=!+§)
         {
            §<!O§(§3#?§,§0"?§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §"#-§(param1:String) : void
      {
         if(!§=!+§)
         {
            §<!O§(§4!d§,§8#+§,param1,0,false);
         }
      }
      
      public static function §##7§(param1:String, param2:int = -1) : void
      {
         var _loc3_:String = §]#C§;
         if(param2 == 0)
         {
            _loc3_ += §8"c§;
         }
         else
         {
            _loc3_ += §%#?§;
         }
         if(!§=!+§)
         {
            §<!O§(§4!d§,_loc3_,param1,0,false);
         }
      }
      
      public static function §@E§(param1:String, param2:int, param3:int = -1) : void
      {
         var _loc4_:String = §+"%§;
         if(param3 == 0)
         {
            _loc4_ += §8"c§;
         }
         else if(param3 == 1)
         {
            _loc4_ += §%#?§;
         }
         else
         {
            _loc4_ += §>!S§;
         }
         if(!§=!+§)
         {
            §<!O§(§4!d§,_loc4_,param1,param2,false);
         }
      }
      
      public static function §1"=§(param1:String, param2:int, param3:int) : void
      {
         if(!§=!+§)
         {
            §<!O§(§3#?§,§["=§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §%"B§(param1:String, param2:int, param3:int) : void
      {
         if(!§=!+§)
         {
            §<!O§(§3#?§,§0"H§,param1 + "-" + param2,param3,false);
         }
      }
      
      public static function §'";§(param1:String) : void
      {
         §<!O§(§0#O§,§["!§,param1,0);
      }
      
      public static function §#!9§(param1:String) : void
      {
         §<!O§(§0#O§,§,"4§,param1,0);
      }
      
      public static function §8"<§() : void
      {
         §<!O§(§?n§,§@"M§,null,0);
      }
      
      public static function §0"N§() : void
      {
         §<!O§(§?"w§,§]b§,null,0);
      }
      
      public static function §&"e§() : void
      {
         §<!O§(§?n§,§1">§,null,0);
      }
      
      public static function § #7§(param1:String) : void
      {
         §<!O§(§7"W§,§4h§,param1,0);
      }
      
      public static function §'7§(param1:String) : void
      {
         §<!O§(§7"W§,§^#J§,param1,0);
      }
      
      public static function §%"X§() : void
      {
         §<!O§(§7"W§,§,#8§,null,0);
      }
      
      public static function §@#C§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §<!O§(§7"W§,§]!a§,param1,0);
      }
      
      public static function §9"=§(param1:String) : void
      {
         §<!O§(§7"W§,§'"_§,param1,0);
      }
      
      public static function §1w§(param1:int) : void
      {
         §<!O§(§4!6§,§#!!§,param1.toString(),param1);
      }
      
      public static function §&"q§(param1:String) : void
      {
         §<!O§(§1!t§,param1,"",0,false);
      }
      
      private static function §<!O§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §!"<§;
            if(param5)
            {
               _loc6_ = §!>§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            §>#V§(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §!>§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §!"<§;
      }
      
      private static function §>#&§(param1:Array) : String
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
      
      private static function §5!W§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
