package §#"4§
{
   import §#$?§.§7!b§;
   import flash.utils.getTimer;
   
   public class §<"G§ extends §"!o§
   {
      
      private static const §[#L§:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const §7"7§:String = "POWERUP-USED";
      
      private static const §"#w§:String = "LEVEL-POWERUP-USED";
      
      private static const §5!$§:String = "POWERUP-" + §?%§;
      
      private static const § #7§:String = §?%§ + "-POWERUP";
      
      private static const §"G§:String = "FRAMERATE";
      
      private static const §5!l§:String = "EXTERNAL-PAUSE";
      
      private static const §@!8§:String = "GIFT";
      
      private static const §8#l§:String = "SHOP";
      
      private static const §0!j§:String = "BRAG";
      
      private static const §##l§:String = "INVITE";
      
      private static const §@$;§:String = "AVATAR";
      
      private static const §5">§:String = "FACEBOOK_SHARING";
      
      private static const §=#N§:String = "BRANDED-SHOP";
      
      private static const §+#[§:String = "POWERUP-GAINED";
      
      private static const §<!%§:String = "POWERUP-STATISTICS";
      
      private static const §&!r§:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const §?#n§:String = "POWERUP-SUGGESTION";
      
      private static const §2"$§:String = "WINGMAN-USAGE";
      
      private static const §2e§:String = "WARNING";
      
      private static const §@#p§:String = "USER-STATISTICS";
      
      private static const §4#d§:String = "TOURNAMENT-STATISTICS";
      
      private static const §?#e§:String = "STREAMING";
      
      private static const §;#]§:String = "EXTERNAL-URL";
      
      private static const §]N§:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const §>?§:String = "TOURNAMENT";
      
      private static const §8$E§:String = "ERROR";
      
      private static const §'#<§:String = "PAUSED";
      
      private static const §#"t§:String = "RESUMED";
      
      private static const §-+§:String = "GIFT-CLAIMED";
      
      private static const §2!X§:String = "GIFT-CLAIMED-ONLY";
      
      private static const §?!@§:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const §'!h§:String = "GIFT-SENT";
      
      private static const §%b§:String = "SIDEBAR";
      
      private static const §4#p§:String = "POPUP";
      
      private static const §8"+§:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const §%!9§:String = "OPENED";
      
      private static const §@#?§:String = "PRODUCT-SELECTED";
      
      private static const §3#W§:String = "PRODUCT-BUY-SELECTED";
      
      private static const §!$9§:String = "PRODUCT-BUY-COMPLETED";
      
      private static const §'!s§:String = "PRODUCT-EARN-SELECTED";
      
      private static const §`"0§:String = "PRODUCT-EARN-COMPLETED";
      
      private static const §!!c§:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const §"3§:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const §5!B§:String = "BRAG-SHOWN";
      
      private static const §1o§:String = "BRAG-CLICKED";
      
      private static const §&!d§:String = "SHARE";
      
      private static const §9"I§:String = "SKIP";
      
      private static const §&$;§:String = "FRIEND-CLICKED";
      
      private static const §<$7§:String = "GENERIC-CLICKED";
      
      private static const §>!+§:String = "OPENED";
      
      private static const § "b§:String = "SET";
      
      private static const §,r§:String = "PRODUCT-SET";
      
      private static const §]#C§:String = §3#W§;
      
      private static const §2!u§:String = §!$9§;
      
      private static const §;!9§:String = "SHARE-CLICKED";
      
      private static const §^#L§:String = "SHARE-COMPLETED";
      
      private static const §6!r§:String = "TICKET-COLLECTED";
      
      private static const §3!5§:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const § !S§:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const §<^§:String = "DOWNLOAD-FAILED";
      
      private static const §^!k§:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const §`#4§:String = "INVALID-LEVEL";
      
      private static const §=#q§:String = "FLASH-VAR-MISSING";
      
      private static const §7"B§:String = "FRIEND-COUNT";
      
      private static const §%"f§:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const §-#q§:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const §%"a§:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const §[!f§:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const §,P§:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const §`!U§:String = "START";
      
      private static const §#!v§:String = "COMPLETE";
      
      private static const §+A§:String = "ERROR";
      
      private static const §&"=§:String = "OPEN";
      
      private static const §5$C§:String = "FREE-SAMPLES";
      
      private static const §4$ §:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§#'§,§?%§,§"t§,§>H§,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,§9p§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§7"7§,§"#w§,§5!$§,§ #7§,§"G§,§5!l§,§@!8§,§8#l§,§0!j§,§##l§,§@$;§,§+#[§,§<!%§,§&!r§,§4#d§,§?#n§,§2"$§,§8$E§,§?#e§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const §`!R§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §1$%§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §<!_§:String = "DAILYREWARD";
      
      public static const §'#I§:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const §'T§:String = "TOURNAMENTPRIZE";
      
      public static const §8"0§:String = "GIFT";
      
      public static const §1#L§:String = "SHOP";
      
      public static const §@!A§:String = "trackPageView";
      
      public static const §%!X§:String = "trackTransaction";
      
      public static const §1§:String = "trackTransactionItems";
      
      public static const §9^§:String = "MAIN_MENU";
      
      public static const §[#J§:String = "CHAPTERS";
      
      public static const §!# §:String = "LEVEL_PACK";
      
      public static const §7"'§:String = "SHOP";
      
      public static const §-m§:String = "LEVEL";
      
      public static const §4!R§:String = "FRONTPAGE";
      
      public static const §=!c§:String = "COINS";
      
      public static const §5[§:String = "TABBED-SHOP";
      
      public static const §1$=§:String = "BRANDED";
      
      public static const §0u§:String = "AVATAR";
      
      public static const §4"<§:String = "THANK-YOU";
      
      public static const §2!o§:String = "QUICKBUY-SHOP";
      
      public static const §>"7§:String = "COMPLETED";
      
      public static const §3!#§:String = "FAILED";
      
      public static const §-#P§:String = "GAME";
      
      public static const §""8§:String = "BIRD_SHOT";
      
      public static const §>&§:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §%!i§:Array = [];
      
      private static var §]#p§:int = 0;
      
      private static var §^,§:int = 0;
      
      private static var §5#L§:int = 0;
      
      private static var §6!z§:int = 0;
      
      private static const §9+§:String = "FINLAND";
      
      private static const §2!a§:String = "UUSIMAA";
      
      private static const §>!c§:String = "HELSINKI";
      
      public static var §,E§:Boolean = false;
      
      public static var §#"d§:String = "BUY";
      
      public static var §+"a§:String = "POWERUP-SUGGESTION";
      
      private static var §[#Z§:String = "BUY";
      
      private static var §'6§:String = "CLOSE";
      
      private static var §^v§:String = "USE";
      
      private static var §8$8§:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var §>"'§:Boolean = false;
      
      public static var §+$A§:Boolean = true;
       
      
      public function §<"G§()
      {
         super();
      }
      
      public static function §@#u§() : void
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
      
      public static function §-A§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         if(!§+$A§)
         {
            return;
         }
         §[#]§(§"!o§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §[#]§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §8i§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §"!o§.trackSampledEvent(_loc4_,§3"k§,param1,param2,param3);
      }
      
      public static function §`!u§(param1:String, param2:String) : void
      {
         var _loc3_:int = § #]§();
         §@H§(§7"7§,param1,param2,0);
         §@H§(§"#w§,param2,param1,0);
      }
      
      public static function §16§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            §@H§(§+#[§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §^"g§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §?e§(param1))
            {
               §@H§(§5!$§,_loc4_,param2,param3);
               §@H§(§ #7§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §%!V§(param1:String, param2:String, param3:int) : void
      {
         §@H§(§&!r§,param1,param2,param3);
      }
      
      public static function §>"N§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§%!i§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §%!i§.length == 0;
         §%!i§.push(param2);
         if(param3)
         {
            _loc6_ = §"!o§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §<"G§.§`!R§;
            }
         }
         else
         {
            _loc6_ = §"!o§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §<"G§.§1$%§;
            }
         }
         if(_loc5_)
         {
            §[#]§(_loc6_,param1.toString(),param1);
         }
         §@H§(§"G§,_loc6_,param2,param1);
      }
      
      public static function §2$%§(param1:String, param2:int) : void
      {
         ++§]#p§;
         §@H§(§@!8§,§-+§,param1,param2);
      }
      
      public static function §3T§() : void
      {
         §@H§(§@!8§,§'!h§,§%b§,0);
      }
      
      public static function §%!<§() : void
      {
         §@H§(§@!8§,§'!h§,§4#p§,0);
      }
      
      public static function §1!w§() : void
      {
         §@H§(§@!8§,§2!X§,null,0);
      }
      
      public static function §1#Z§(param1:int = 0) : void
      {
         §@H§(§@!8§,§?!@§,null,param1);
      }
      
      public static function §-$?§() : void
      {
         §@H§(§@!8§,§8"+§,null,0);
      }
      
      public static function §&"x§(param1:String) : void
      {
         if(!§[#L§)
         {
            §@H§(§=#N§,§%!9§,param1,0);
         }
      }
      
      public static function § "0§() : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§%!9§,null,0);
         }
      }
      
      public static function §&!K§(param1:String) : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§@#?§,param1,0);
         }
      }
      
      public static function §%h§(param1:String, param2:int) : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§3#W§,param1,param2,true);
         }
      }
      
      public static function §+#L§(param1:String, param2:int) : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§!$9§,param1,param2,true);
         }
      }
      
      public static function §8"1§(param1:String) : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§'!s§,param1,0,true);
         }
      }
      
      public static function §3#i§(param1:String, param2:int) : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§`"0§,param1,param2,true);
         }
      }
      
      public static function §6##§(param1:String) : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§!!c§,param1,0,true);
         }
      }
      
      public static function §2d§(param1:String, param2:int) : void
      {
         if(!§[#L§)
         {
            §@H§(§8#l§,§"3§,param1,param2,true);
         }
      }
      
      public static function §%#"§(param1:String) : void
      {
         §@H§(§0!j§,§5!B§,param1,0);
      }
      
      public static function §,#-§(param1:String) : void
      {
         §@H§(§0!j§,§1o§,param1,0);
      }
      
      public static function §?!<§(param1:String) : void
      {
         §@H§(§5">§,param1,§&!d§,0);
      }
      
      public static function §1"`§(param1:String) : void
      {
         §@H§(§5">§,param1,§9"I§,0);
      }
      
      public static function §9!J§() : void
      {
         §@H§(§##l§,§&$;§,null,0);
      }
      
      public static function §<K§(param1:int) : void
      {
         §@H§(§@#p§,§6!r§,null,param1);
      }
      
      public static function §>#c§() : void
      {
         §@H§(§@#p§,§3!5§,null,0);
      }
      
      public static function §&"a§() : void
      {
         §@H§(§@#p§,§ !S§,null,0);
      }
      
      public static function §7"H§(param1:String, param2:String) : void
      {
         §@H§(§2"$§,param1,param2,0);
      }
      
      public static function §4$1§() : void
      {
         §@H§(§##l§,§<$7§,null,0);
      }
      
      public static function §1!!§() : void
      {
         §@H§(§@$;§,§>!+§,null,0);
      }
      
      public static function §36§() : void
      {
         §@H§(§@$;§,§ "b§,null,0);
      }
      
      public static function §"";§(param1:String) : void
      {
         §@H§(§@$;§,§,r§,param1,0);
      }
      
      public static function §6#=§() : void
      {
         §@H§(§@$;§,§;!9§,null,0);
      }
      
      public static function §`"m§() : void
      {
         §@H§(§@$;§,§^#L§,null,0);
      }
      
      public static function §%#H§(param1:String, param2:int = 0) : void
      {
         if(!§[#L§)
         {
            §@H§(§@$;§,§]#C§,param1,param2,true);
         }
      }
      
      public static function §6!k§(param1:String, param2:int = 0) : void
      {
         if(!§[#L§)
         {
            §@H§(§@$;§,§2!u§,param1,param2,true);
         }
      }
      
      public static function §+"r§(param1:String) : void
      {
         §@H§(§2e§,§<^§,param1,0);
      }
      
      public static function §"!w§() : void
      {
         §@H§(§2e§,§^!k§,null,0);
      }
      
      public static function §&k§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §@H§(§2e§,§`#4§,param1,0);
      }
      
      public static function §!l§(param1:String) : void
      {
         §@H§(§2e§,§=#q§,param1,0);
      }
      
      public static function §=m§(param1:int) : void
      {
         §@H§(§@#p§,§7"B§,param1.toString(),param1);
      }
      
      public static function §'#,§(param1:int) : void
      {
         §@H§(§4#d§,§7"B§,param1.toString(),param1);
      }
      
      public static function §%"1§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
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
            §@H§(§4#d§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            §@H§(§4#d§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            §@H§(§4#d§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            §@H§(§4#d§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function §#!C§() : void
      {
         §@H§(§>?§,§%"f§,null,0);
      }
      
      public static function §8!i§() : void
      {
         §@H§(§>?§,§-#q§,null,0);
      }
      
      public static function §>r§(param1:String, param2:int) : void
      {
         §@H§(§<!%§,param1,"",param2);
      }
      
      public static function §@#$§(param1:int, param2:Boolean = false) : void
      {
         §@H§(§]N§,§%"a§,"",param1);
         §@H§(§]N§,!!param2 ? §[!f§ : §,P§,"",param1);
      }
      
      public static function §8!L§(param1:String) : void
      {
         §@H§(§?#e§,§`!U§,param1,0);
      }
      
      public static function §["R§(param1:String, param2:int) : void
      {
         if(!§+$A§)
         {
            return;
         }
         §@H§(§?#e§,§+A§,param1,param2);
      }
      
      public static function §5!0§(param1:String) : void
      {
         §@H§(§?#e§,§#!v§,param1,0);
      }
      
      public static function §,!f§(param1:String) : void
      {
         §@H§(§;#]§,§&"=§,param1,0);
      }
      
      public static function §!#'§(param1:String) : void
      {
         if(!§+$A§)
         {
            return;
         }
         §@H§(§8$E§,param1,"",0,true);
      }
      
      public static function trackPageView(param1:§2"M§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §,E§)
         {
            _loc4_ = "_/" + param1.§0!q§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§4!G§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            §7!b§.§7@§(§@!A§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled && §>"'§)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §>!c§;
            _loc9_["state"] = §2!a§;
            _loc9_["country"] = §9+§;
            §7!b§.§7@§(§%!X§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled && §>"'§)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §>!c§;
            _loc5_["state"] = §2!a§;
            _loc5_["country"] = §9+§;
            §7!b§.§7@§(§1§,_loc5_,param4);
         }
      }
      
      public static function §'X§(param1:String) : void
      {
         §@H§(§?#n§,§4$ §,param1,0);
      }
      
      public static function §?#E§(param1:String) : void
      {
         §@H§(§?#n§,§[#Z§,param1,0);
      }
      
      public static function §##g§(param1:String) : void
      {
         §@H§(§?#n§,§8$8§,param1,0);
      }
      
      public static function §9"l§(param1:String) : void
      {
         §@H§(§?#n§,§^v§,param1,0);
      }
      
      public static function §0",§(param1:String) : void
      {
         §@H§(§?#n§,§'6§,param1,0);
      }
      
      private static function §@H§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §5!?§;
            if(param5)
            {
               _loc6_ = §8i§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §8i§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return §5!?§;
      }
      
      private static function §?e§(param1:Array) : String
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
      
      private static function § #]§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
      
      public static function §?"J§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
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
            §7!b§.§7@§(§""8§,_loc8_);
         }
      }
      
      public static function §?-§(param1:String, param2:String) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["level"] = param1;
         _loc3_["from"] = param2;
         §7!b§.§7@§(§>&§,_loc3_);
      }
   }
}
