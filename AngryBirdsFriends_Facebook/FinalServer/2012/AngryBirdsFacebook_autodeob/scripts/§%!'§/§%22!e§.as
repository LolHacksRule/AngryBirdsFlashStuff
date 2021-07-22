package §%!'§
{
   import §[!-§.§?x§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §"!e§ extends §>A§
   {
      
      private static const §;y§:Boolean = AngryBirdsFP11.§&!M§;
      
      private static const §4E§:String = "powerup-used";
      
      private static const §;"9§:String = "level-powerup-used";
      
      private static const §4c§:String = "powerup-" + §&Y§;
      
      private static const §!"D§:String = §&Y§ + "-powerup";
      
      private static const §6!;§:String = "framerate";
      
      private static const §!"+§:String = "external-pause";
      
      private static const §`!F§:String = "gift";
      
      private static const §`"C§:String = "shop";
      
      private static const §7G§:String = "brag";
      
      private static const §>!t§:String = "invite";
      
      private static const §5_§:String = "avatar";
      
      private static const § f§:String = "branded-shop";
      
      private static const §5!9§:String = "powerup-gained";
      
      private static const §<#§:String = "powerup-statistics";
      
      private static const §[!9§:String = "warning";
      
      private static const §&!5§:String = "user-statistics";
      
      private static const §]a§:String = "streaming";
      
      private static const §!=§:String = "external-url";
      
      private static const §3?§:String = "error";
      
      private static const §%1§:String = "paused";
      
      private static const §%!W§:String = "resumed";
      
      private static const §;w§:String = "gift-claimed";
      
      private static const §+" §:String = "campaign-gift-claimed";
      
      private static const §3<§:String = "opened";
      
      private static const §&!#§:String = "product-selected";
      
      private static const §>!l§:String = "product-buy-selected";
      
      private static const §;"A§:String = "product-buy-completed";
      
      private static const §6!h§:String = "brag-shown";
      
      private static const §&!C§:String = "brag-clicked";
      
      private static const §-Q§:String = "friend-clicked";
      
      private static const §=!q§:String = "generic-clicked";
      
      private static const §1!6§:String = "opened";
      
      private static const §^"K§:String = "set";
      
      private static const §@P§:String = "product-set";
      
      private static const §`N§:String = §>!l§;
      
      private static const §8?§:String = §;"A§;
      
      private static const §-" §:String = "share-clicked";
      
      private static const §;l§:String = "share-completed";
      
      private static const §;2§:String = "download-failed";
      
      private static const §,!j§:String = "3rd-party-cookies-missing";
      
      private static const §""=§:String = "invalid-level";
      
      private static const §>"<§:String = "flash-var-missing";
      
      private static const §,"E§:String = "friend-count";
      
      private static const §`!l§:String = "start";
      
      private static const § q§:String = "complete";
      
      private static const §!!G§:String = "error";
      
      private static const §5%§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§7M§,§&Y§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§0m§,§!! §];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§4E§,§;"9§,§4c§,§!"D§,§6!;§,§!"+§,§`!F§,§`"C§,§7G§,§>!t§,§5_§,§5!9§,§<#§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§3?§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §>!+§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §`!]§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      public static const §[`§:String = "DailyReward";
      
      public static const §2g§:String = "TournamentLevelComplete";
      
      public static const §3,§:String = "TournamentPrize";
      
      public static const §9;§:String = "Gift";
      
      public static const §1r§:String = "Shop";
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §0!`§:Array = [];
      
      private static var §,p§:int = 0;
      
      private static var §,<§:int = 0;
      
      private static var §,L§:int = 0;
      
      private static var §,"#§:int = 0;
       
      
      public function §"!e§()
      {
         super();
      }
      
      public static function §1v§() : void
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
      
      public static function §`M§(param1:int, param2:int) : void
      {
         §7"9§(§>A§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/clienterror/" + param1));
      }
      
      public static function §7"9§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §-I§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §>A§.trackSampledEvent(_loc4_,§while§,param1,param2,param3);
      }
      
      public static function §9w§(param1:String, param2:String) : void
      {
         var _loc3_:int = §<!T§();
         §>-§(§4E§,param1,param2,0);
         §>-§(§;"9§,param2,param1,0);
      }
      
      public static function §3"E§(param1:String, param2:String, param3:int) : void
      {
         §>-§(§5!9§,param1,param2,param3);
      }
      
      public static function §3A§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §]%§(param1))
            {
               §>-§(§4c§,_loc4_,param2,param3);
               §>-§(§!"D§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §]!8§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§0!`§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §0!`§.length == 0;
         §0!`§.push(param2);
         if(param3)
         {
            _loc6_ = §>A§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"!e§.§>!+§;
            }
         }
         else
         {
            _loc6_ = §>A§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §"!e§.§`!]§;
            }
         }
         if(_loc5_)
         {
            §7"9§(_loc6_,param1.toString(),param1);
         }
         §>-§(§6!;§,_loc6_,param2,param1);
      }
      
      public static function §-"J§(param1:String, param2:int) : void
      {
         ++§,p§;
         §>-§(§`!F§,§;w§,param1,param2);
      }
      
      public static function §=!g§() : void
      {
         §>-§(§`!F§,§+" §,null,0);
      }
      
      public static function §'X§() : void
      {
         ++§,<§;
         §,L§ = §<!T§();
         §>-§(§!"+§,§%1§,§,<§.toString(),§,L§);
      }
      
      public static function §8H§() : void
      {
         §>-§(§!"+§,§%!W§,"",§<!T§(§,L§));
      }
      
      public static function §!`§(param1:String) : void
      {
         if(!§;y§)
         {
            §>-§(§ f§,§3<§,param1,0);
         }
      }
      
      public static function §7"+§() : void
      {
         if(!§;y§)
         {
            §>-§(§`"C§,§3<§,null,0);
         }
      }
      
      public static function §1b§(param1:String) : void
      {
         if(!§;y§)
         {
            §>-§(§`"C§,§&!#§,param1,0);
         }
      }
      
      public static function §<I§(param1:String, param2:int) : void
      {
         if(!§;y§)
         {
            §>-§(§`"C§,§>!l§,param1,param2,false);
         }
      }
      
      public static function §8!?§(param1:String, param2:int) : void
      {
         if(!§;y§)
         {
            §>-§(§`"C§,§;"A§,param1,param2,false);
         }
      }
      
      public static function §9k§(param1:String) : void
      {
         §>-§(§7G§,§6!h§,param1,0);
      }
      
      public static function §8! §(param1:String) : void
      {
         §>-§(§7G§,§&!C§,param1,0);
      }
      
      public static function §7!"§() : void
      {
         §>-§(§>!t§,§-Q§,null,0);
      }
      
      public static function §9!]§() : void
      {
         §>-§(§>!t§,§=!q§,null,0);
      }
      
      public static function §%v§() : void
      {
         §>-§(§5_§,§1!6§,null,0);
      }
      
      public static function §]!$§() : void
      {
         §>-§(§5_§,§^"K§,null,0);
      }
      
      public static function §5!u§(param1:String) : void
      {
         §>-§(§5_§,§@P§,param1,0);
      }
      
      public static function §]!+§() : void
      {
         §>-§(§5_§,§-" §,null,0);
      }
      
      public static function §3!d§() : void
      {
         §>-§(§5_§,§;l§,null,0);
      }
      
      public static function §+!K§(param1:String, param2:int = 0) : void
      {
         if(!§;y§)
         {
            §>-§(§5_§,§`N§,param1,param2,false);
         }
      }
      
      public static function §`!6§(param1:String, param2:int = 0) : void
      {
         if(!§;y§)
         {
            §>-§(§5_§,§8?§,param1,param2,false);
         }
      }
      
      public static function §2"8§(param1:String) : void
      {
         §>-§(§[!9§,§;2§,param1,0);
      }
      
      public static function §-t§() : void
      {
         §>-§(§[!9§,§,!j§,null,0);
      }
      
      public static function §;j§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §>-§(§[!9§,§""=§,param1,0);
      }
      
      public static function §2D§(param1:String) : void
      {
         §>-§(§[!9§,§>"<§,param1,0);
      }
      
      public static function §^B§(param1:int) : void
      {
         §>-§(§&!5§,§,"E§,param1.toString(),param1);
      }
      
      public static function §[z§(param1:String, param2:int) : void
      {
         §>-§(§<#§,param1,"",param2);
      }
      
      public static function §^!x§(param1:String) : void
      {
         §>-§(§]a§,§`!l§,param1,0);
      }
      
      public static function §5";§(param1:String, param2:int) : void
      {
         §>-§(§]a§,§!!G§,param1,param2);
      }
      
      public static function §?!u§(param1:String) : void
      {
         §>-§(§]a§,§ q§,param1,0);
      }
      
      public static function §-!@§(param1:String) : void
      {
         §>-§(§!=§,§5%§,param1,0);
      }
      
      public static function §[!V§(param1:String) : void
      {
         §>-§(§3?§,param1,"",0,false);
      }
      
      private static function §>-§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §1<§;
            if(param5)
            {
               _loc6_ = §-I§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §-I§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §1<§;
      }
      
      private static function §]%§(param1:Array) : String
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
      
      private static function §<!T§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
