package §&!_§
{
   import §]C§.§ !+§;
   import flash.utils.getTimer;
   
   public class §0I§ extends §"@§
   {
      
      private static const §2"z§:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const §`#p§:String = "POWERUP-USED";
      
      private static const §`h§:String = "LEVEL-POWERUP-USED";
      
      private static const §>#X§:String = "POWERUP-" + §0!N§;
      
      private static const §8A§:String = §0!N§ + "-POWERUP";
      
      private static const §4$3§:String = "FRAMERATE";
      
      private static const §2",§:String = "EXTERNAL-PAUSE";
      
      private static const §7!i§:String = "GIFT";
      
      private static const §"!Q§:String = "SHOP";
      
      private static const §+w§:String = "BRAG";
      
      private static const §3#l§:String = "INVITE";
      
      private static const §<!W§:String = "AVATAR";
      
      private static const §'"&§:String = "FACEBOOK_SHARING";
      
      private static const §^$?§:String = "BRANDED-SHOP";
      
      private static const §@!<§:String = "POWERUP-GAINED";
      
      private static const §,#2§:String = "POWERUP-STATISTICS";
      
      private static const §9"4§:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const §<"4§:String = "POWERUP-SUGGESTION";
      
      private static const §@"I§:String = "WINGMAN-USAGE";
      
      private static const §^!S§:String = "WARNING";
      
      private static const §4$<§:String = "USER-STATISTICS";
      
      private static const §"!w§:String = "TOURNAMENT-STATISTICS";
      
      private static const §<#e§:String = "STREAMING";
      
      private static const §]#'§:String = "EXTERNAL-URL";
      
      private static const §@!i§:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const §3d§:String = "TOURNAMENT";
      
      private static const §0"U§:String = "ERROR";
      
      private static const §%#3§:String = "PAUSED";
      
      private static const §2#c§:String = "RESUMED";
      
      private static const §#"k§:String = "GIFT-CLAIMED";
      
      private static const §'">§:String = "GIFT-CLAIMED-ONLY";
      
      private static const §2#'§:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const §?v§:String = "GIFT-SENT";
      
      private static const §1"X§:String = "SIDEBAR";
      
      private static const §;"9§:String = "POPUP";
      
      private static const §4y§:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const §%!H§:String = "OPENED";
      
      private static const § 9§:String = "PRODUCT-SELECTED";
      
      private static const §3"g§:String = "PRODUCT-BUY-SELECTED";
      
      private static const §,!I§:String = "PRODUCT-BUY-COMPLETED";
      
      private static const §,";§:String = "PRODUCT-EARN-SELECTED";
      
      private static const §?"D§:String = "PRODUCT-EARN-COMPLETED";
      
      private static const §9!U§:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const §5#W§:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const §=!p§:String = "BRAG-SHOWN";
      
      private static const §`"b§:String = "BRAG-CLICKED";
      
      private static const §=#a§:String = "SHARE";
      
      private static const §['§:String = "SKIP";
      
      private static const §9!$§:String = "FRIEND-CLICKED";
      
      private static const §&#$§:String = "GENERIC-CLICKED";
      
      private static const §5"2§:String = "OPENED";
      
      private static const §!"a§:String = "SET";
      
      private static const § do§:String = "PRODUCT-SET";
      
      private static const §=!_§:String = §3"g§;
      
      private static const §3#V§:String = §,!I§;
      
      private static const §8#V§:String = "SHARE-CLICKED";
      
      private static const §-!W§:String = "SHARE-COMPLETED";
      
      private static const §2"b§:String = "TICKET-COLLECTED";
      
      private static const §[Q§:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const §8#D§:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const §6#N§:String = "DOWNLOAD-FAILED";
      
      private static const §'$'§:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const §?#W§:String = "INVALID-LEVEL";
      
      private static const §3"X§:String = "FLASH-VAR-MISSING";
      
      private static const §>"$§:String = "FRIEND-COUNT";
      
      private static const §2o§:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const §+"5§:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const §]"`§:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const §-"e§:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const §^#c§:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const §>$?§:String = "START";
      
      private static const §6!E§:String = "COMPLETE";
      
      private static const §'"f§:String = "ERROR";
      
      private static const §[M§:String = "OPEN";
      
      private static const § #@§:String = "FREE-SAMPLES";
      
      private static const §1"t§:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§<S§,§0!N§,§!$B§,§9!s§,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,§4$B§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§`#p§,§`h§,§>#X§,§8A§,§4$3§,§2",§,§7!i§,§"!Q§,§+w§,§3#l§,§<!W§,§@!<§,§,#2§,§9"4§,§"!w§,§<"4§,§@"I§,§0"U§,§<#e§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const §&#Q§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §[R§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §!#r§:String = "DAILYREWARD";
      
      public static const §]B§:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const §@![§:String = "TOURNAMENTPRIZE";
      
      public static const §'j§:String = "GIFT";
      
      public static const §;"O§:String = "SHOP";
      
      public static const §?#P§:String = "trackPageView";
      
      public static const §5"U§:String = "trackTransaction";
      
      public static const § y§:String = "trackTransactionItems";
      
      public static const §5"`§:String = "MAIN_MENU";
      
      public static const §9#§:String = "CHAPTERS";
      
      public static const §<!N§:String = "LEVEL_PACK";
      
      public static const §!#O§:String = "SHOP";
      
      public static const §2!n§:String = "LEVEL";
      
      public static const §^g§:String = "FRONTPAGE";
      
      public static const §%#7§:String = "COINS";
      
      public static const §5"S§:String = "TABBED-SHOP";
      
      public static const §,! §:String = "BRANDED";
      
      public static const §-9§:String = "AVATAR";
      
      public static const §'#u§:String = "THANK-YOU";
      
      public static const §`#7§:String = "QUICKBUY-SHOP";
      
      public static const §##o§:String = "COMPLETED";
      
      public static const §1!9§:String = "FAILED";
      
      public static const §""6§:String = "GAME";
      
      public static const §+"T§:String = "BIRD_SHOT";
      
      public static const §>"a§:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var § a§:Array = [];
      
      private static var §6#h§:int = 0;
      
      private static var § "9§:int = 0;
      
      private static var §<#X§:int = 0;
      
      private static var §[$D§:int = 0;
      
      private static const §5![§:String = "FINLAND";
      
      private static const §;"?§:String = "UUSIMAA";
      
      private static const §<v§:String = "HELSINKI";
      
      public static var §2"J§:Boolean = false;
      
      public static var §["V§:String = "BUY";
      
      public static var §,"a§:String = "POWERUP-SUGGESTION";
      
      private static var §;#?§:String = "BUY";
      
      private static var §2#I§:String = "CLOSE";
      
      private static var §%!v§:String = "USE";
      
      private static var §9"<§:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var §0$<§:Boolean = false;
      
      public static var §8#P§:Boolean = true;
       
      
      public function §0I§()
      {
         super();
      }
      
      public static function §%!B§() : void
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
      
      public static function §]#]§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         if(!§8#P§)
         {
            return;
         }
         §4!c§(§"@§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §4!c§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §1#=§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §"@§.trackSampledEvent(_loc4_,§!m§,param1,param2,param3);
      }
      
      public static function §]F§(param1:String, param2:String) : void
      {
         var _loc3_:int = §4#u§();
         §@!5§(§`#p§,param1,param2,0);
         §@!5§(§`h§,param2,param1,0);
      }
      
      public static function §3#A§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            §@!5§(§@!<§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §]i§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §5n§(param1))
            {
               §@!5§(§>#X§,_loc4_,param2,param3);
               §@!5§(§8A§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §^!L§(param1:String, param2:String, param3:int) : void
      {
         §@!5§(§9"4§,param1,param2,param3);
      }
      
      public static function §?#k§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§ a§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = § a§.length == 0;
         § a§.push(param2);
         if(param3)
         {
            _loc6_ = §"@§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0I§.§&#Q§;
            }
         }
         else
         {
            _loc6_ = §"@§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §0I§.§[R§;
            }
         }
         if(_loc5_)
         {
            §4!c§(_loc6_,param1.toString(),param1);
         }
         §@!5§(§4$3§,_loc6_,param2,param1);
      }
      
      public static function §+"L§(param1:String, param2:int) : void
      {
         ++§6#h§;
         §@!5§(§7!i§,§#"k§,param1,param2);
      }
      
      public static function §0#I§() : void
      {
         §@!5§(§7!i§,§?v§,§1"X§,0);
      }
      
      public static function §`!k§() : void
      {
         §@!5§(§7!i§,§?v§,§;"9§,0);
      }
      
      public static function §1$-§() : void
      {
         §@!5§(§7!i§,§'">§,null,0);
      }
      
      public static function §+!N§(param1:int = 0) : void
      {
         §@!5§(§7!i§,§2#'§,null,param1);
      }
      
      public static function §3!M§() : void
      {
         §@!5§(§7!i§,§4y§,null,0);
      }
      
      public static function §?$B§(param1:String) : void
      {
         if(!§2"z§)
         {
            §@!5§(§^$?§,§%!H§,param1,0);
         }
      }
      
      public static function §0o§() : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§%!H§,null,0);
         }
      }
      
      public static function §?#i§(param1:String) : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§ 9§,param1,0);
         }
      }
      
      public static function §<#0§(param1:String, param2:int) : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§3"g§,param1,param2,true);
         }
      }
      
      public static function §6#?§(param1:String, param2:int) : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§,!I§,param1,param2,true);
         }
      }
      
      public static function §,#r§(param1:String) : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§,";§,param1,0,true);
         }
      }
      
      public static function §3#i§(param1:String, param2:int) : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§?"D§,param1,param2,true);
         }
      }
      
      public static function §?!A§(param1:String) : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§9!U§,param1,0,true);
         }
      }
      
      public static function §!"j§(param1:String, param2:int) : void
      {
         if(!§2"z§)
         {
            §@!5§(§"!Q§,§5#W§,param1,param2,true);
         }
      }
      
      public static function §<#d§(param1:String) : void
      {
         §@!5§(§+w§,§=!p§,param1,0);
      }
      
      public static function §^#2§(param1:String) : void
      {
         §@!5§(§+w§,§`"b§,param1,0);
      }
      
      public static function §,"o§(param1:String) : void
      {
         §@!5§(§'"&§,param1,§=#a§,0);
      }
      
      public static function §4!p§(param1:String) : void
      {
         §@!5§(§'"&§,param1,§['§,0);
      }
      
      public static function §2"#§() : void
      {
         §@!5§(§3#l§,§9!$§,null,0);
      }
      
      public static function §^$D§(param1:int) : void
      {
         §@!5§(§4$<§,§2"b§,null,param1);
      }
      
      public static function §8!]§() : void
      {
         §@!5§(§4$<§,§[Q§,null,0);
      }
      
      public static function §["z§() : void
      {
         §@!5§(§4$<§,§8#D§,null,0);
      }
      
      public static function §5!6§(param1:String, param2:String) : void
      {
         §@!5§(§@"I§,param1,param2,0);
      }
      
      public static function §3"E§() : void
      {
         §@!5§(§3#l§,§&#$§,null,0);
      }
      
      public static function §5#s§() : void
      {
         §@!5§(§<!W§,§5"2§,null,0);
      }
      
      public static function §"#E§() : void
      {
         §@!5§(§<!W§,§!"a§,null,0);
      }
      
      public static function §""k§(param1:String) : void
      {
         §@!5§(§<!W§,§ do§,param1,0);
      }
      
      public static function §7<§() : void
      {
         §@!5§(§<!W§,§8#V§,null,0);
      }
      
      public static function §="a§() : void
      {
         §@!5§(§<!W§,§-!W§,null,0);
      }
      
      public static function §>f§(param1:String, param2:int = 0) : void
      {
         if(!§2"z§)
         {
            §@!5§(§<!W§,§=!_§,param1,param2,true);
         }
      }
      
      public static function §1q§(param1:String, param2:int = 0) : void
      {
         if(!§2"z§)
         {
            §@!5§(§<!W§,§3#V§,param1,param2,true);
         }
      }
      
      public static function §?j§(param1:String) : void
      {
         §@!5§(§^!S§,§6#N§,param1,0);
      }
      
      public static function §["!§() : void
      {
         §@!5§(§^!S§,§'$'§,null,0);
      }
      
      public static function §%"N§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §@!5§(§^!S§,§?#W§,param1,0);
      }
      
      public static function §5b§(param1:String) : void
      {
         §@!5§(§^!S§,§3"X§,param1,0);
      }
      
      public static function §&"x§(param1:int) : void
      {
         §@!5§(§4$<§,§>"$§,param1.toString(),param1);
      }
      
      public static function §6!R§(param1:int) : void
      {
         §@!5§(§"!w§,§>"$§,param1.toString(),param1);
      }
      
      public static function §2"$§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
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
            §@!5§(§"!w§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            §@!5§(§"!w§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            §@!5§(§"!w§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            §@!5§(§"!w§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function §+"]§() : void
      {
         §@!5§(§3d§,§2o§,null,0);
      }
      
      public static function §"!b§() : void
      {
         §@!5§(§3d§,§+"5§,null,0);
      }
      
      public static function §,"m§(param1:String, param2:int) : void
      {
         §@!5§(§,#2§,param1,"",param2);
      }
      
      public static function §%L§(param1:int, param2:Boolean = false) : void
      {
         §@!5§(§@!i§,§]"`§,"",param1);
         §@!5§(§@!i§,!!param2 ? §-"e§ : §^#c§,"",param1);
      }
      
      public static function §&#@§(param1:String) : void
      {
         §@!5§(§<#e§,§>$?§,param1,0);
      }
      
      public static function §[b§(param1:String, param2:int) : void
      {
         if(!§8#P§)
         {
            return;
         }
         §@!5§(§<#e§,§'"f§,param1,param2);
      }
      
      public static function §>"0§(param1:String) : void
      {
         §@!5§(§<#e§,§6!E§,param1,0);
      }
      
      public static function §0D§(param1:String) : void
      {
         §@!5§(§]#'§,§[M§,param1,0);
      }
      
      public static function §@!q§(param1:String) : void
      {
         if(!§8#P§)
         {
            return;
         }
         §@!5§(§0"U§,param1,"",0,true);
      }
      
      public static function trackPageView(param1:§,!n§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §2"J§)
         {
            _loc4_ = "_/" + param1.§;!=§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§#"!§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            § !+§.§>$%§(§?#P§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled && §0$<§)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §<v§;
            _loc9_["state"] = §;"?§;
            _loc9_["country"] = §5![§;
            § !+§.§>$%§(§5"U§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled && §0$<§)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §<v§;
            _loc5_["state"] = §;"?§;
            _loc5_["country"] = §5![§;
            § !+§.§>$%§(§ y§,_loc5_,param4);
         }
      }
      
      public static function §1"F§(param1:String) : void
      {
         §@!5§(§<"4§,§1"t§,param1,0);
      }
      
      public static function §;W§(param1:String) : void
      {
         §@!5§(§<"4§,§;#?§,param1,0);
      }
      
      public static function §>$8§(param1:String) : void
      {
         §@!5§(§<"4§,§9"<§,param1,0);
      }
      
      public static function §1#&§(param1:String) : void
      {
         §@!5§(§<"4§,§%!v§,param1,0);
      }
      
      public static function §'!6§(param1:String) : void
      {
         §@!5§(§<"4§,§2#I§,param1,0);
      }
      
      private static function §@!5§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §8+§;
            if(param5)
            {
               _loc6_ = §1#=§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §1#=§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return §8+§;
      }
      
      private static function §5n§(param1:Array) : String
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
      
      private static function §4#u§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
      
      public static function §0i§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
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
            § !+§.§>$%§(§+"T§,_loc8_);
         }
      }
      
      public static function §3#9§(param1:String, param2:String) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["level"] = param1;
         _loc3_["from"] = param2;
         § !+§.§>$%§(§>"a§,_loc3_);
      }
   }
}
