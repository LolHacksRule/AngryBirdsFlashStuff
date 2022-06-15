package §9@§
{
   import §+!c§.Base64;
   import §2<§.§9!7§;
   import §30§.§'"+§;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.getTimer;
   
   public class §@q§ extends §3w§
   {
      
      private static const §@!y§:Boolean = AngryBirdsFP11.§#V§;
      
      private static const § "P§:String = "powerup-used";
      
      private static const §'6§:String = "level-powerup-used";
      
      private static const §='§:String = "powerup-" + §>!P§;
      
      private static const §=1§:String = §>!P§ + "-powerup";
      
      private static const § !!§:String = "framerate";
      
      private static const §?z§:String = "external-pause";
      
      private static const §@!r§:String = "gift";
      
      private static const §1"&§:String = "shop";
      
      private static const §[1§:String = "brag";
      
      private static const §?!8§:String = "invite";
      
      private static const §;"B§:String = "avatar";
      
      private static const §]"X§:String = "branded-shop";
      
      private static const §^Z§:String = "powerup-gained";
      
      private static const §@"3§:String = "powerup-statistics";
      
      private static const §^"9§:String = "virtual-currency-gained";
      
      private static const §3D§:String = "wingman-usage";
      
      private static const §>!;§:String = "warning";
      
      private static const §2g§:String = "user-statistics";
      
      private static const §`"-§:String = "tournament-statistics";
      
      private static const §%"A§:String = "streaming";
      
      private static const §<j§:String = "external-url";
      
      private static const §,!4§:String = "virtual-currency-statistics";
      
      private static const §;!K§:String = "error";
      
      private static const §>6§:String = "ab-tests";
      
      private static const §7!!§:String = "paused";
      
      private static const § K§:String = "resumed";
      
      private static const §>"S§:String = "gift-claimed";
      
      private static const §1N§:String = "campaign-gift-claimed";
      
      private static const §=]§:String = "opened";
      
      private static const §#![§:String = "product-selected";
      
      private static const §#"M§:String = "product-buy-selected";
      
      private static const §11§:String = "product-buy-completed";
      
      private static const §3l§:String = "brag-shown";
      
      private static const §"Q§:String = "brag-clicked";
      
      private static const §0'§:String = "friend-clicked";
      
      private static const §4!6§:String = "generic-clicked";
      
      private static const §7!E§:String = "opened";
      
      private static const §`q§:String = "set";
      
      private static const §<!8§:String = "product-set";
      
      private static const §%"#§:String = §#"M§;
      
      private static const §<l§:String = §11§;
      
      private static const §+i§:String = "share-clicked";
      
      private static const §]m§:String = "share-completed";
      
      private static const §,!5§:String = "ticket-collected";
      
      private static const §3C§:String = "max-tickets-collected-one-day";
      
      private static const §7Q§:String = "max-tickets-collected-whole-draw";
      
      private static const §[""§:String = "download-failed";
      
      private static const §5"5§:String = "3rd-party-cookies-missing";
      
      private static const §"!@§:String = "invalid-level";
      
      private static const §&4§:String = "flash-var-missing";
      
      private static const §[!?§:String = "friend-count";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_1:String = "red-beaten-by";
      
      private static const ACTION_BIRD_BOT_BEATEN_BY_2:String = "yellow-beaten-by";
      
      private static const ACTION_BIRD_BOT_LOST_BY_1:String = "red-lost-by";
      
      private static const ACTION_BIRD_BOT_LOST_BY_2:String = "yellow-lost-by";
      
      private static const §[r§:String = "virtual-currency-count";
      
      private static const §&!7§:String = "start";
      
      private static const §&!<§:String = "complete";
      
      private static const §"!S§:String = "error";
      
      private static const §&!F§:String = "open";
      
      private static const §&"K§:String = "free-samples";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§#!S§,§>!P§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§-!f§,§08§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§ "P§,§'6§,§='§,§=1§,§ !!§,§?z§,§@!r§,§1"&§,§[1§,§?!8§,§;"B§,§^Z§,§@"3§,§^"9§,§`"-§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§;!K§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §2"H§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §7"+§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §5!J§:String = "DailyReward";
      
      public static const §9%§:String = "TournamentLevelComplete";
      
      public static const § O§:String = "TournamentPrize";
      
      public static const §1§:String = "Gift";
      
      public static const §6!o§:String = "Shop";
      
      public static const §4H§:String = "trackPageView";
      
      public static const §=X§:String = "trackTransaction";
      
      public static const §&"Y§:String = "trackTransactionItems";
      
      public static const §>!A§:String = "level_pack";
      
      public static const §["G§:String = "shop";
      
      public static const §%"$§:String = "level";
      
      public static const §"1§:String = "frontpage";
      
      public static const §+!+§:String = "coins";
      
      public static const §-![§:String = "tabbed-shop";
      
      public static const §73§:String = "branded";
      
      public static const §,`§:String = "avatar";
      
      public static const §7!K§:String = "thank-you";
      
      public static const §+Z§:String = "Completed";
      
      public static const §@"<§:String = "Failed";
      
      public static const §;"§:String = "game";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §>!O§:Array = [];
      
      private static var §=!u§:int = 0;
      
      private static var §&5§:int = 0;
      
      private static var § !&§:int = 0;
      
      private static var §@5§:int = 0;
      
      private static const §+!j§:String = "Finland";
      
      private static const §6r§:String = "Uusimaa";
      
      private static const §[6§:String = "Helsinki";
      
      public static var §4!,§:Boolean = false;
       
      
      public function §@q§()
      {
         super();
      }
      
      public static function §7!q§() : void
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
      
      public static function §&d§(param1:int, param2:int, param3:String, param4:String = null) : void
      {
         §#!0§(§3w§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = §9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/clienterror/WEB_FLASH/" + param3 + "/" + param1)).method = URLRequestMethod.POST;
         if(!param4)
         {
            param4 = "";
         }
         _loc6_.contentType = "text/plain";
         _loc6_.data = Base64.encode(param4);
         _loc5_.load(_loc6_);
      }
      
      public static function §#!0§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §[!;§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §3w§.trackSampledEvent(_loc4_,§`%§,param1,param2,param3);
      }
      
      public static function §5! §(param1:String, param2:String) : void
      {
         var _loc3_:int = §!!m§();
         §0!+§(§ "P§,param1,param2,0);
         §0!+§(§'6§,param2,param1,0);
      }
      
      public static function §[!_§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = 0;
         while(_loc4_ < param3)
         {
            §0!+§(§^Z§,param1,param2,0);
            _loc4_++;
         }
      }
      
      public static function §'!!§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §3U§(param1))
            {
               §0!+§(§='§,_loc4_,param2,param3);
               §0!+§(§=1§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §&?§(param1:String, param2:String, param3:int) : void
      {
         §0!+§(§^"9§,param1,param2,param3);
      }
      
      public static function §;S§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§>!O§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §>!O§.length == 0;
         §>!O§.push(param2);
         if(param3)
         {
            _loc6_ = §3w§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@q§.§2"H§;
            }
         }
         else
         {
            _loc6_ = §3w§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@q§.§7"+§;
            }
         }
         if(_loc5_)
         {
            §#!0§(_loc6_,param1.toString(),param1);
         }
         §0!+§(§ !!§,_loc6_,param2,param1);
      }
      
      public static function §,""§(param1:String, param2:int) : void
      {
         ++§=!u§;
         §0!+§(§@!r§,§>"S§,param1,param2);
      }
      
      public static function § "5§() : void
      {
         §0!+§(§@!r§,§1N§,null,0);
      }
      
      public static function §@!;§() : void
      {
         ++§&5§;
         § !&§ = §!!m§();
         §0!+§(§?z§,§7!!§,§&5§.toString(),§ !&§);
      }
      
      public static function § !=§() : void
      {
         §0!+§(§?z§,§ K§,"",§!!m§(§ !&§));
      }
      
      public static function § !P§(param1:String) : void
      {
         if(!§@!y§)
         {
            §0!+§(§]"X§,§=]§,param1,0);
         }
      }
      
      public static function § "I§() : void
      {
         if(!§@!y§)
         {
            §0!+§(§1"&§,§=]§,null,0);
         }
      }
      
      public static function §>!r§(param1:String) : void
      {
         if(!§@!y§)
         {
            §0!+§(§1"&§,§#![§,param1,0);
         }
      }
      
      public static function §<!S§(param1:String, param2:int) : void
      {
         if(!§@!y§)
         {
            §0!+§(§1"&§,§#"M§,param1,param2,false);
         }
      }
      
      public static function §3"-§(param1:String, param2:int) : void
      {
         if(!§@!y§)
         {
            §0!+§(§1"&§,§11§,param1,param2,false);
         }
      }
      
      public static function §,!t§(param1:String) : void
      {
         §0!+§(§[1§,§3l§,param1,0);
      }
      
      public static function §[!Q§(param1:String) : void
      {
         §0!+§(§[1§,§"Q§,param1,0);
      }
      
      public static function §`=§() : void
      {
         §0!+§(§?!8§,§0'§,null,0);
      }
      
      public static function §"U§(param1:int) : void
      {
         §0!+§(§2g§,§,!5§,null,param1);
      }
      
      public static function §^r§() : void
      {
         §0!+§(§2g§,§3C§,null,0);
      }
      
      public static function §+!]§() : void
      {
         §0!+§(§2g§,§7Q§,null,0);
      }
      
      public static function §8"#§(param1:String, param2:String) : void
      {
         §0!+§(§3D§,param1,param2,0);
      }
      
      public static function §%"Z§() : void
      {
         §0!+§(§?!8§,§4!6§,null,0);
      }
      
      public static function §"C§() : void
      {
         §0!+§(§;"B§,§7!E§,null,0);
      }
      
      public static function §8!,§() : void
      {
         §0!+§(§;"B§,§`q§,null,0);
      }
      
      public static function §@0§(param1:String) : void
      {
         §0!+§(§;"B§,§<!8§,param1,0);
      }
      
      public static function §`"J§() : void
      {
         §0!+§(§;"B§,§+i§,null,0);
      }
      
      public static function §;"<§() : void
      {
         §0!+§(§;"B§,§]m§,null,0);
      }
      
      public static function §!!`§(param1:String, param2:int = 0) : void
      {
         if(!§@!y§)
         {
            §0!+§(§;"B§,§%"#§,param1,param2,false);
         }
      }
      
      public static function §@§(param1:String, param2:int = 0) : void
      {
         if(!§@!y§)
         {
            §0!+§(§;"B§,§<l§,param1,param2,false);
         }
      }
      
      public static function §<d§(param1:String) : void
      {
         §0!+§(§>!;§,§[""§,param1,0);
      }
      
      public static function §]-§() : void
      {
         §0!+§(§>!;§,§5"5§,null,0);
      }
      
      public static function §^j§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §0!+§(§>!;§,§"!@§,param1,0);
      }
      
      public static function §=t§(param1:String) : void
      {
         §0!+§(§>!;§,§&4§,param1,0);
      }
      
      public static function §9!F§(param1:int) : void
      {
         §0!+§(§2g§,§[!?§,param1.toString(),param1);
      }
      
      public static function §2!f§(param1:int) : void
      {
         §0!+§(§`"-§,§[!?§,param1.toString(),param1);
      }
      
      public static function §6!]§(param1:String, param2:Boolean, param3:Boolean, param4:Number, param5:Number) : void
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
            §0!+§(§`"-§,param1,ACTION_BIRD_BOT_BEATEN_BY_1,param4);
         }
         else
         {
            §0!+§(§`"-§,param1,ACTION_BIRD_BOT_LOST_BY_1,param4);
         }
         if(param3)
         {
            §0!+§(§`"-§,param1,ACTION_BIRD_BOT_BEATEN_BY_2,param5);
         }
         else
         {
            §0!+§(§`"-§,param1,ACTION_BIRD_BOT_LOST_BY_2,param5);
         }
      }
      
      public static function §@P§(param1:String, param2:int) : void
      {
         §0!+§(§@"3§,param1,"",param2);
      }
      
      public static function §+!7§(param1:int) : void
      {
         §0!+§(§,!4§,§[r§,"",param1);
      }
      
      public static function §-!U§(param1:String) : void
      {
         §0!+§(§%"A§,§&!7§,param1,0);
      }
      
      public static function §9!N§(param1:String, param2:int) : void
      {
         §0!+§(§%"A§,§"!S§,param1,param2);
      }
      
      public static function §"!5§(param1:String) : void
      {
         §0!+§(§%"A§,§&!<§,param1,0);
      }
      
      public static function §6!=§(param1:String) : void
      {
         §0!+§(§<j§,§&!F§,param1,0);
      }
      
      public static function §1[§(param1:String) : void
      {
         §0!+§(§;!K§,param1,"",0,false);
      }
      
      public static function §3!@§(param1:String, param2:String, param3:int) : void
      {
         §0!+§(§>6§,§&"K§ + " - " + param2,param1,param3,false);
      }
      
      public static function trackPageView(param1:§4d§, param2:String = null, param3:String = null) : void
      {
         var _loc4_:* = null;
         if(enabled && §4!,§)
         {
            _loc4_ = "_/" + param1.§=,§() + "/";
            if(!param2)
            {
               _loc4_ += param1.§8"3§();
            }
            else
            {
               _loc4_ += param2;
            }
            if(param3)
            {
               _loc4_ += "/" + param3;
            }
            §'"+§.§'!#§(§4H§,_loc4_);
         }
      }
      
      public static function trackTransaction(param1:String, param2:String, param3:String, param4:String, param5:String, param6:Number, param7:Number, param8:Number) : void
      {
         var _loc9_:Object = null;
         if(enabled)
         {
            (_loc9_ = new Object())["orderId"] = param1;
            _loc9_["shopName"] = param2;
            _loc9_["sku"] = param3;
            _loc9_["name"] = param4;
            _loc9_["category"] = param5;
            _loc9_["price"] = param6;
            _loc9_["quantity"] = param7;
            _loc9_["tax"] = param8;
            _loc9_["city"] = §[6§;
            _loc9_["state"] = §6r§;
            _loc9_["country"] = §+!j§;
            §'"+§.§'!#§(§=X§,_loc9_);
         }
      }
      
      public static function trackTransactionItems(param1:String, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = null;
         if(enabled)
         {
            (_loc5_ = new Object())["orderId"] = param1;
            _loc5_["shopName"] = param2;
            _loc5_["category"] = param3;
            _loc5_["city"] = §[6§;
            _loc5_["state"] = §6r§;
            _loc5_["country"] = §+!j§;
            §'"+§.§'!#§(§&"Y§,_loc5_,param4);
         }
      }
      
      private static function §0!+§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §6V§;
            if(param5)
            {
               _loc6_ = §[!;§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §[!;§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §6V§;
      }
      
      private static function §3U§(param1:Array) : String
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
      
      private static function §!!m§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
