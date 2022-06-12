package §>!#§
{
   import §+"%§.§6X§;
   import flash.utils.getTimer;
   
   public class §,"W§ extends §;-§
   {
      
      private static const §5#`§:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const §,!Y§:String = "POWERUP-USED";
      
      private static const §##A§:String = "LEVEL-POWERUP-USED";
      
      private static const §5H§:String = "POWERUP-" + §2x§;
      
      private static const §,!j§:String = §2x§ + "-POWERUP";
      
      private static const §%!N§:String = "FRAMERATE";
      
      private static const §`X§:String = "EXTERNAL-PAUSE";
      
      private static const §?"N§:String = "GIFT";
      
      private static const §!m§:String = "SHOP";
      
      private static const §@?§:String = "BRAG";
      
      private static const §<!6§:String = "INVITE";
      
      private static const §7!+§:String = "AVATAR";
      
      private static const §#r§:String = "FACEBOOK_SHARING";
      
      private static const §#!x§:String = "BRANDED-SHOP";
      
      private static const §6"b§:String = "POWERUP-GAINED";
      
      private static const §&#Z§:String = "POWERUP-STATISTICS";
      
      private static const §8L§:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const §5"A§:String = "POWERUP-SUGGESTION";
      
      private static const §`Y§:String = "WINGMAN-USAGE";
      
      private static const §!W§:String = "WARNING";
      
      private static const §]t§:String = "USER-STATISTICS";
      
      private static const §3#P§:String = "TOURNAMENT-STATISTICS";
      
      private static const §0"-§:String = "STREAMING";
      
      private static const §<C§:String = "EXTERNAL-URL";
      
      private static const §>x§:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const §^#8§:String = "TOURNAMENT";
      
      private static const §!#X§:String = "ERROR";
      
      private static const §[#B§:String = "PAUSED";
      
      private static const §3#S§:String = "RESUMED";
      
      private static const §,h§:String = "GIFT-CLAIMED";
      
      private static const §2#2§:String = "GIFT-CLAIMED-ONLY";
      
      private static const §9!§:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const §9"!§:String = "GIFT-SENT";
      
      private static const §5"%§:String = "SIDEBAR";
      
      private static const § #A§:String = "POPUP";
      
      private static const §&"3§:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const §`##§:String = "OPENED";
      
      private static const §'"l§:String = "PRODUCT-SELECTED";
      
      private static const §]!`§:String = "PRODUCT-BUY-SELECTED";
      
      private static const §7&§:String = "PRODUCT-BUY-COMPLETED";
      
      private static const §]!D§:String = "PRODUCT-EARN-SELECTED";
      
      private static const §"!h§:String = "PRODUCT-EARN-COMPLETED";
      
      private static const §&#s§:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const §1"w§:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const §=#U§:String = "BRAG-SHOWN";
      
      private static const §"!k§:String = "BRAG-CLICKED";
      
      private static const §9!`§:String = "SHARE";
      
      private static const §="Q§:String = "SKIP";
      
      private static const §+!W§:String = "FRIEND-CLICKED";
      
      private static const §;#x§:String = "GENERIC-CLICKED";
      
      private static const §`g§:String = "OPENED";
      
      private static const §1$ §:String = "SET";
      
      private static const §>"O§:String = "PRODUCT-SET";
      
      private static const §6$0§:String = §]!`§;
      
      private static const §=!]§:String = §7&§;
      
      private static const §!$1§:String = "SHARE-CLICKED";
      
      private static const §^"S§:String = "SHARE-COMPLETED";
      
      private static const §[#G§:String = "TICKET-COLLECTED";
      
      private static const §;"k§:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const §>!t§:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const §0#h§:String = "DOWNLOAD-FAILED";
      
      private static const §0B§:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const §="2§:String = "INVALID-LEVEL";
      
      private static const §8"U§:String = "FLASH-VAR-MISSING";
      
      private static const §#"4§:String = "FRIEND-COUNT";
      
      private static const §3$5§:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const §]#W§:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const §""f§:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const §0!-§:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const §'!<§:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const §'i§:String = "START";
      
      private static const §!$ §:String = "COMPLETE";
      
      private static const §8h§:String = "ERROR";
      
      private static const §?#y§:String = "OPEN";
      
      private static const §`"$§:String = "FREE-SAMPLES";
      
      private static const §?"]§:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§6r§,§2x§,§7!h§,§1!]§,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,§5F§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§,!Y§,§##A§,§5H§,§,!j§,§%!N§,§`X§,§?"N§,§!m§,§@?§,§<!6§,§7!+§,§6"b§,§&#Z§,§8L§,§3#P§,§5"A§,§`Y§,§!#X§,§0"-§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const §%#!§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §2$4§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §;'§:String = "DAILYREWARD";
      
      public static const §0"Y§:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const § $&§:String = "TOURNAMENTPRIZE";
      
      public static const §"v§:String = "GIFT";
      
      public static const §4!,§:String = "SHOP";
      
      public static const §8!f§:String = "trackPageView";
      
      public static const §;#E§:String = "trackTransaction";
      
      public static const §0#g§:String = "trackTransactionItems";
      
      public static const §^#6§:String = "MAIN_MENU";
      
      public static const §>#@§:String = "CHAPTERS";
      
      public static const §-`§:String = "LEVEL_PACK";
      
      public static const §8z§:String = "SHOP";
      
      public static const §9"H§:String = "LEVEL";
      
      public static const §+$8§:String = "FRONTPAGE";
      
      public static const §`"b§:String = "COINS";
      
      public static const §"#!§:String = "TABBED-SHOP";
      
      public static const §]f§:String = "BRANDED";
      
      public static const §7!;§:String = "AVATAR";
      
      public static const §=!b§:String = "THANK-YOU";
      
      public static const §-!+§:String = "QUICKBUY-SHOP";
      
      public static const §6#[§:String = "COMPLETED";
      
      public static const §-"Z§:String = "FAILED";
      
      public static const §##[§:String = "GAME";
      
      public static const §3!V§:String = "BIRD_SHOT";
      
      public static const §[C§:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §+!1§:Array = [];
      
      private static var §'!7§:int = 0;
      
      private static var §'O§:int = 0;
      
      private static var §,M§:int = 0;
      
      private static var §?$&§:int = 0;
      
      private static const §=H§:String = "FINLAND";
      
      private static const §@!K§:String = "UUSIMAA";
      
      private static const §5!D§:String = "HELSINKI";
      
      public static var §2!,§:Boolean = false;
      
      public static var §7"§:String = "BUY";
      
      public static var § "8§:String = "POWERUP-SUGGESTION";
      
      private static var §""M§:String = "BUY";
      
      private static var §,w§:String = "CLOSE";
      
      private static var §@#o§:String = "USE";
      
      private static var §?#F§:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var §%!4§:Boolean = false;
      
      public static var §=!R§:Boolean = true;
       
      
      public function §,"W§()
      {
         super();
      }
      
      public static function §4!D§() : void
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
      
      public static function §<!&§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         if(!§=!R§)
         {
            return;
         }
         §`#f§(§;-§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §`#f§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §#!K§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §;-§.trackSampledEvent(_loc4_,§#H§,param1,param2,param3);
      }
      
      public static function §="7§(param1:String, param2:String) : void
      {
         int(§7"0§());
         § !S§(§,!Y§,param1,param2,0);
         § !S§(§##A§,param2,param1,0);
      }
      
      public static function §!#k§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            § !S§(§6"b§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §=$9§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §!!f§(param1))
            {
               § !S§(§5H§,_loc4_,param2,param3);
               § !S§(§,!j§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §'&§(param1:String, param2:String, param3:int) : void
      {
         § !S§(§8L§,param1,param2,param3);
      }
      
      public static function §>"h§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
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
            _loc6_ = §;-§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §,"W§.§%#!§;
            }
         }
         else
         {
            _loc6_ = §;-§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §,"W§.§2$4§;
            }
         }
         if(_loc5_)
         {
            §`#f§(_loc6_,param1.toString(),param1);
         }
         § !S§(§%!N§,_loc6_,param2,param1);
      }
      
      public static function §"!`§(param1:String, param2:int) : void
      {
         ++§'!7§;
         § !S§(§?"N§,§,h§,param1,param2);
      }
      
      public static function §>!n§() : void
      {
         § !S§(§?"N§,§9"!§,§5"%§,0);
      }
      
      public static function §'$5§() : void
      {
         § !S§(§?"N§,§9"!§,§ #A§,0);
      }
      
      public static function §=!w§() : void
      {
         § !S§(§?"N§,§2#2§,null,0);
      }
      
      public static function §=u§(param1:int = 0) : void
      {
         § !S§(§?"N§,§9!§,null,param1);
      }
      
      public static function §<"v§() : void
      {
         § !S§(§?"N§,§&"3§,null,0);
      }
      
      public static function §1w§(param1:String) : void
      {
         if(!§5#`§)
         {
            § !S§(§#!x§,§`##§,param1,0);
         }
      }
      
      public static function §+#U§() : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§`##§,null,0);
         }
      }
      
      public static function §5-§(param1:String) : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§'"l§,param1,0);
         }
      }
      
      public static function §8`§(param1:String, param2:int) : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§]!`§,param1,param2,true);
         }
      }
      
      public static function §9!C§(param1:String, param2:int) : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§7&§,param1,param2,true);
         }
      }
      
      public static function §;#=§(param1:String) : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§]!D§,param1,0,true);
         }
      }
      
      public static function §^!p§(param1:String, param2:int) : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§"!h§,param1,param2,true);
         }
      }
      
      public static function §@"S§(param1:String) : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§&#s§,param1,0,true);
         }
      }
      
      public static function §0#l§(param1:String, param2:int) : void
      {
         if(!§5#`§)
         {
            § !S§(§!m§,§1"w§,param1,param2,true);
         }
      }
      
      public static function §8!1§(param1:String) : void
      {
         § !S§(§@?§,§=#U§,param1,0);
      }
      
      public static function §6m§(param1:String) : void
      {
         § !S§(§@?§,§"!k§,param1,0);
      }
      
      public static function § A§(param1:String) : void
      {
         § !S§(§#r§,param1,§9!`§,0);
      }
      
      public static function §]"'§(param1:String) : void
      {
         § !S§(§#r§,param1,§="Q§,0);
      }
      
      public static function §+"$§() : void
      {
         § !S§(§<!6§,§+!W§,null,0);
      }
      
      public static function §!"e§(param1:int) : void
      {
         § !S§(§]t§,§[#G§,null,param1);
      }
      
      public static function §?L§() : void
      {
         § !S§(§]t§,§;"k§,null,0);
      }
      
      public static function §7#A§() : void
      {
         § !S§(§]t§,§>!t§,null,0);
      }
      
      public static function §4K§(param1:String, param2:String) : void
      {
         § !S§(§`Y§,param1,param2,0);
      }
      
      public static function §+#u§() : void
      {
         § !S§(§<!6§,§;#x§,null,0);
      }
      
      public static function § "L§() : void
      {
         § !S§(§7!+§,§`g§,null,0);
      }
      
      public static function §@"w§() : void
      {
         § !S§(§7!+§,§1$ §,null,0);
      }
      
      public static function §2"l§(param1:String) : void
      {
         § !S§(§7!+§,§>"O§,param1,0);
      }
      
      public static function § !u§() : void
      {
         § !S§(§7!+§,§!$1§,null,0);
      }
      
      public static function §#"!§() : void
      {
         § !S§(§7!+§,§^"S§,null,0);
      }
      
      public static function §7h§(param1:String, param2:int = 0) : void
      {
         if(!§5#`§)
         {
            § !S§(§7!+§,§6$0§,param1,param2,true);
         }
      }
      
      public static function §4!X§(param1:String, param2:int = 0) : void
      {
         if(!§5#`§)
         {
            § !S§(§7!+§,§=!]§,param1,param2,true);
         }
      }
      
      public static function §?"L§(param1:String) : void
      {
         § !S§(§!W§,§0#h§,param1,0);
      }
      
      public static function §9$9§() : void
      {
         § !S§(§!W§,§0B§,null,0);
      }
      
      public static function §]Q§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         § !S§(§!W§,§="2§,param1,0);
      }
      
      public static function §'"4§(param1:String) : void
      {
         § !S§(§!W§,§8"U§,param1,0);
      }
      
      public static function §`$,§(param1:int) : void
      {
         § !S§(§]t§,§#"4§,param1.toString(),param1);
      }
      
      public static function §6"R§(param1:int) : void
      {
         § !S§(§3#P§,§#"4§,param1.toString(),param1);
      }
      
      public static function §%#L§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
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
            § !S§(§3#P§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            § !S§(§3#P§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            § !S§(§3#P§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            § !S§(§3#P§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function §0#z§() : void
      {
         § !S§(§^#8§,§3$5§,null,0);
      }
      
      public static function §@#+§() : void
      {
         § !S§(§^#8§,§]#W§,null,0);
      }
      
      public static function §%"B§(param1:String, param2:int) : void
      {
         § !S§(§&#Z§,param1,"",param2);
      }
      
      public static function §2#w§(param1:int, param2:Boolean = false) : void
      {
         § !S§(§>x§,§""f§,"",param1);
         § !S§(§>x§,!!param2 ? §0!-§ : §'!<§,"",param1);
      }
      
      public static function §7#i§(param1:String) : void
      {
         § !S§(§0"-§,§'i§,param1,0);
      }
      
      public static function §+"H§(param1:String, param2:int) : void
      {
         if(!§=!R§)
         {
            return;
         }
         § !S§(§0"-§,§8h§,param1,param2);
      }
      
      public static function §?T§(param1:String) : void
      {
         § !S§(§0"-§,§!$ §,param1,0);
      }
      
      public static function §,!a§(param1:String) : void
      {
         § !S§(§<C§,§?#y§,param1,0);
      }
      
      public static function §0#'§(param1:String) : void
      {
         if(!§=!R§)
         {
            return;
         }
         § !S§(§!#X§,param1,"",0,true);
      }
      
      public static function trackPageView(param1:§ 1§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §2!,§)
         {
            _loc4_ = "_/" + param1.§9"v§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§7">§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            §6X§.§3U§(§8!f§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled && §%!4§)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §5!D§;
            _loc9_["state"] = §@!K§;
            _loc9_["country"] = §=H§;
            §6X§.§3U§(§;#E§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled && §%!4§)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §5!D§;
            _loc5_["state"] = §@!K§;
            _loc5_["country"] = §=H§;
            §6X§.§3U§(§0#g§,_loc5_,param4);
         }
      }
      
      public static function §9"6§(param1:String) : void
      {
         § !S§(§5"A§,§?"]§,param1,0);
      }
      
      public static function §<$-§(param1:String) : void
      {
         § !S§(§5"A§,§""M§,param1,0);
      }
      
      public static function §7#,§(param1:String) : void
      {
         § !S§(§5"A§,§?#F§,param1,0);
      }
      
      public static function §[#2§(param1:String) : void
      {
         § !S§(§5"A§,§@#o§,param1,0);
      }
      
      public static function §0!7§(param1:String) : void
      {
         § !S§(§5"A§,§,w§,param1,0);
      }
      
      private static function § !S§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §2$0§;
            if(param5)
            {
               _loc6_ = §#!K§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §#!K§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return §2$0§;
      }
      
      private static function §!!f§(param1:Array) : String
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
      
      private static function §7"0§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
      
      public static function §0!K§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
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
            §6X§.§3U§(§3!V§,_loc8_);
         }
      }
      
      public static function §@Z§(param1:String, param2:String) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["level"] = param1;
         _loc3_["from"] = param2;
         §6X§.§3U§(§[C§,_loc3_);
      }
   }
}
