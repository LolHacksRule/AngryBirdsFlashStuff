package §6V§
{
   import §6!0§.§ "8§;
   import flash.utils.getTimer;
   
   public class §`"5§ extends §@!o§
   {
      
      private static const §]!b§:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const §>#X§:String = "POWERUP-USED";
      
      private static const §%#z§:String = "LEVEL-POWERUP-USED";
      
      private static const §`"#§:String = "POWERUP-" + §'l§;
      
      private static const §!"g§:String = §'l§ + "-POWERUP";
      
      private static const §`!1§:String = "FRAMERATE";
      
      private static const §!i§:String = "EXTERNAL-PAUSE";
      
      private static const §00§:String = "GIFT";
      
      private static const §<!%§:String = "SHOP";
      
      private static const §<D§:String = "BRAG";
      
      private static const § 6§:String = "INVITE";
      
      private static const §<">§:String = "AVATAR";
      
      private static const §2@§:String = "FACEBOOK_SHARING";
      
      private static const §1#I§:String = "BRANDED-SHOP";
      
      private static const §,"H§:String = "POWERUP-GAINED";
      
      private static const §]$5§:String = "POWERUP-STATISTICS";
      
      private static const §%b§:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const §<#5§:String = "POWERUP-SUGGESTION";
      
      private static const §=2§:String = "WINGMAN-USAGE";
      
      private static const §"P§:String = "WARNING";
      
      private static const §>$ §:String = "USER-STATISTICS";
      
      private static const §1m§:String = "TOURNAMENT-STATISTICS";
      
      private static const §[U§:String = "STREAMING";
      
      private static const §?!4§:String = "EXTERNAL-URL";
      
      private static const §>#y§:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const §%#q§:String = "TOURNAMENT";
      
      private static const §0#P§:String = "ERROR";
      
      private static const § "y§:String = "PAUSED";
      
      private static const §+V§:String = "RESUMED";
      
      private static const §+"M§:String = "GIFT-CLAIMED";
      
      private static const §0#%§:String = "GIFT-CLAIMED-ONLY";
      
      private static const §%"N§:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const §5#m§:String = "GIFT-SENT";
      
      private static const §1!,§:String = "SIDEBAR";
      
      private static const § null§:String = "POPUP";
      
      private static const §0!e§:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const §!!G§:String = "OPENED";
      
      private static const §["'§:String = "PRODUCT-SELECTED";
      
      private static const §'#S§:String = "PRODUCT-BUY-SELECTED";
      
      private static const §7b§:String = "PRODUCT-BUY-COMPLETED";
      
      private static const §"!+§:String = "PRODUCT-EARN-SELECTED";
      
      private static const §^!-§:String = "PRODUCT-EARN-COMPLETED";
      
      private static const §0"l§:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const §7"=§:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const §#!s§:String = "BRAG-SHOWN";
      
      private static const §^!=§:String = "BRAG-CLICKED";
      
      private static const §,8§:String = "SHARE";
      
      private static const §^"J§:String = "SKIP";
      
      private static const §-#R§:String = "FRIEND-CLICKED";
      
      private static const §%#H§:String = "GENERIC-CLICKED";
      
      private static const §6G§:String = "OPENED";
      
      private static const § i§:String = "SET";
      
      private static const §]a§:String = "PRODUCT-SET";
      
      private static const §'!b§:String = §'#S§;
      
      private static const §]U§:String = §7b§;
      
      private static const §#!f§:String = "SHARE-CLICKED";
      
      private static const §!#P§:String = "SHARE-COMPLETED";
      
      private static const §5!F§:String = "TICKET-COLLECTED";
      
      private static const §>!i§:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const §,$>§:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const §,!_§:String = "DOWNLOAD-FAILED";
      
      private static const §6"C§:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const §`"D§:String = "INVALID-LEVEL";
      
      private static const §%"-§:String = "FLASH-VAR-MISSING";
      
      private static const §7!=§:String = "FRIEND-COUNT";
      
      private static const §=$5§:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const §^z§:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const §@"6§:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const §4"8§:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const §7#r§:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const §9"&§:String = "START";
      
      private static const §@m§:String = "COMPLETE";
      
      private static const §2"B§:String = "ERROR";
      
      private static const §3"A§:String = "OPEN";
      
      private static const §7!b§:String = "FREE-SAMPLES";
      
      private static const §1#B§:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§8z§,§'l§,§""-§,§<#`§,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,§5!J§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§>#X§,§%#z§,§`"#§,§!"g§,§`!1§,§!i§,§00§,§<!%§,§<D§,§ 6§,§<">§,§,"H§,§]$5§,§%b§,§1m§,§<#5§,§=2§,§0#P§,§[U§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const §,"#§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §-#X§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §"" §:String = "DAILYREWARD";
      
      public static const §5#b§:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const §]"a§:String = "TOURNAMENTPRIZE";
      
      public static const §>!!§:String = "GIFT";
      
      public static const §@"2§:String = "SHOP";
      
      public static const § _§:String = "trackPageView";
      
      public static const §5"O§:String = "trackTransaction";
      
      public static const §^";§:String = "trackTransactionItems";
      
      public static const §9k§:String = "MAIN_MENU";
      
      public static const §9!%§:String = "CHAPTERS";
      
      public static const §;"H§:String = "LEVEL_PACK";
      
      public static const §7"C§:String = "SHOP";
      
      public static const §<^§:String = "LEVEL";
      
      public static const §`!F§:String = "FRONTPAGE";
      
      public static const §8$3§:String = "COINS";
      
      public static const §=!f§:String = "TABBED-SHOP";
      
      public static const §+!M§:String = "BRANDED";
      
      public static const §=#%§:String = "AVATAR";
      
      public static const §9>§:String = "THANK-YOU";
      
      public static const §0"T§:String = "QUICKBUY-SHOP";
      
      public static const §&R§:String = "COMPLETED";
      
      public static const §,$&§:String = "FAILED";
      
      public static const §]"§:String = "GAME";
      
      public static const §-#i§:String = "BIRD_SHOT";
      
      public static const §!#_§:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §+!§:Array = [];
      
      private static var §2[§:int = 0;
      
      private static var §"!@§:int = 0;
      
      private static var §<R§:int = 0;
      
      private static var §&"O§:int = 0;
      
      private static const §[!?§:String = "FINLAND";
      
      private static const §]!C§:String = "UUSIMAA";
      
      private static const §<"A§:String = "HELSINKI";
      
      public static var §?#0§:Boolean = false;
      
      public static var §?3§:String = "BUY";
      
      public static var §@"I§:String = "POWERUP-SUGGESTION";
      
      private static var §'#H§:String = "BUY";
      
      private static var §#$#§:String = "CLOSE";
      
      private static var §=#H§:String = "USE";
      
      private static var §[$0§:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var §0#]§:Boolean = false;
      
      public static var §1#4§:Boolean = true;
       
      
      public function §`"5§()
      {
         super();
      }
      
      public static function §3"U§() : void
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
      
      public static function §2#$§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         if(!§1#4§)
         {
            return;
         }
         §^!r§(§@!o§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §^!r§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §=!n§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §@!o§.trackSampledEvent(_loc4_,§^"$§,param1,param2,param3);
      }
      
      public static function §[!G§(param1:String, param2:String) : void
      {
         var _loc3_:int = §6#`§();
         §;>§(§>#X§,param1,param2,0);
         §;>§(§%#z§,param2,param1,0);
      }
      
      public static function §"#D§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            §;>§(§,"H§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §+#C§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §;$=§(param1))
            {
               §;>§(§`"#§,_loc4_,param2,param3);
               §;>§(§!"g§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §'!;§(param1:String, param2:String, param3:int) : void
      {
         §;>§(§%b§,param1,param2,param3);
      }
      
      public static function §,"B§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§+!§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §+!§.length == 0;
         §+!§.push(param2);
         if(param3)
         {
            _loc6_ = §@!o§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §`"5§.§,"#§;
            }
         }
         else
         {
            _loc6_ = §@!o§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §`"5§.§-#X§;
            }
         }
         if(_loc5_)
         {
            §^!r§(_loc6_,param1.toString(),param1);
         }
         §;>§(§`!1§,_loc6_,param2,param1);
      }
      
      public static function §=!#§(param1:String, param2:int) : void
      {
         ++§2[§;
         §;>§(§00§,§+"M§,param1,param2);
      }
      
      public static function §4!"§() : void
      {
         §;>§(§00§,§5#m§,§1!,§,0);
      }
      
      public static function §>$%§() : void
      {
         §;>§(§00§,§5#m§,§ null§,0);
      }
      
      public static function §4#T§() : void
      {
         §;>§(§00§,§0#%§,null,0);
      }
      
      public static function §-"2§(param1:int = 0) : void
      {
         §;>§(§00§,§%"N§,null,param1);
      }
      
      public static function §%P§() : void
      {
         §;>§(§00§,§0!e§,null,0);
      }
      
      public static function §%N§(param1:String) : void
      {
         if(!§]!b§)
         {
            §;>§(§1#I§,§!!G§,param1,0);
         }
      }
      
      public static function §<#"§() : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§!!G§,null,0);
         }
      }
      
      public static function §-$ §(param1:String) : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§["'§,param1,0);
         }
      }
      
      public static function §=Q§(param1:String, param2:int) : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§'#S§,param1,param2,true);
         }
      }
      
      public static function §0"o§(param1:String, param2:int) : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§7b§,param1,param2,true);
         }
      }
      
      public static function § !s§(param1:String) : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§"!+§,param1,0,true);
         }
      }
      
      public static function §;"Y§(param1:String, param2:int) : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§^!-§,param1,param2,true);
         }
      }
      
      public static function §`"Z§(param1:String) : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§0"l§,param1,0,true);
         }
      }
      
      public static function §!>§(param1:String, param2:int) : void
      {
         if(!§]!b§)
         {
            §;>§(§<!%§,§7"=§,param1,param2,true);
         }
      }
      
      public static function §@!]§(param1:String) : void
      {
         §;>§(§<D§,§#!s§,param1,0);
      }
      
      public static function § $$§(param1:String) : void
      {
         §;>§(§<D§,§^!=§,param1,0);
      }
      
      public static function §"$%§(param1:String) : void
      {
         §;>§(§2@§,param1,§,8§,0);
      }
      
      public static function §!3§(param1:String) : void
      {
         §;>§(§2@§,param1,§^"J§,0);
      }
      
      public static function §catch§() : void
      {
         §;>§(§ 6§,§-#R§,null,0);
      }
      
      public static function §>$,§(param1:int) : void
      {
         §;>§(§>$ §,§5!F§,null,param1);
      }
      
      public static function §!#"§() : void
      {
         §;>§(§>$ §,§>!i§,null,0);
      }
      
      public static function §=#G§() : void
      {
         §;>§(§>$ §,§,$>§,null,0);
      }
      
      public static function §9#b§(param1:String, param2:String) : void
      {
         §;>§(§=2§,param1,param2,0);
      }
      
      public static function §[!w§() : void
      {
         §;>§(§ 6§,§%#H§,null,0);
      }
      
      public static function §##2§() : void
      {
         §;>§(§<">§,§6G§,null,0);
      }
      
      public static function §3§() : void
      {
         §;>§(§<">§,§ i§,null,0);
      }
      
      public static function §0"J§(param1:String) : void
      {
         §;>§(§<">§,§]a§,param1,0);
      }
      
      public static function §6!y§() : void
      {
         §;>§(§<">§,§#!f§,null,0);
      }
      
      public static function §9#v§() : void
      {
         §;>§(§<">§,§!#P§,null,0);
      }
      
      public static function §3"x§(param1:String, param2:int = 0) : void
      {
         if(!§]!b§)
         {
            §;>§(§<">§,§'!b§,param1,param2,true);
         }
      }
      
      public static function §,#p§(param1:String, param2:int = 0) : void
      {
         if(!§]!b§)
         {
            §;>§(§<">§,§]U§,param1,param2,true);
         }
      }
      
      public static function §8s§(param1:String) : void
      {
         §;>§(§"P§,§,!_§,param1,0);
      }
      
      public static function §4!F§() : void
      {
         §;>§(§"P§,§6"C§,null,0);
      }
      
      public static function §&#y§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §;>§(§"P§,§`"D§,param1,0);
      }
      
      public static function §;!^§(param1:String) : void
      {
         §;>§(§"P§,§%"-§,param1,0);
      }
      
      public static function §@"$§(param1:int) : void
      {
         §;>§(§>$ §,§7!=§,param1.toString(),param1);
      }
      
      public static function §%q§(param1:int) : void
      {
         §;>§(§1m§,§7!=§,param1.toString(),param1);
      }
      
      public static function §9$=§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
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
            §;>§(§1m§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            §;>§(§1m§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            §;>§(§1m§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            §;>§(§1m§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function §3"Z§() : void
      {
         §;>§(§%#q§,§=$5§,null,0);
      }
      
      public static function §%#g§() : void
      {
         §;>§(§%#q§,§^z§,null,0);
      }
      
      public static function §1"j§(param1:String, param2:int) : void
      {
         §;>§(§]$5§,param1,"",param2);
      }
      
      public static function §^$;§(param1:int, param2:Boolean = false) : void
      {
         §;>§(§>#y§,§@"6§,"",param1);
         §;>§(§>#y§,!!param2 ? §4"8§ : §7#r§,"",param1);
      }
      
      public static function §8"B§(param1:String) : void
      {
         §;>§(§[U§,§9"&§,param1,0);
      }
      
      public static function §@#-§(param1:String, param2:int) : void
      {
         if(!§1#4§)
         {
            return;
         }
         §;>§(§[U§,§2"B§,param1,param2);
      }
      
      public static function §#!l§(param1:String) : void
      {
         §;>§(§[U§,§@m§,param1,0);
      }
      
      public static function §<!R§(param1:String) : void
      {
         §;>§(§?!4§,§3"A§,param1,0);
      }
      
      public static function §>#U§(param1:String) : void
      {
         if(!§1#4§)
         {
            return;
         }
         §;>§(§0#P§,param1,"",0,true);
      }
      
      public static function trackPageView(param1:§7#M§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §?#0§)
         {
            _loc4_ = "_/" + param1.§<"b§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§>"-§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            § "8§.§ "§(§ _§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled && §0#]§)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §<"A§;
            _loc9_["state"] = §]!C§;
            _loc9_["country"] = §[!?§;
            § "8§.§ "§(§5"O§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled && §0#]§)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §<"A§;
            _loc5_["state"] = §]!C§;
            _loc5_["country"] = §[!?§;
            § "8§.§ "§(§^";§,_loc5_,param4);
         }
      }
      
      public static function §^$>§(param1:String) : void
      {
         §;>§(§<#5§,§1#B§,param1,0);
      }
      
      public static function §&h§(param1:String) : void
      {
         §;>§(§<#5§,§'#H§,param1,0);
      }
      
      public static function §!4§(param1:String) : void
      {
         §;>§(§<#5§,§[$0§,param1,0);
      }
      
      public static function §&E§(param1:String) : void
      {
         §;>§(§<#5§,§=#H§,param1,0);
      }
      
      public static function §=?§(param1:String) : void
      {
         §;>§(§<#5§,§#$#§,param1,0);
      }
      
      private static function §;>§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §4#&§;
            if(param5)
            {
               _loc6_ = §=!n§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §=!n§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return §4#&§;
      }
      
      private static function §;$=§(param1:Array) : String
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
      
      private static function §6#`§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
      
      public static function §`7§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
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
            § "8§.§ "§(§-#i§,_loc8_);
         }
      }
      
      public static function §+#X§(param1:String, param2:String) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["level"] = param1;
         _loc3_["from"] = param2;
         § "8§.§ "§(§!#_§,_loc3_);
      }
   }
}
