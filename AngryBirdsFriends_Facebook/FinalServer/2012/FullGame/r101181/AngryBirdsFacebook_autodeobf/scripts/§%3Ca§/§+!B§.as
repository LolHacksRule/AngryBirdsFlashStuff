package §<a§
{
   import § "C§.§-!l§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §+!B§ extends §>f§
   {
      
      private static const §`!y§:Boolean = AngryBirdsFP11.§4x§;
      
      private static const §>""§:String = "powerup-used";
      
      private static const §=!`§:String = "level-powerup-used";
      
      private static const §#3§:String = "powerup-" + §5!k§;
      
      private static const §2"%§:String = §5!k§ + "-powerup";
      
      private static const §=!2§:String = "framerate";
      
      private static const §7"§:String = "external-pause";
      
      private static const §6"$§:String = "gift";
      
      private static const §?]§:String = "shop";
      
      private static const §3!,§:String = "brag";
      
      private static const §3%§:String = "invite";
      
      private static const §?g§:String = "avatar";
      
      private static const §7"#§:String = "halloween-shop";
      
      private static const §9w§:String = "warning";
      
      private static const §#"<§:String = "user-statistics";
      
      private static const §2!;§:String = "streaming";
      
      private static const §+o§:String = "external-url";
      
      private static const §`!t§:String = "error";
      
      private static const §-";§:String = "paused";
      
      private static const §%!_§:String = "resumed";
      
      private static const §+"!§:String = "gift-claimed";
      
      private static const §="D§:String = "campaign-gift-claimed";
      
      private static const §>!%§:String = "opened";
      
      private static const § !Y§:String = "product-selected";
      
      private static const §2!y§:String = "product-buy-selected";
      
      private static const §?B§:String = "product-buy-completed";
      
      private static const §4";§:String = "brag-shown";
      
      private static const §>U§:String = "brag-clicked";
      
      private static const §=!<§:String = "friend-clicked";
      
      private static const §`[§:String = "generic-clicked";
      
      private static const §>p§:String = "opened";
      
      private static const §8!r§:String = "set";
      
      private static const §26§:String = "product-set";
      
      private static const §"!I§:String = §2!y§;
      
      private static const §@W§:String = §?B§;
      
      private static const §!!x§:String = "share-clicked";
      
      private static const §<" §:String = "share-completed";
      
      private static const §<;§:String = "download-failed";
      
      private static const §4"$§:String = "3rd-party-cookies-missing";
      
      private static const §4!z§:String = "invalid-level";
      
      private static const §2!I§:String = "flash-var-missing";
      
      private static const §%"A§:String = "friend-count";
      
      private static const §7]§:String = "start";
      
      private static const §#!r§:String = "complete";
      
      private static const §<!F§:String = "error";
      
      private static const §="6§:String = "open";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§]",§,§5!k§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§0@§,§+k§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§>""§,§=!`§,§#3§,§2"%§,§=!2§,§7"§,§6"$§,§?]§,§3!,§,§3%§,§?g§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§`!t§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const § true§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §,"@§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §!!R§:Array = [];
      
      private static var §;" §:int = 0;
      
      private static var §0!Z§:int = 0;
      
      private static var §[!X§:int = 0;
      
      private static var §`"6§:int = 0;
       
      
      public function §+!B§()
      {
         super();
      }
      
      public static function §-o§() : void
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
      
      public static function §@!g§(param1:int, param2:int) : void
      {
         §""1§(§>f§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/clienterror/" + param1));
      }
      
      public static function §""1§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §&!'§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §>f§.trackSampledEvent(_loc4_,§5";§,param1,param2,param3);
      }
      
      public static function §@§(param1:String, param2:String) : void
      {
         var _loc3_:int = §>"%§();
         §@!t§(§>""§,param1,param2,0);
         §@!t§(§=!`§,param2,param1,0);
      }
      
      public static function §[r§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §6;§(param1))
            {
               §@!t§(§#3§,_loc4_,param2,param3);
               §@!t§(§2"%§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §4"%§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§!!R§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §!!R§.length == 0;
         §!!R§.push(param2);
         if(param3)
         {
            _loc6_ = §>f§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §+!B§.§ true§;
            }
         }
         else
         {
            _loc6_ = §>f§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §+!B§.§,"@§;
            }
         }
         if(_loc5_)
         {
            §""1§(_loc6_,param1.toString(),param1);
         }
         §@!t§(§=!2§,_loc6_,param2,param1);
      }
      
      public static function §2§(param1:String, param2:int) : void
      {
         ++§;" §;
         §@!t§(§6"$§,§+"!§,param1,param2);
      }
      
      public static function § "D§() : void
      {
         §@!t§(§6"$§,§="D§,null,0);
      }
      
      public static function §3!o§() : void
      {
         ++§0!Z§;
         §[!X§ = §>"%§();
         §@!t§(§7"§,§-";§,§0!Z§.toString(),§[!X§);
      }
      
      public static function §;W§() : void
      {
         §@!t§(§7"§,§%!_§,"",§>"%§(§[!X§));
      }
      
      public static function §2!D§(param1:String) : void
      {
         if(!§`!y§)
         {
            §@!t§(§7"#§,§>!%§,param1,0);
         }
      }
      
      public static function §<!w§() : void
      {
         if(!§`!y§)
         {
            §@!t§(§?]§,§>!%§,null,0);
         }
      }
      
      public static function §8'§(param1:String) : void
      {
         if(!§`!y§)
         {
            §@!t§(§?]§,§ !Y§,param1,0);
         }
      }
      
      public static function §1n§(param1:String, param2:int) : void
      {
         if(!§`!y§)
         {
            §@!t§(§?]§,§2!y§,param1,param2,false);
         }
      }
      
      public static function §,Z§(param1:String, param2:int) : void
      {
         if(!§`!y§)
         {
            §@!t§(§?]§,§?B§,param1,param2,false);
         }
      }
      
      public static function §%!+§(param1:String) : void
      {
         §@!t§(§3!,§,§4";§,param1,0);
      }
      
      public static function §]!I§(param1:String) : void
      {
         §@!t§(§3!,§,§>U§,param1,0);
      }
      
      public static function §6!3§() : void
      {
         §@!t§(§3%§,§=!<§,null,0);
      }
      
      public static function §&!x§() : void
      {
         §@!t§(§3%§,§`[§,null,0);
      }
      
      public static function §6t§() : void
      {
         §@!t§(§?g§,§>p§,null,0);
      }
      
      public static function §0!H§() : void
      {
         §@!t§(§?g§,§8!r§,null,0);
      }
      
      public static function §#!!§(param1:String) : void
      {
         §@!t§(§?g§,§26§,param1,0);
      }
      
      public static function §1!4§() : void
      {
         §@!t§(§?g§,§!!x§,null,0);
      }
      
      public static function §3!1§() : void
      {
         §@!t§(§?g§,§<" §,null,0);
      }
      
      public static function §'"4§(param1:String, param2:int = 0) : void
      {
         if(!§`!y§)
         {
            §@!t§(§?g§,§"!I§,param1,param2,false);
         }
      }
      
      public static function §[4§(param1:String, param2:int = 0) : void
      {
         if(!§`!y§)
         {
            §@!t§(§?g§,§@W§,param1,param2,false);
         }
      }
      
      public static function § P§(param1:String) : void
      {
         §@!t§(§9w§,§<;§,param1,0);
      }
      
      public static function §?!a§() : void
      {
         §@!t§(§9w§,§4"$§,null,0);
      }
      
      public static function §1"4§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §@!t§(§9w§,§4!z§,param1,0);
      }
      
      public static function §=>§(param1:String) : void
      {
         §@!t§(§9w§,§2!I§,param1,0);
      }
      
      public static function §3!W§(param1:int) : void
      {
         §@!t§(§#"<§,§%"A§,param1.toString(),param1);
      }
      
      public static function §4"D§(param1:String) : void
      {
         §@!t§(§2!;§,§7]§,param1,0);
      }
      
      public static function §``§(param1:String, param2:int) : void
      {
         §@!t§(§2!;§,§<!F§,param1,param2);
      }
      
      public static function §8V§(param1:String) : void
      {
         §@!t§(§2!;§,§#!r§,param1,0);
      }
      
      public static function §[B§(param1:String) : void
      {
         §@!t§(§+o§,§="6§,param1,0);
      }
      
      public static function §;"-§(param1:String) : void
      {
         §@!t§(§`!t§,param1,"",0,false);
      }
      
      private static function §@!t§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §;f§;
            if(param5)
            {
               _loc6_ = §&!'§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §&!'§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §;f§;
      }
      
      private static function §6;§(param1:Array) : String
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
      
      private static function §>"%§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
