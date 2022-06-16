package §`7§
{
   import §%!x§.§^!K§;
   import flash.utils.getTimer;
   
   public class §`"x§ extends §`m§
   {
      
      private static const § 2§:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const §8Y§:String = "POWERUP-USED";
      
      private static const §3#&§:String = "LEVEL-POWERUP-USED";
      
      private static const §6# §:String = "POWERUP-" + §&G§;
      
      private static const §^P§:String = §&G§ + "-POWERUP";
      
      private static const §&X§:String = "FRAMERATE";
      
      private static const §#s§:String = "EXTERNAL-PAUSE";
      
      private static const §%"'§:String = "GIFT";
      
      private static const §1g§:String = "SHOP";
      
      private static const §1"6§:String = "BRAG";
      
      private static const §6#m§:String = "INVITE";
      
      private static const §7"P§:String = "AVATAR";
      
      private static const §0!X§:String = "FACEBOOK_SHARING";
      
      private static const §;!%§:String = "BRANDED-SHOP";
      
      private static const §3"G§:String = "POWERUP-GAINED";
      
      private static const §5"&§:String = "POWERUP-STATISTICS";
      
      private static const §[F§:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const §%#R§:String = "POWERUP-SUGGESTION";
      
      private static const §9!L§:String = "WINGMAN-USAGE";
      
      private static const §="Z§:String = "WARNING";
      
      private static const §#b§:String = "USER-STATISTICS";
      
      private static const §%"b§:String = "TOURNAMENT-STATISTICS";
      
      private static const §!k§:String = "STREAMING";
      
      private static const §7!K§:String = "EXTERNAL-URL";
      
      private static const §;#g§:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const §,#1§:String = "TOURNAMENT";
      
      private static const § #d§:String = "ERROR";
      
      private static const §'!b§:String = "PAUSED";
      
      private static const §@#C§:String = "RESUMED";
      
      private static const §%#y§:String = "GIFT-CLAIMED";
      
      private static const §["o§:String = "GIFT-CLAIMED-ONLY";
      
      private static const §7"u§:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const §1#D§:String = "GIFT-SENT";
      
      private static const §^%§:String = "SIDEBAR";
      
      private static const §1Y§:String = "POPUP";
      
      private static const §[x§:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const §[!Q§:String = "OPENED";
      
      private static const §7;§:String = "PRODUCT-SELECTED";
      
      private static const §5#K§:String = "PRODUCT-BUY-SELECTED";
      
      private static const §'!1§:String = "PRODUCT-BUY-COMPLETED";
      
      private static const §]]§:String = "PRODUCT-EARN-SELECTED";
      
      private static const §6$1§:String = "PRODUCT-EARN-COMPLETED";
      
      private static const §,!J§:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const §""B§:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const §]!O§:String = "BRAG-SHOWN";
      
      private static const §6#0§:String = "BRAG-CLICKED";
      
      private static const §9"4§:String = "SHARE";
      
      private static const §1<§:String = "SKIP";
      
      private static const §!!u§:String = "FRIEND-CLICKED";
      
      private static const §@#u§:String = "GENERIC-CLICKED";
      
      private static const §["4§:String = "OPENED";
      
      private static const §&"9§:String = "SET";
      
      private static const § 8§:String = "PRODUCT-SET";
      
      private static const §[#S§:String = §5#K§;
      
      private static const §^#m§:String = §'!1§;
      
      private static const §+!+§:String = "SHARE-CLICKED";
      
      private static const §?"H§:String = "SHARE-COMPLETED";
      
      private static const §<^§:String = "TICKET-COLLECTED";
      
      private static const §0T§:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const §'"S§:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const §9!F§:String = "DOWNLOAD-FAILED";
      
      private static const §=#[§:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const §>"y§:String = "INVALID-LEVEL";
      
      private static const §3"+§:String = "FLASH-VAR-MISSING";
      
      private static const §>#I§:String = "FRIEND-COUNT";
      
      private static const §"!<§:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const §9#X§:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const §=!7§:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const §>#k§:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const § #c§:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const §^#?§:String = "START";
      
      private static const §@m§:String = "COMPLETE";
      
      private static const §7T§:String = "ERROR";
      
      private static const §`#<§:String = "OPEN";
      
      private static const §7!=§:String = "FREE-SAMPLES";
      
      private static const §0!?§:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§+"-§,§&G§,§4!s§,§3!W§,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,§4!e§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§8Y§,§3#&§,§6# §,§^P§,§&X§,§#s§,§%"'§,§1g§,§1"6§,§6#m§,§7"P§,§3"G§,§5"&§,§[F§,§%"b§,§%#R§,§9!L§,§ #d§,§!k§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const §%#r§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §#U§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §="N§:String = "DAILYREWARD";
      
      public static const §"#k§:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const §;#^§:String = "TOURNAMENTPRIZE";
      
      public static const §[!H§:String = "GIFT";
      
      public static const § !G§:String = "SHOP";
      
      public static const §9"U§:String = "trackPageView";
      
      public static const §"!;§:String = "trackTransaction";
      
      public static const §[w§:String = "trackTransactionItems";
      
      public static const §%#&§:String = "MAIN_MENU";
      
      public static const §%z§:String = "CHAPTERS";
      
      public static const §3#j§:String = "LEVEL_PACK";
      
      public static const §[$6§:String = "SHOP";
      
      public static const §2$,§:String = "LEVEL";
      
      public static const §^#§:String = "FRONTPAGE";
      
      public static const §1#R§:String = "COINS";
      
      public static const §&%§:String = "TABBED-SHOP";
      
      public static const §?$6§:String = "BRANDED";
      
      public static const §3">§:String = "AVATAR";
      
      public static const §1!B§:String = "THANK-YOU";
      
      public static const §,!y§:String = "QUICKBUY-SHOP";
      
      public static const §4$#§:String = "COMPLETED";
      
      public static const §&!F§:String = "FAILED";
      
      public static const § #w§:String = "GAME";
      
      public static const §3#v§:String = "BIRD_SHOT";
      
      public static const §&"R§:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §+!1§:Array = [];
      
      private static var §?$-§:int = 0;
      
      private static var §8"x§:int = 0;
      
      private static var §4>§:int = 0;
      
      private static var §'!s§:int = 0;
      
      private static const §7!7§:String = "FINLAND";
      
      private static const §[#T§:String = "UUSIMAA";
      
      private static const §;#2§:String = "HELSINKI";
      
      public static var §8"J§:Boolean = false;
      
      public static var §8P§:String = "BUY";
      
      public static var §,"U§:String = "POWERUP-SUGGESTION";
      
      private static var §7!V§:String = "BUY";
      
      private static var §"-§:String = "CLOSE";
      
      private static var §#!-§:String = "USE";
      
      private static var §'F§:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var §6"o§:Boolean = false;
      
      public static var §`#z§:Boolean = true;
       
      
      public function §`"x§()
      {
         super();
      }
      
      public static function §<![§() : void
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
      
      public static function §@#5§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         if(!§`#z§)
         {
            return;
         }
         §"<§(§`m§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §"<§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §0"d§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §`m§.trackSampledEvent(_loc4_,§5G§,param1,param2,param3);
      }
      
      public static function §'l§(param1:String, param2:String) : void
      {
         var _loc3_:int = §"!s§();
         §`"C§(§8Y§,param1,param2,0);
         §`"C§(§3#&§,param2,param1,0);
      }
      
      public static function §!`§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            §`"C§(§3"G§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §[#P§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §+"&§(param1))
            {
               §`"C§(§6# §,_loc4_,param2,param3);
               §`"C§(§^P§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §[!d§(param1:String, param2:String, param3:int) : void
      {
         §`"C§(§[F§,param1,param2,param3);
      }
      
      public static function §@#q§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§+!1§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §+!1§.length == 0;
         §+!1§.push(param2);
         if(param3)
         {
            _loc6_ = §`m§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §`"x§.§%#r§;
            }
         }
         else
         {
            _loc6_ = §`m§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §`"x§.§#U§;
            }
         }
         if(_loc5_)
         {
            §"<§(_loc6_,param1.toString(),param1);
         }
         §`"C§(§&X§,_loc6_,param2,param1);
      }
      
      public static function §>!#§(param1:String, param2:int) : void
      {
         ++§?$-§;
         §`"C§(§%"'§,§%#y§,param1,param2);
      }
      
      public static function §0"p§() : void
      {
         §`"C§(§%"'§,§1#D§,§^%§,0);
      }
      
      public static function §@!'§() : void
      {
         §`"C§(§%"'§,§1#D§,§1Y§,0);
      }
      
      public static function §0m§() : void
      {
         §`"C§(§%"'§,§["o§,null,0);
      }
      
      public static function § "^§(param1:int = 0) : void
      {
         §`"C§(§%"'§,§7"u§,null,param1);
      }
      
      public static function §>!F§() : void
      {
         §`"C§(§%"'§,§[x§,null,0);
      }
      
      public static function §!$+§(param1:String) : void
      {
         if(!§ 2§)
         {
            §`"C§(§;!%§,§[!Q§,param1,0);
         }
      }
      
      public static function §;$8§() : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§[!Q§,null,0);
         }
      }
      
      public static function §8!v§(param1:String) : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§7;§,param1,0);
         }
      }
      
      public static function §?"8§(param1:String, param2:int) : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§5#K§,param1,param2,true);
         }
      }
      
      public static function §!!4§(param1:String, param2:int) : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§'!1§,param1,param2,true);
         }
      }
      
      public static function §1"F§(param1:String) : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§]]§,param1,0,true);
         }
      }
      
      public static function §<#O§(param1:String, param2:int) : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§6$1§,param1,param2,true);
         }
      }
      
      public static function §"#h§(param1:String) : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§,!J§,param1,0,true);
         }
      }
      
      public static function §["E§(param1:String, param2:int) : void
      {
         if(!§ 2§)
         {
            §`"C§(§1g§,§""B§,param1,param2,true);
         }
      }
      
      public static function §%$ §(param1:String) : void
      {
         §`"C§(§1"6§,§]!O§,param1,0);
      }
      
      public static function §&$&§(param1:String) : void
      {
         §`"C§(§1"6§,§6#0§,param1,0);
      }
      
      public static function §4!$§(param1:String) : void
      {
         §`"C§(§0!X§,param1,§9"4§,0);
      }
      
      public static function §;",§(param1:String) : void
      {
         §`"C§(§0!X§,param1,§1<§,0);
      }
      
      public static function §""m§() : void
      {
         §`"C§(§6#m§,§!!u§,null,0);
      }
      
      public static function §>"&§(param1:int) : void
      {
         §`"C§(§#b§,§<^§,null,param1);
      }
      
      public static function §2j§() : void
      {
         §`"C§(§#b§,§0T§,null,0);
      }
      
      public static function § #r§() : void
      {
         §`"C§(§#b§,§'"S§,null,0);
      }
      
      public static function §!!G§(param1:String, param2:String) : void
      {
         §`"C§(§9!L§,param1,param2,0);
      }
      
      public static function §0!G§() : void
      {
         §`"C§(§6#m§,§@#u§,null,0);
      }
      
      public static function §&!+§() : void
      {
         §`"C§(§7"P§,§["4§,null,0);
      }
      
      public static function §[f§() : void
      {
         §`"C§(§7"P§,§&"9§,null,0);
      }
      
      public static function §;i§(param1:String) : void
      {
         §`"C§(§7"P§,§ 8§,param1,0);
      }
      
      public static function §%!K§() : void
      {
         §`"C§(§7"P§,§+!+§,null,0);
      }
      
      public static function §;!_§() : void
      {
         §`"C§(§7"P§,§?"H§,null,0);
      }
      
      public static function §2!k§(param1:String, param2:int = 0) : void
      {
         if(!§ 2§)
         {
            §`"C§(§7"P§,§[#S§,param1,param2,true);
         }
      }
      
      public static function §!#@§(param1:String, param2:int = 0) : void
      {
         if(!§ 2§)
         {
            §`"C§(§7"P§,§^#m§,param1,param2,true);
         }
      }
      
      public static function §#E§(param1:String) : void
      {
         §`"C§(§="Z§,§9!F§,param1,0);
      }
      
      public static function §@k§() : void
      {
         §`"C§(§="Z§,§=#[§,null,0);
      }
      
      public static function §,z§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §`"C§(§="Z§,§>"y§,param1,0);
      }
      
      public static function §4!w§(param1:String) : void
      {
         §`"C§(§="Z§,§3"+§,param1,0);
      }
      
      public static function §="C§(param1:int) : void
      {
         §`"C§(§#b§,§>#I§,param1.toString(),param1);
      }
      
      public static function §?"Y§(param1:int) : void
      {
         §`"C§(§%"b§,§>#I§,param1.toString(),param1);
      }
      
      public static function §-§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
      {
         if(param4 < 0)
         {
            param4 *= -1;
         }
         if(param5 < 0)
         {
            param5 *= -1;
         }
         if(param2)
         {
            §`"C§(§%"b§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            §`"C§(§%"b§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            §`"C§(§%"b§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            §`"C§(§%"b§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function §?#L§() : void
      {
         §`"C§(§,#1§,§"!<§,null,0);
      }
      
      public static function §^!A§() : void
      {
         §`"C§(§,#1§,§9#X§,null,0);
      }
      
      public static function §5"V§(param1:String, param2:int) : void
      {
         §`"C§(§5"&§,param1,"",param2);
      }
      
      public static function §'"[§(param1:int, param2:Boolean = false) : void
      {
         §`"C§(§;#g§,§=!7§,"",param1);
         §`"C§(§;#g§,!!param2 ? §>#k§ : § #c§,"",param1);
      }
      
      public static function § ";§(param1:String) : void
      {
         §`"C§(§!k§,§^#?§,param1,0);
      }
      
      public static function §<#s§(param1:String, param2:int) : void
      {
         if(!§`#z§)
         {
            return;
         }
         §`"C§(§!k§,§7T§,param1,param2);
      }
      
      public static function §`!u§(param1:String) : void
      {
         §`"C§(§!k§,§@m§,param1,0);
      }
      
      public static function §]$?§(param1:String) : void
      {
         §`"C§(§7!K§,§`#<§,param1,0);
      }
      
      public static function §;@§(param1:String) : void
      {
         if(!§`#z§)
         {
            return;
         }
         §`"C§(§ #d§,param1,"",0,true);
      }
      
      public static function trackPageView(param1:§7E§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §8"J§)
         {
            _loc4_ = "_/" + param1.§!3§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§0'§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            §^!K§.§+"D§(§9"U§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled && §6"o§)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §;#2§;
            _loc9_["state"] = §[#T§;
            _loc9_["country"] = §7!7§;
            §^!K§.§+"D§(§"!;§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled && §6"o§)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §;#2§;
            _loc5_["state"] = §[#T§;
            _loc5_["country"] = §7!7§;
            §^!K§.§+"D§(§[w§,_loc5_,param4);
         }
      }
      
      public static function §0#9§(param1:String) : void
      {
         §`"C§(§%#R§,§0!?§,param1,0);
      }
      
      public static function §##n§(param1:String) : void
      {
         §`"C§(§%#R§,§7!V§,param1,0);
      }
      
      public static function §0"5§(param1:String) : void
      {
         §`"C§(§%#R§,§'F§,param1,0);
      }
      
      public static function §0"a§(param1:String) : void
      {
         §`"C§(§%#R§,§#!-§,param1,0);
      }
      
      public static function §@!x§(param1:String) : void
      {
         §`"C§(§%#R§,§"-§,param1,0);
      }
      
      private static function §`"C§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §%H§;
            if(param5)
            {
               _loc6_ = §0"d§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §0"d§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return §%H§;
      }
      
      private static function §+"&§(param1:Array) : String
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
      
      private static function §"!s§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
      
      public static function § 1§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
      {
         var _loc8_:Object = null;
         if(enabled)
         {
            (_loc8_ = new Object())["slingshot"] = param1;
            _loc8_["level"] = param2;
            _loc8_["bird_index"] = param3;
            _loc8_["kingsling_active"] = param4;
            _loc8_["slingscope_active"] = param5;
            _loc8_["superseed_active"] = param6;
            _loc8_["wingman_active"] = param7;
            §^!K§.§+"D§(§3#v§,_loc8_);
         }
      }
      
      public static function § set§(param1:String, param2:String) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["level"] = param1;
         _loc3_["from"] = param2;
         §^!K§.§+"D§(§&"R§,_loc3_);
      }
   }
}
