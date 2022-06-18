package §2E§
{
   import §]!4§.§=#c§;
   import flash.utils.getTimer;
   
   public class §'@§ extends §7J§
   {
      
      private static const §2J§:Boolean = AngryBirdsBase.DEBUG_MODE_ENABLED;
      
      private static const §8!6§:String = "POWERUP-USED";
      
      private static const §!#e§:String = "LEVEL-POWERUP-USED";
      
      private static const §8!B§:String = "POWERUP-" + §%#w§;
      
      private static const §3"M§:String = §%#w§ + "-POWERUP";
      
      private static const §#!A§:String = "FRAMERATE";
      
      private static const §?",§:String = "EXTERNAL-PAUSE";
      
      private static const §"b§:String = "GIFT";
      
      private static const §;$7§:String = "SHOP";
      
      private static const §]!W§:String = "BRAG";
      
      private static const §8!L§:String = "INVITE";
      
      private static const §&!d§:String = "AVATAR";
      
      private static const §3$$§:String = "FACEBOOK_SHARING";
      
      private static const §"!Q§:String = "BRANDED-SHOP";
      
      private static const §3#5§:String = "POWERUP-GAINED";
      
      private static const §##v§:String = "POWERUP-STATISTICS";
      
      private static const §8$=§:String = "VIRTUAL-CURRENCY-GAINED";
      
      private static const §^!%§:String = "POWERUP-SUGGESTION";
      
      private static const §2!O§:String = "WINGMAN-USAGE";
      
      private static const §'!g§:String = "WARNING";
      
      private static const §3#8§:String = "USER-STATISTICS";
      
      private static const §7!L§:String = "TOURNAMENT-STATISTICS";
      
      private static const §-4§:String = "STREAMING";
      
      private static const §@!!§:String = "EXTERNAL-URL";
      
      private static const §>$A§:String = "VIRTUAL-CURRENCY-STATISTICS";
      
      private static const §!#8§:String = "TOURNAMENT";
      
      private static const §<O§:String = "ERROR";
      
      private static const §1#T§:String = "PAUSED";
      
      private static const §'!x§:String = "RESUMED";
      
      private static const §"!E§:String = "GIFT-CLAIMED";
      
      private static const §8#K§:String = "GIFT-CLAIMED-ONLY";
      
      private static const §%l§:String = "GIFT-CLAIMED-AND-SENT";
      
      private static const § #C§:String = "GIFT-SENT";
      
      private static const §;E§:String = "SIDEBAR";
      
      private static const §6#+§:String = "POPUP";
      
      private static const §9"_§:String = "CAMPAIGN-GIFT-CLAIMED";
      
      private static const §1"C§:String = "OPENED";
      
      private static const §3!S§:String = "PRODUCT-SELECTED";
      
      private static const §,"^§:String = "PRODUCT-BUY-SELECTED";
      
      private static const §'"@§:String = "PRODUCT-BUY-COMPLETED";
      
      private static const §8"K§:String = "PRODUCT-EARN-SELECTED";
      
      private static const §2"M§:String = "PRODUCT-EARN-COMPLETED";
      
      private static const §5!"§:String = "PRODUCT-REDEEM-SELECTED";
      
      private static const §;K§:String = "PRODUCT-REDEEM-COMPLETED";
      
      private static const §^!H§:String = "BRAG-SHOWN";
      
      private static const §!#&§:String = "BRAG-CLICKED";
      
      private static const §^!t§:String = "SHARE";
      
      private static const §"$E§:String = "SKIP";
      
      private static const §&"N§:String = "FRIEND-CLICKED";
      
      private static const §8s§:String = "GENERIC-CLICKED";
      
      private static const §-#P§:String = "OPENED";
      
      private static const §`E§:String = "SET";
      
      private static const §7"=§:String = "PRODUCT-SET";
      
      private static const §]"&§:String = §,"^§;
      
      private static const §["R§:String = §'"@§;
      
      private static const §7!T§:String = "SHARE-CLICKED";
      
      private static const §<$6§:String = "SHARE-COMPLETED";
      
      private static const §1"4§:String = "TICKET-COLLECTED";
      
      private static const §+!+§:String = "MAX-TICKETS-COLLECTED-ONE-DAY";
      
      private static const §?!&§:String = "MAX-TICKETS-COLLECTED-WHOLE-DRAW";
      
      private static const §,!7§:String = "DOWNLOAD-FAILED";
      
      private static const §!"W§:String = "3RD-PARTY-COOKIES-MISSING";
      
      private static const §^$=§:String = "INVALID-LEVEL";
      
      private static const §+!T§:String = "FLASH-VAR-MISSING";
      
      private static const §<"J§:String = "FRIEND-COUNT";
      
      private static const §7!h§:String = "TOURNAMENT-SHARE-SCORE_CLICKED";
      
      private static const §+"K§:String = "TOURNAMENT-SHARE-SCORE_COMPLETED";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "RED-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "YELLOW-BEATEN-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "RED-LOST-BY";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "YELLOW-LOST-BY";
      
      private static const §[!i§:String = "VIRTUAL-CURRENCY-COUNT";
      
      private static const §`#9§:String = "VIRTUAL-CURRENCY-COUNT-PAYER";
      
      private static const §0"S§:String = "VIRTUAL-CURRENCY-COUNT-NONPAYER";
      
      private static const §&#e§:String = "START";
      
      private static const § ]§:String = "COMPLETE";
      
      private static const §0F§:String = "ERROR";
      
      private static const §2"I§:String = "OPEN";
      
      private static const §'!;§:String = "FREE-SAMPLES";
      
      private static const §>"M§:String = "POWERUP-SUGGESTION-SHOWN";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§,!L§,§%#w§,§^"<§,§2! §,ACTION_APPLICATION_CRASH,ACTION_APPLICATION_CRASH,§6!5§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§8!6§,§!#e§,§8!B§,§3"M§,§#!A§,§?",§,§"b§,§;$7§,§]!W§,§8!L§,§&!d§,§3#5§,§##v§,§8$=§,§7!L§,§^!%§,§2!O§,§<O§,§-4§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [];
      
      private static const FULL_SCREEN:String = "-FULL-SCREEN";
      
      private static const §?!o§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §]$B§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §@",§:String = "DAILYREWARD";
      
      public static const §;X§:String = "TOURNAMENTLEVELCOMPLETE";
      
      public static const §3!p§:String = "TOURNAMENTPRIZE";
      
      public static const §<!g§:String = "GIFT";
      
      public static const §3e§:String = "SHOP";
      
      public static const §8&§:String = "trackPageView";
      
      public static const §,u§:String = "trackTransaction";
      
      public static const §[k§:String = "trackTransactionItems";
      
      public static const §"t§:String = "MAIN_MENU";
      
      public static const §0]§:String = "CHAPTERS";
      
      public static const § "b§:String = "LEVEL_PACK";
      
      public static const §5"!§:String = "SHOP";
      
      public static const §!<§:String = "LEVEL";
      
      public static const §>#D§:String = "FRONTPAGE";
      
      public static const §6#V§:String = "COINS";
      
      public static const §7$@§:String = "TABBED-SHOP";
      
      public static const §;!#§:String = "BRANDED";
      
      public static const §4"h§:String = "AVATAR";
      
      public static const §0#6§:String = "THANK-YOU";
      
      public static const §5"r§:String = "QUICKBUY-SHOP";
      
      public static const §7#0§:String = "COMPLETED";
      
      public static const §`![§:String = "FAILED";
      
      public static const §9#@§:String = "GAME";
      
      public static const §'#8§:String = "BIRD_SHOT";
      
      public static const §<]§:String = "LEVEL_UNLOCK_PURCHASED";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §9!T§:Array = [];
      
      private static var §>"=§:int = 0;
      
      private static var §"!!§:int = 0;
      
      private static var §8#T§:int = 0;
      
      private static var §>!@§:int = 0;
      
      private static const §&"c§:String = "FINLAND";
      
      private static const §9#J§:String = "UUSIMAA";
      
      private static const §9!P§:String = "HELSINKI";
      
      public static var §##_§:Boolean = false;
      
      public static var §<!L§:String = "BUY";
      
      public static var §,#h§:String = "POWERUP-SUGGESTION";
      
      private static var §2"m§:String = "BUY";
      
      private static var §+"z§:String = "CLOSE";
      
      private static var §<!u§:String = "USE";
      
      private static var §`"%§:String = "BUY-NOT-ENOUGH-COINS";
      
      private static var §2"Q§:Boolean = false;
      
      public static var §6$§:Boolean = true;
       
      
      public function §'@§()
      {
         super();
      }
      
      public static function §function§() : void
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
      
      public static function §`@§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         if(!§6$§)
         {
            return;
         }
         §4"x§(§7J§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
      }
      
      public static function §4"x§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §3";§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §7J§.trackSampledEvent(_loc4_,§2!7§,param1,param2,param3);
      }
      
      public static function §,$,§(param1:String, param2:String) : void
      {
         int(§%!%§());
         §!"§(§8!6§,param1,param2,0);
         §!"§(§!#e§,param2,param1,0);
      }
      
      public static function §""N§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            §!"§(§3#5§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §#y§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §-$?§(param1))
            {
               §!"§(§8!B§,_loc4_,param2,param3);
               §!"§(§3"M§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function § "?§(param1:String, param2:String, param3:int) : void
      {
         §!"§(§8$=§,param1,param2,param3);
      }
      
      public static function §^!0§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§9!T§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §9!T§.length == 0;
         §9!T§.push(param2);
         if(param3)
         {
            _loc6_ = §7J§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'@§.§?!o§;
            }
         }
         else
         {
            _loc6_ = §7J§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'@§.§]$B§;
            }
         }
         if(_loc5_)
         {
            §4"x§(_loc6_,param1.toString(),param1);
         }
         §!"§(§#!A§,_loc6_,param2,param1);
      }
      
      public static function §0#i§(param1:String, param2:int) : void
      {
         ++§>"=§;
         §!"§(§"b§,§"!E§,param1,param2);
      }
      
      public static function §=!l§() : void
      {
         §!"§(§"b§,§ #C§,§;E§,0);
      }
      
      public static function §#H§() : void
      {
         §!"§(§"b§,§ #C§,§6#+§,0);
      }
      
      public static function §1#2§() : void
      {
         §!"§(§"b§,§8#K§,null,0);
      }
      
      public static function §&"I§(param1:int = 0) : void
      {
         §!"§(§"b§,§%l§,null,param1);
      }
      
      public static function §;"3§() : void
      {
         §!"§(§"b§,§9"_§,null,0);
      }
      
      public static function §-%§(param1:String) : void
      {
         if(!§2J§)
         {
            §!"§(§"!Q§,§1"C§,param1,0);
         }
      }
      
      public static function §1$-§() : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§1"C§,null,0);
         }
      }
      
      public static function §7!U§(param1:String) : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§3!S§,param1,0);
         }
      }
      
      public static function §]!l§(param1:String, param2:int) : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§,"^§,param1,param2,true);
         }
      }
      
      public static function §2!c§(param1:String, param2:int) : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§'"@§,param1,param2,true);
         }
      }
      
      public static function §&!i§(param1:String) : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§8"K§,param1,0,true);
         }
      }
      
      public static function §7$9§(param1:String, param2:int) : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§2"M§,param1,param2,true);
         }
      }
      
      public static function §#"E§(param1:String) : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§5!"§,param1,0,true);
         }
      }
      
      public static function §?!w§(param1:String, param2:int) : void
      {
         if(!§2J§)
         {
            §!"§(§;$7§,§;K§,param1,param2,true);
         }
      }
      
      public static function §,#u§(param1:String) : void
      {
         §!"§(§]!W§,§^!H§,param1,0);
      }
      
      public static function § !;§(param1:String) : void
      {
         §!"§(§]!W§,§!#&§,param1,0);
      }
      
      public static function §]G§(param1:String) : void
      {
         §!"§(§3$$§,param1,§^!t§,0);
      }
      
      public static function §4D§(param1:String) : void
      {
         §!"§(§3$$§,param1,§"$E§,0);
      }
      
      public static function §&#t§() : void
      {
         §!"§(§8!L§,§&"N§,null,0);
      }
      
      public static function §^!M§(param1:int) : void
      {
         §!"§(§3#8§,§1"4§,null,param1);
      }
      
      public static function §!!e§() : void
      {
         §!"§(§3#8§,§+!+§,null,0);
      }
      
      public static function §7#8§() : void
      {
         §!"§(§3#8§,§?!&§,null,0);
      }
      
      public static function §+!G§(param1:String, param2:String) : void
      {
         §!"§(§2!O§,param1,param2,0);
      }
      
      public static function §8#_§() : void
      {
         §!"§(§8!L§,§8s§,null,0);
      }
      
      public static function §if§() : void
      {
         §!"§(§&!d§,§-#P§,null,0);
      }
      
      public static function §'#_§() : void
      {
         §!"§(§&!d§,§`E§,null,0);
      }
      
      public static function §+$#§(param1:String) : void
      {
         §!"§(§&!d§,§7"=§,param1,0);
      }
      
      public static function §<"@§() : void
      {
         §!"§(§&!d§,§7!T§,null,0);
      }
      
      public static function §>!V§() : void
      {
         §!"§(§&!d§,§<$6§,null,0);
      }
      
      public static function §,!V§(param1:String, param2:int = 0) : void
      {
         if(!§2J§)
         {
            §!"§(§&!d§,§]"&§,param1,param2,true);
         }
      }
      
      public static function §@#V§(param1:String, param2:int = 0) : void
      {
         if(!§2J§)
         {
            §!"§(§&!d§,§["R§,param1,param2,true);
         }
      }
      
      public static function §&"g§(param1:String) : void
      {
         §!"§(§'!g§,§,!7§,param1,0);
      }
      
      public static function §8G§() : void
      {
         §!"§(§'!g§,§!"W§,null,0);
      }
      
      public static function §=!N§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §!"§(§'!g§,§^$=§,param1,0);
      }
      
      public static function §<$8§(param1:String) : void
      {
         §!"§(§'!g§,§+!T§,param1,0);
      }
      
      public static function §<$<§(param1:int) : void
      {
         §!"§(§3#8§,§<"J§,param1.toString(),param1);
      }
      
      public static function §<v§(param1:int) : void
      {
         §!"§(§7!L§,§<"J§,param1.toString(),param1);
      }
      
      public static function §[#9§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
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
            §!"§(§7!L§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            §!"§(§7!L§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            §!"§(§7!L§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            §!"§(§7!L§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function §8$<§() : void
      {
         §!"§(§!#8§,§7!h§,null,0);
      }
      
      public static function §8!D§() : void
      {
         §!"§(§!#8§,§+"K§,null,0);
      }
      
      public static function § y§(param1:String, param2:int) : void
      {
         §!"§(§##v§,param1,"",param2);
      }
      
      public static function §3#O§(param1:int, param2:Boolean = false) : void
      {
         §!"§(§>$A§,§[!i§,"",param1);
         §!"§(§>$A§,!!param2 ? §`#9§ : §0"S§,"",param1);
      }
      
      public static function §]+§(param1:String) : void
      {
         §!"§(§-4§,§&#e§,param1,0);
      }
      
      public static function §4$3§(param1:String, param2:int) : void
      {
         if(!§6$§)
         {
            return;
         }
         §!"§(§-4§,§0F§,param1,param2);
      }
      
      public static function §0!&§(param1:String) : void
      {
         §!"§(§-4§,§ ]§,param1,0);
      }
      
      public static function §-!f§(param1:String) : void
      {
         §!"§(§@!!§,§2"I§,param1,0);
      }
      
      public static function §-"Q§(param1:String) : void
      {
         if(!§6$§)
         {
            return;
         }
         §!"§(§<O§,param1,"",0,true);
      }
      
      public static function trackPageView(param1:§'r§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §##_§)
         {
            _loc4_ = "_/" + param1.§2!^§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§6#U§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            §=#c§.§<!t§(§8&§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled && §2"Q§)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §9!P§;
            _loc9_["state"] = §9#J§;
            _loc9_["country"] = §&"c§;
            §=#c§.§<!t§(§,u§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled && §2"Q§)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §9!P§;
            _loc5_["state"] = §9#J§;
            _loc5_["country"] = §&"c§;
            §=#c§.§<!t§(§[k§,_loc5_,param4);
         }
      }
      
      public static function §]!6§(param1:String) : void
      {
         §!"§(§^!%§,§>"M§,param1,0);
      }
      
      public static function §4"E§(param1:String) : void
      {
         §!"§(§^!%§,§2"m§,param1,0);
      }
      
      public static function §?#K§(param1:String) : void
      {
         §!"§(§^!%§,§`"%§,param1,0);
      }
      
      public static function §5!l§(param1:String) : void
      {
         §!"§(§^!%§,§<!u§,param1,0);
      }
      
      public static function §`$?§(param1:String) : void
      {
         §!"§(§^!%§,§+"z§,param1,0);
      }
      
      private static function §!"§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §'!&§;
            if(param5)
            {
               _loc6_ = §3";§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §3";§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         return §'!&§;
      }
      
      private static function §-$?§(param1:Array) : String
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
      
      private static function §%!%§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
      
      public static function §<=§(param1:String, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean) : void
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
            §=#c§.§<!t§(§'#8§,_loc8_);
         }
      }
      
      public static function §]$%§(param1:String, param2:String) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["level"] = param1;
         _loc3_["from"] = param2;
         §=#c§.§<!t§(§<]§,_loc3_);
      }
   }
}
