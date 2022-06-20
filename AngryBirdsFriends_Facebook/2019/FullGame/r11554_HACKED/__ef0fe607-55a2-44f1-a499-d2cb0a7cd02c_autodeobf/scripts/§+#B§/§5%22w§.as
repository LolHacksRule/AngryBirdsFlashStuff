package §+#B§
{
   import §7#j§.§@"F§;
   import flash.utils.getTimer;
   
   public class §5"w§ extends §4$7§
   {
      
      private static const §`M§:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const §#$5§:String = "POWERUP-USED";
      
      private static const §?$$§:String = "LEVEL-POWERUP-USED";
      
      private static const §&#1§:String = "POWERUP-" + §"#0§;
      
      private static const §@"]§:String = §"#0§ + "-POWERUP";
      
      private static const §5n§:String = "FRAMERATE";
      
      private static const §@"=§:String = "EXTERNAL-PAUSE";
      
      private static const §9f§:String = "GIFT";
      
      private static const §`!H§:String = "SHOP";
      
      private static const §1"§:String = "BRAG";
      
      private static const §&"3§:String = "INVITE";
      
      private static const §&"D§:String = "AVATAR";
      
      private static const §!$2§:String = "FACEBOOK_SHARING";
      
      private static const §@=§:String = "BRANDED-SHOP";
      
      private static const §`A§:String = "POWERUP-GAINED";
      
      private static const § #6§:String = "POWERUP-STATISTICS";
      
      private static const §@!?§:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const §,'§:String = "POWERUP-SUGGESTION";
      
      private static const §>2§:String = "WINGMAN-USAGE";
      
      private static const §#$"§:String = "WARNING";
      
      private static const § #1§:String = "USER-STATISTICS";
      
      private static const §8D§:String = "TOURNAMENT-STATISTICS";
      
      private static const §%!P§:String = "STREAMING";
      
      private static const §&!d§:String = "EXTERNAL-URL";
      
      private static const §!9§:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const §5!Q§:String = "TOURNAMENT";
      
      private static const §'"z§:String = "ERROR";
      
      private static const §]"3§:String = "PAUSED";
      
      private static const §-">§:String = "RESUMED";
      
      private static const §4"2§:String = "GIFT-CLAIMED";
      
      private static const §&"r§:String = "GIFT-CLAIMED-ONLY";
      
      private static const §5!Y§:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const §8v§:String = "GIFT-SENT";
      
      private static const §2!N§:String = "SIDEBAR";
      
      private static const §<R§:String = "POPUP";
      
      private static const §5#A§:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const §<!P§:String = "OPENED";
      
      private static const §'!$§:String = "PRODUCT-SELECTED";
      
      private static const § #B§:String = "PRODUCT-BUY-SELECTED";
      
      private static const §1!G§:String = "PRODUCT-BUY-COMPLETED";
      
      private static const §,""§:String = "PRODUCT-EARN-SELECTED";
      
      private static const §@#n§:String = "PRODUCT-EARN-COMPLETED";
      
      private static const § "L§:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const §,"Y§:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const §;9§:String = "BRAG-SHOWN";
      
      private static const §?"'§:String = "BRAG-CLICKED";
      
      private static const §`!B§:String = "SHARE";
      
      private static const §;$@§:String = "SKIP";
      
      private static const §-#<§:String = "FRIEND-CLICKED";
      
      private static const §[]§:String = "GENERIC-CLICKED";
      
      private static const §3u§:String = "OPENED";
      
      private static const §3#_§:String = "SET";
      
      private static const §3"S§:String = "PRODUCT-SET";
      
      private static const §2#c§:String = § #B§;
      
      private static const §!=§:String = §1!G§;
      
      private static const §;#@§:String = "SHARE-CLICKED";
      
      private static const §]F§:String = "SHARE-COMPLETED";
      
      private static const §!f§:String = "TICKET-COLLECTED";
      
      private static const §=!3§:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const §^"R§:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const §9"I§:String = "DOWNLOAD-FAILED";
      
      private static const §6T§:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const §>"F§:String = "INVALID-LEVEL";
      
      private static const §2";§:String = "FLASH-VAR-MISSING";
      
      private static const §0!b§:String = "FRIEND-COUNT";
      
      private static const §0#O§:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const §+!W§:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const §9$2§:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const §8!%§:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const §+"A§:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const §&>§:String = "START";
      
      private static const §'!Y§:String = "COMPLETE";
      
      private static const §>!F§:String = "ERROR";
      
      private static const §<!]§:String = "OPEN";
      
      private static const §3Q§:String = "FREE-SAMPLES";
      
      private static const §9"t§:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§<"T§,§"#0§,§!#+§,§%#i§,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,§'!^§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§#$5§,§?$$§,§&#1§,§@"]§,§5n§,§@"=§,§9f§,§`!H§,§1"§,§&"3§,§&"D§,§`A§,§ #6§,§@!?§,§8D§,§,'§,§>2§,§'"z§,§%!P§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const §8T§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §##Q§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §`#g§:String = "DAILYREWARD";
      
      public static const §4!^§:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const §[#d§:String = "TOURNAMENTPRIZE";
      
      public static const §0"z§:String = "GIFT";
      
      public static const §`!l§:String = "SHOP";
      
      public static const §8"k§:String = "trackPageView";
      
      public static const §+!-§:String = "trackTransaction";
      
      public static const §`]§:String = "trackTransactionItems";
      
      public static const §]#@§:String = "MAIN_MENU";
      
      public static const §0!y§:String = "CHAPTERS";
      
      public static const §9#E§:String = "LEVEL_PACK";
      
      public static const §3#R§:String = "SHOP";
      
      public static const §1#&§:String = "LEVEL";
      
      public static const §-#b§:String = "FRONTPAGE";
      
      public static const §8#]§:String = "COINS";
      
      public static const §=#u§:String = "TABBED-SHOP";
      
      public static const §7#X§:String = "BRANDED";
      
      public static const §0q§:String = "AVATAR";
      
      public static const §9`§:String = "THANK-YOU";
      
      public static const § 1§:String = "QUICKBUY-SHOP";
      
      public static const §"$?§:String = "COMPLETED";
      
      public static const §"5§:String = "FAILED";
      
      public static const §&!B§:String = "GAME";
      
      public static const §]!R§:String = "BIRD_SHOT";
      
      public static const §`K§:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §;$'§:Array = [];
      
      private static var §#"=§:int = 0;
      
      private static var §1!P§:int = 0;
      
      private static var §5!"§:int = 0;
      
      private static var §1#g§:int = 0;
      
      private static const §1$5§:String = "FINLAND";
      
      private static const §=!§:String = "UUSIMAA";
      
      private static const §@6§:String = "HELSINKI";
      
      public static var §8!R§:Boolean = false;
      
      public static var §2!4§:String = "BUY";
      
      public static var §;#j§:String = "POWERUP-SUGGESTION";
      
      private static var §-#S§:String = "BUY";
      
      private static var §""x§:String = "CLOSE";
      
      private static var §!#o§:String = "USE";
      
      private static var §;#T§:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var §!"w§:Boolean = false;
      
      public static var §7=§:Boolean = true;
       
      
      public function §5"w§()
      {
         super();
      }
      
      public static function §'!k§() : void
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
      
      public static function §0h§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         if(!§7=§)
         {
            return;
         }
         §-!I§(§4$7§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §-!I§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §5$,§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §4$7§.trackSampledEvent(_loc4_,§^"B§,param1,param2,param3);
      }
      
      public static function §6!h§(param1:String, param2:String) : void
      {
         int(§2$-§());
         §5!_§(§#$5§,param1,param2,0);
         §5!_§(§?$$§,param2,param1,0);
      }
      
      public static function §1"R§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            §5!_§(§`A§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §"!0§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §6$0§(param1))
            {
               §5!_§(§&#1§,_loc4_,param2,param3);
               §5!_§(§@"]§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §%!%§(param1:String, param2:String, param3:int) : void
      {
         §5!_§(§@!?§,param1,param2,param3);
      }
      
      public static function §+![§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§;$'§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §;$'§.length == 0;
         §;$'§.push(param2);
         if(param3)
         {
            _loc6_ = §4$7§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §5"w§.§8T§;
            }
         }
         else
         {
            _loc6_ = §4$7§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §5"w§.§##Q§;
            }
         }
         if(_loc5_)
         {
            §-!I§(_loc6_,param1.toString(),param1);
         }
         §5!_§(§5n§,_loc6_,param2,param1);
      }
      
      public static function §7#C§(param1:String, param2:int) : void
      {
         ++§#"=§;
         §5!_§(§9f§,§4"2§,param1,param2);
      }
      
      public static function §;#[§() : void
      {
         §5!_§(§9f§,§8v§,§2!N§,0);
      }
      
      public static function §##[§() : void
      {
         §5!_§(§9f§,§8v§,§<R§,0);
      }
      
      public static function §7!l§() : void
      {
         §5!_§(§9f§,§&"r§,null,0);
      }
      
      public static function §+#C§(param1:int = 0) : void
      {
         §5!_§(§9f§,§5!Y§,null,param1);
      }
      
      public static function §=%§() : void
      {
         §5!_§(§9f§,§5#A§,null,0);
      }
      
      public static function §#"W§(param1:String) : void
      {
         if(!§`M§)
         {
            §5!_§(§@=§,§<!P§,param1,0);
         }
      }
      
      public static function §5!!§() : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§<!P§,null,0);
         }
      }
      
      public static function §@!o§(param1:String) : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§'!$§,param1,0);
         }
      }
      
      public static function §?# §(param1:String, param2:int) : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§ #B§,param1,param2,true);
         }
      }
      
      public static function §7&§(param1:String, param2:int) : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§1!G§,param1,param2,true);
         }
      }
      
      public static function §<!L§(param1:String) : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§,""§,param1,0,true);
         }
      }
      
      public static function §;u§(param1:String, param2:int) : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§@#n§,param1,param2,true);
         }
      }
      
      public static function §>![§(param1:String) : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§ "L§,param1,0,true);
         }
      }
      
      public static function § #G§(param1:String, param2:int) : void
      {
         if(!§`M§)
         {
            §5!_§(§`!H§,§,"Y§,param1,param2,true);
         }
      }
      
      public static function §8$"§(param1:String) : void
      {
         §5!_§(§1"§,§;9§,param1,0);
      }
      
      public static function §%O§(param1:String) : void
      {
         §5!_§(§1"§,§?"'§,param1,0);
      }
      
      public static function §,i§(param1:String) : void
      {
         §5!_§(§!$2§,param1,§`!B§,0);
      }
      
      public static function §;#5§(param1:String) : void
      {
         §5!_§(§!$2§,param1,§;$@§,0);
      }
      
      public static function §!##§() : void
      {
         §5!_§(§&"3§,§-#<§,null,0);
      }
      
      public static function §""Q§(param1:int) : void
      {
         §5!_§(§ #1§,§!f§,null,param1);
      }
      
      public static function §0!u§() : void
      {
         §5!_§(§ #1§,§=!3§,null,0);
      }
      
      public static function §="Z§() : void
      {
         §5!_§(§ #1§,§^"R§,null,0);
      }
      
      public static function §8!_§(param1:String, param2:String) : void
      {
         §5!_§(§>2§,param1,param2,0);
      }
      
      public static function §>k§() : void
      {
         §5!_§(§&"3§,§[]§,null,0);
      }
      
      public static function §^h§() : void
      {
         §5!_§(§&"D§,§3u§,null,0);
      }
      
      public static function §"-§() : void
      {
         §5!_§(§&"D§,§3#_§,null,0);
      }
      
      public static function §!#-§(param1:String) : void
      {
         §5!_§(§&"D§,§3"S§,param1,0);
      }
      
      public static function §-"A§() : void
      {
         §5!_§(§&"D§,§;#@§,null,0);
      }
      
      public static function §=#K§() : void
      {
         §5!_§(§&"D§,§]F§,null,0);
      }
      
      public static function §8>§(param1:String, param2:int = 0) : void
      {
         if(!§`M§)
         {
            §5!_§(§&"D§,§2#c§,param1,param2,true);
         }
      }
      
      public static function §8"Q§(param1:String, param2:int = 0) : void
      {
         if(!§`M§)
         {
            §5!_§(§&"D§,§!=§,param1,param2,true);
         }
      }
      
      public static function §0""§(param1:String) : void
      {
         §5!_§(§#$"§,§9"I§,param1,0);
      }
      
      public static function §#"u§() : void
      {
         §5!_§(§#$"§,§6T§,null,0);
      }
      
      public static function §9#U§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §5!_§(§#$"§,§>"F§,param1,0);
      }
      
      public static function §%I§(param1:String) : void
      {
         §5!_§(§#$"§,§2";§,param1,0);
      }
      
      public static function §#"4§(param1:int) : void
      {
         §5!_§(§ #1§,§0!b§,param1.toString(),param1);
      }
      
      public static function §5H§(param1:int) : void
      {
         §5!_§(§8D§,§0!b§,param1.toString(),param1);
      }
      
      public static function §5#Z§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
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
            §5!_§(§8D§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            §5!_§(§8D§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            §5!_§(§8D§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            §5!_§(§8D§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function § "T§() : void
      {
         §5!_§(§5!Q§,§0#O§,null,0);
      }
      
      public static function §5#I§() : void
      {
         §5!_§(§5!Q§,§+!W§,null,0);
      }
      
      public static function § !]§(param1:String, param2:int) : void
      {
         §5!_§(§ #6§,param1,"",param2);
      }
      
      public static function §#"c§(param1:int, param2:Boolean = false) : void
      {
         §5!_§(§!9§,§9$2§,"",param1);
         §5!_§(§!9§,!!param2 ? §8!%§ : §+"A§,"",param1);
      }
      
      public static function §9#j§(param1:String) : void
      {
         §5!_§(§%!P§,§&>§,param1,0);
      }
      
      public static function §5$#§(param1:String, param2:int) : void
      {
         if(!§7=§)
         {
            return;
         }
         §5!_§(§%!P§,§>!F§,param1,param2);
      }
      
      public static function §9"c§(param1:String) : void
      {
         §5!_§(§%!P§,§'!Y§,param1,0);
      }
      
      public static function §"4§(param1:String) : void
      {
         §5!_§(§&!d§,§<!]§,param1,0);
      }
      
      public static function §9!Q§(param1:String) : void
      {
         if(!§7=§)
         {
            return;
         }
         §5!_§(§'"z§,param1,"",0,true);
      }
      
      public static function trackPageView(param1:§0"+§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §8!R§)
         {
            _loc4_ = "_/" + param1.§<"r§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§5!R§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            §@"F§.§^$#§(§8"k§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled && §!"w§)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §@6§;
            _loc9_["state"] = §=!§;
            _loc9_["country"] = §1$5§;
            §@"F§.§^$#§(§+!-§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled && §!"w§)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §@6§;
            _loc5_["state"] = §=!§;
            _loc5_["country"] = §1$5§;
            §@"F§.§^$#§(§`]§,_loc5_,param4);
         }
      }
      
      public static function §0#w§(param1:String) : void
      {
         §5!_§(§,'§,§9"t§,param1,0);
      }
      
      public static function §=$<§(param1:String) : void
      {
         §5!_§(§,'§,§-#S§,param1,0);
      }
      
      public static function §8!=§(param1:String) : void
      {
         §5!_§(§,'§,§;#T§,param1,0);
      }
      
      public static function §7$&§(param1:String) : void
      {
         §5!_§(§,'§,§!#o§,param1,0);
      }
      
      public static function §3#'§(param1:String) : void
      {
         §5!_§(§,'§,§""x§,param1,0);
      }
      
      private static function §5!_§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §+$&§;
            if(param5)
            {
               _loc6_ = §5$,§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §5$,§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return §+$&§;
      }
      
      private static function §6$0§(param1:Array) : String
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
      
      private static function §2$-§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
      
      public static function §2"1§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
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
            §@"F§.§^$#§(§]!R§,_loc8_);
         }
      }
      
      public static function §<!G§(param1:String, param2:String) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["level"] = param1;
         _loc3_["from"] = param2;
         §@"F§.§^$#§(§`K§,_loc3_);
      }
   }
}
