package §<!<§
{
   import §9"%§.§4!J§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §%!#§ extends §7c§
   {
      
      private static const §@",§:Boolean = AngryBirdsFP11.§+1§;
      
      private static const §"!7§:String = "powerup-used";
      
      private static const §[" §:String = "level-powerup-used";
      
      private static const §!"%§:String = "powerup-" + § !i§;
      
      private static const §^!G§:String = § !i§ + "-powerup";
      
      private static const §&!I§:String = "framerate";
      
      private static const §7";§:String = "external-pause";
      
      private static const §7"=§:String = "gift";
      
      private static const §9]§:String = "shop";
      
      private static const §0U§:String = "brag";
      
      private static const §3!A§:String = "invite";
      
      private static const §0!c§:String = "avatar";
      
      private static const §=x§:String = "warning";
      
      private static const §`!W§:String = "user-statistics";
      
      private static const §9!l§:String = "streaming";
      
      private static const §=!B§:String = "external-url";
      
      private static const §^K§:String = "error";
      
      private static const §"M§:String = "paused";
      
      private static const §4§:String = "resumed";
      
      private static const §<e§:String = "gift-claimed";
      
      private static const §,!z§:String = "campaign-gift-claimed";
      
      private static const §=9§:String = "opened";
      
      private static const §;a§:String = "product-selected";
      
      private static const §5"6§:String = "product-buy-selected";
      
      private static const §2!M§:String = "product-buy-completed";
      
      private static const §#";§:String = "brag-shown";
      
      private static const §-"<§:String = "brag-clicked";
      
      private static const §'0§:String = "friend-clicked";
      
      private static const §6!§:String = "generic-clicked";
      
      private static const §`"#§:String = "opened";
      
      private static const §1!o§:String = "set";
      
      private static const §"@§:String = "product-set";
      
      private static const §^!t§:String = §5"6§;
      
      private static const §>3§:String = §2!M§;
      
      private static const §^!R§:String = "share-clicked";
      
      private static const §<!w§:String = "share-completed";
      
      private static const §7!p§:String = "download-failed";
      
      private static const §"!q§:String = "3rd-party-cookies-missing";
      
      private static const §3!r§:String = "invalid-level";
      
      private static const § z§:String = "flash-var-missing";
      
      private static const §2!§:String = "friend-count";
      
      private static const §+!4§:String = "start";
      
      private static const §9p§:String = "complete";
      
      private static const §5k§:String = "error";
      
      private static const §3C§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§6!J§,§ !i§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§""6§,§%C§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§"!7§,§[" §,§!"%§,§^!G§,§&!I§,§7";§,§7"=§,§9]§,§0U§,§3!A§,§0!c§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§^K§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §!;§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §6C§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §?!n§:Array = [];
      
      private static var §,!s§:int = 0;
      
      private static var §""8§:int = 0;
      
      private static var §7y§:int = 0;
      
      private static var §@!3§:int = 0;
       
      
      public function §%!#§()
      {
         super();
      }
      
      public static function §;i§() : void
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
      
      public static function §-!O§(param1:int, param2:int) : void
      {
         §'"-§(§7c§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/clienterror/" + param1));
      }
      
      public static function §'"-§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §'t§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §7c§.trackSampledEvent(_loc4_,§8+§,param1,param2,param3);
      }
      
      public static function §"">§(param1:String, param2:String) : void
      {
         var _loc3_:int = §-"'§();
         §2"%§(§"!7§,param1,param2,0);
         §2"%§(§[" §,param2,param1,0);
      }
      
      public static function §+y§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §#!E§(param1))
            {
               §2"%§(§!"%§,_loc4_,param2,param3);
               §2"%§(§^!G§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §7=§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§?!n§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §?!n§.length == 0;
         §?!n§.push(param2);
         if(param3)
         {
            _loc6_ = §7c§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §%!#§.§!;§;
            }
         }
         else
         {
            _loc6_ = §7c§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §%!#§.§6C§;
            }
         }
         if(_loc5_)
         {
            §'"-§(_loc6_,param1.toString(),param1);
         }
         §2"%§(§&!I§,_loc6_,param2,param1);
      }
      
      public static function §`!C§(param1:String, param2:int) : void
      {
         ++§,!s§;
         §2"%§(§7"=§,§<e§,param1,param2);
      }
      
      public static function §?]§() : void
      {
         §2"%§(§7"=§,§,!z§,null,0);
      }
      
      public static function § E§() : void
      {
         ++§""8§;
         §7y§ = §-"'§();
         §2"%§(§7";§,§"M§,§""8§.toString(),§7y§);
      }
      
      public static function §[!x§() : void
      {
         §2"%§(§7";§,§4§,"",§-"'§(§7y§));
      }
      
      public static function §9!N§() : void
      {
         if(!§@",§)
         {
            §2"%§(§9]§,§=9§,null,0);
         }
      }
      
      public static function §;"!§(param1:String) : void
      {
         if(!§@",§)
         {
            §2"%§(§9]§,§;a§,param1,0);
         }
      }
      
      public static function §%!O§(param1:String, param2:int) : void
      {
         if(!§@",§)
         {
            §2"%§(§9]§,§5"6§,param1,param2,false);
         }
      }
      
      public static function §9!7§(param1:String, param2:int) : void
      {
         if(!§@",§)
         {
            §2"%§(§9]§,§2!M§,param1,param2,false);
         }
      }
      
      public static function §"!X§(param1:String) : void
      {
         §2"%§(§0U§,§#";§,param1,0);
      }
      
      public static function §-!a§(param1:String) : void
      {
         §2"%§(§0U§,§-"<§,param1,0);
      }
      
      public static function §0G§() : void
      {
         §2"%§(§3!A§,§'0§,null,0);
      }
      
      public static function §'#§() : void
      {
         §2"%§(§3!A§,§6!§,null,0);
      }
      
      public static function §#!u§() : void
      {
         §2"%§(§0!c§,§`"#§,null,0);
      }
      
      public static function §4!@§() : void
      {
         §2"%§(§0!c§,§1!o§,null,0);
      }
      
      public static function §,w§(param1:String) : void
      {
         §2"%§(§0!c§,§"@§,param1,0);
      }
      
      public static function §9n§() : void
      {
         §2"%§(§0!c§,§^!R§,null,0);
      }
      
      public static function §`6§() : void
      {
         §2"%§(§0!c§,§<!w§,null,0);
      }
      
      public static function §`<§(param1:String, param2:int = 0) : void
      {
         if(!§@",§)
         {
            §2"%§(§0!c§,§^!t§,param1,param2,false);
         }
      }
      
      public static function §@!h§(param1:String, param2:int = 0) : void
      {
         if(!§@",§)
         {
            §2"%§(§0!c§,§>3§,param1,param2,false);
         }
      }
      
      public static function §2!l§(param1:String) : void
      {
         §2"%§(§=x§,§7!p§,param1,0);
      }
      
      public static function §@A§() : void
      {
         §2"%§(§=x§,§"!q§,null,0);
      }
      
      public static function §34§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §2"%§(§=x§,§3!r§,param1,0);
      }
      
      public static function §-!X§(param1:String) : void
      {
         §2"%§(§=x§,§ z§,param1,0);
      }
      
      public static function §@l§(param1:int) : void
      {
         §2"%§(§`!W§,§2!§,param1.toString(),param1);
      }
      
      public static function §+!r§(param1:String) : void
      {
         §2"%§(§9!l§,§+!4§,param1,0);
      }
      
      public static function §'3§(param1:String, param2:int) : void
      {
         §2"%§(§9!l§,§5k§,param1,param2);
      }
      
      public static function §'j§(param1:String) : void
      {
         §2"%§(§9!l§,§9p§,param1,0);
      }
      
      public static function §9!q§(param1:String) : void
      {
         §2"%§(§=!B§,§3C§,param1,0);
      }
      
      public static function §"!1§(param1:String) : void
      {
         §2"%§(§^K§,param1,"",0,false);
      }
      
      private static function §2"%§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §7-§;
            if(param5)
            {
               _loc6_ = §'t§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §'t§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §7-§;
      }
      
      private static function §#!E§(param1:Array) : String
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
      
      private static function §-"'§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
