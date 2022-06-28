package §0X§
{
   import §;!5§.§ v§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §'N§ extends §'W§
   {
      
      private static const §,!$§:Boolean = AngryBirdsFP11.§[!d§;
      
      private static const §;4§:String = "powerup-used";
      
      private static const §4q§:String = "level-powerup-used";
      
      private static const §9!F§:String = "powerup-" + §`q§;
      
      private static const § !!§:String = §`q§ + "-powerup";
      
      private static const §1!q§:String = "framerate";
      
      private static const §^!=§:String = "external-pause";
      
      private static const §^I§:String = "gift";
      
      private static const §-!v§:String = "shop";
      
      private static const §`!b§:String = "brag";
      
      private static const §?w§:String = "invite";
      
      private static const §%!$§:String = "avatar";
      
      private static const §!d§:String = "warning";
      
      private static const §#1§:String = "user-statistics";
      
      private static const §-G§:String = "error";
      
      private static const §7!s§:String = "paused";
      
      private static const §6!]§:String = "resumed";
      
      private static const §6!?§:String = "gift-claimed";
      
      private static const §'!q§:String = "campaign-gift-claimed";
      
      private static const §?u§:String = "opened";
      
      private static const §3%§:String = "product-selected";
      
      private static const §;!#§:String = "product-buy-selected";
      
      private static const §`,§:String = "product-buy-completed";
      
      private static const §7o§:String = "brag-shown";
      
      private static const §3;§:String = "brag-clicked";
      
      private static const §^!-§:String = "friend-clicked";
      
      private static const §4R§:String = "generic-clicked";
      
      private static const §+!b§:String = "opened";
      
      private static const §2M§:String = "set";
      
      private static const §>!v§:String = "product-set";
      
      private static const §5!a§:String = §;!#§;
      
      private static const § g§:String = §`,§;
      
      private static const §^!,§:String = "share-clicked";
      
      private static const §9'§:String = "share-completed";
      
      private static const §'!_§:String = "download-failed";
      
      private static const §4s§:String = "3rd-party-cookies-missing";
      
      private static const §@!v§:String = "invalid-level";
      
      private static const §4!L§:String = "flash-var-missing";
      
      private static const §!a§:String = "friend-count";
      
      private static const §6^§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§9!e§,§`q§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§"<§,§><§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§;4§,§4q§,§9!F§,§ !!§,§1!q§,§^!=§,§^I§,§-!v§,§`!b§,§?w§,§%!$§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§-G§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §<b§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §;"§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §&D§:Array = [];
      
      private static var §[+§:int = 0;
      
      private static var §0!5§:int = 0;
      
      private static var §[!M§:int = 0;
      
      private static var §@!6§:int = 0;
       
      
      public function §'N§()
      {
         super();
      }
      
      public static function §!!V§() : void
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
      
      public static function §7!=§(param1:int, param2:int) : void
      {
         §var §(§'W§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§ v§.§<N§(AngryBirdsFP11.§8!`§ + "/clienterror/" + param1));
      }
      
      public static function §var §(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §!7§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §'W§.trackSampledEvent(_loc4_,§0!T§,param1,param2,param3);
      }
      
      public static function §5H§(param1:String, param2:String) : void
      {
         var _loc3_:int = §<!-§();
         §-!5§(§;4§,param1,param2,0);
         §-!5§(§4q§,param2,param1,0);
      }
      
      public static function §,!y§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §+o§(param1))
            {
               §-!5§(§9!F§,_loc4_,param2,param3);
               §-!5§(§ !!§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §1%§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§&D§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §&D§.length == 0;
         §&D§.push(param2);
         if(param3)
         {
            _loc6_ = §'W§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'N§.§<b§;
            }
         }
         else
         {
            _loc6_ = §'W§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §'N§.§;"§;
            }
         }
         if(_loc5_)
         {
            §var §(_loc6_,param1.toString(),param1);
         }
         §-!5§(§1!q§,_loc6_,param2,param1);
      }
      
      public static function dynamic(param1:String, param2:int) : void
      {
         ++§[+§;
         §-!5§(§^I§,§6!?§,param1,param2);
      }
      
      public static function §=!C§() : void
      {
         §-!5§(§^I§,§'!q§,null,0);
      }
      
      public static function §-!_§() : void
      {
         ++§0!5§;
         §[!M§ = §<!-§();
         §-!5§(§^!=§,§7!s§,§0!5§.toString(),§[!M§);
      }
      
      public static function §3!j§() : void
      {
         §-!5§(§^!=§,§6!]§,"",§<!-§(§[!M§));
      }
      
      public static function §'j§() : void
      {
         if(!§,!$§)
         {
            §-!5§(§-!v§,§?u§,null,0);
         }
      }
      
      public static function §"!W§(param1:String) : void
      {
         if(!§,!$§)
         {
            §-!5§(§-!v§,§3%§,param1,0);
         }
      }
      
      public static function §>!K§(param1:String, param2:int) : void
      {
         if(!§,!$§)
         {
            §-!5§(§-!v§,§;!#§,param1,param2,false);
         }
      }
      
      public static function §^"§(param1:String, param2:int) : void
      {
         if(!§,!$§)
         {
            §-!5§(§-!v§,§`,§,param1,param2,false);
         }
      }
      
      public static function §;2§(param1:String) : void
      {
         §-!5§(§`!b§,§7o§,param1,0);
      }
      
      public static function §=!k§(param1:String) : void
      {
         §-!5§(§`!b§,§3;§,param1,0);
      }
      
      public static function §9!a§() : void
      {
         §-!5§(§?w§,§^!-§,null,0);
      }
      
      public static function §,z§() : void
      {
         §-!5§(§?w§,§4R§,null,0);
      }
      
      public static function §4j§() : void
      {
         §-!5§(§%!$§,§+!b§,null,0);
      }
      
      public static function §<u§() : void
      {
         §-!5§(§%!$§,§2M§,null,0);
      }
      
      public static function §3!e§(param1:String) : void
      {
         §-!5§(§%!$§,§>!v§,param1,0);
      }
      
      public static function §<=§() : void
      {
         §-!5§(§%!$§,§^!,§,null,0);
      }
      
      public static function §+!w§() : void
      {
         §-!5§(§%!$§,§9'§,null,0);
      }
      
      public static function §0[§(param1:String, param2:int = 0) : void
      {
         if(!§,!$§)
         {
            §-!5§(§%!$§,§5!a§,param1,param2,false);
         }
      }
      
      public static function §47§(param1:String, param2:int = 0) : void
      {
         if(!§,!$§)
         {
            §-!5§(§%!$§,§ g§,param1,param2,false);
         }
      }
      
      public static function §`!]§(param1:String) : void
      {
         §-!5§(§!d§,§'!_§,param1,0);
      }
      
      public static function §"!@§() : void
      {
         §-!5§(§!d§,§4s§,null,0);
      }
      
      public static function §-4§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §-!5§(§!d§,§@!v§,param1,0);
      }
      
      public static function §>!1§(param1:String) : void
      {
         §-!5§(§!d§,§4!L§,param1,0);
      }
      
      public static function §,!j§(param1:int) : void
      {
         §-!5§(§#1§,§!a§,param1.toString(),param1);
      }
      
      public static function §`I§(param1:String) : void
      {
         §-!5§(§#1§,§6^§,param1,0);
      }
      
      public static function §4!u§(param1:String) : void
      {
         §-!5§(§-G§,param1,"",0,false);
      }
      
      private static function §-!5§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §3!&§;
            if(param5)
            {
               _loc6_ = §!7§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §!7§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §3!&§;
      }
      
      private static function §+o§(param1:Array) : String
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
      
      private static function §<!-§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
