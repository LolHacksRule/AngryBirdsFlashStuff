package §]+§
{
   import §7X§.§+!p§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §@!J§ extends §%!M§
   {
      
      private static const §^!5§:Boolean = AngryBirdsFP11.§@a§;
      
      private static const §=!0§:String = "powerup-used";
      
      private static const §3&§:String = "level-powerup-used";
      
      private static const §+r§:String = "powerup-" + §]-§;
      
      private static const §`!x§:String = §]-§ + "-powerup";
      
      private static const §5>§:String = "framerate";
      
      private static const §5!9§:String = "external-pause";
      
      private static const §84§:String = "gift";
      
      private static const § n§:String = "shop";
      
      private static const §?>§:String = "brag";
      
      private static const §'N§:String = "invite";
      
      private static const §@!T§:String = "avatar";
      
      private static const §7p§:String = "warning";
      
      private static const §'L§:String = "user-statistics";
      
      private static const §1!l§:String = "error";
      
      private static const §;!'§:String = "paused";
      
      private static const §0!v§:String = "resumed";
      
      private static const §@§:String = "gift-claimed";
      
      private static const §`!!§:String = "campaign-gift-claimed";
      
      private static const §3B§:String = "opened";
      
      private static const §%!<§:String = "product-selected";
      
      private static const §=R§:String = "product-buy-selected";
      
      private static const §,k§:String = "product-buy-completed";
      
      private static const §9§:String = "brag-shown";
      
      private static const §7T§:String = "brag-clicked";
      
      private static const §7!s§:String = "friend-clicked";
      
      private static const §8!_§:String = "generic-clicked";
      
      private static const §&=§:String = "opened";
      
      private static const §`Z§:String = "set";
      
      private static const §<d§:String = "product-set";
      
      private static const §8d§:String = §=R§;
      
      private static const §#`§:String = §,k§;
      
      private static const §7'§:String = "share-clicked";
      
      private static const §&!t§:String = "share-completed";
      
      private static const §2!;§:String = "download-failed";
      
      private static const §6i§:String = "3rd-party-cookies-missing";
      
      private static const §0!I§:String = "invalid-level";
      
      private static const §&7§:String = "flash-var-missing";
      
      private static const § !_§:String = "friend-count";
      
      private static const §3%§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§4U§,§]-§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§-c§,§<!J§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§=!0§,§3&§,§+r§,§`!x§,§5>§,§5!9§,§84§,§ n§,§?>§,§'N§,§@!T§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§1!l§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §%=§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §5H§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §;!7§:Array = [];
      
      private static var §"!X§:int = 0;
      
      private static var §?w§:int = 0;
      
      private static var §30§:int = 0;
      
      private static var §!9§:int = 0;
       
      
      public function §@!J§()
      {
         super();
      }
      
      public static function §]![§() : void
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
      
      public static function §'0§(param1:int, param2:int) : void
      {
         §[!G§(§%!M§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§+!p§.§`;§(AngryBirdsFP11.§;!1§ + "/clienterror/" + param1));
      }
      
      public static function §[!G§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = § for§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §%!M§.trackSampledEvent(_loc4_,§4i§,param1,param2,param3);
      }
      
      public static function §'!?§(param1:String, param2:String) : void
      {
         var _loc3_:int = §!!,§();
         §!!R§(§=!0§,param1,param2,0);
         §!!R§(§3&§,param2,param1,0);
      }
      
      public static function §+k§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §#S§(param1))
            {
               §!!R§(§+r§,_loc4_,param2,param3);
               §!!R§(§`!x§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §8!z§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§;!7§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §;!7§.length == 0;
         §;!7§.push(param2);
         if(param3)
         {
            _loc6_ = §%!M§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@!J§.§%=§;
            }
         }
         else
         {
            _loc6_ = §%!M§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §@!J§.§5H§;
            }
         }
         if(_loc5_)
         {
            §[!G§(_loc6_,param1.toString(),param1);
         }
         §!!R§(§5>§,_loc6_,param2,param1);
      }
      
      public static function §<"§(param1:String, param2:int) : void
      {
         ++§"!X§;
         §!!R§(§84§,§@§,param1,param2);
      }
      
      public static function §>Z§() : void
      {
         §!!R§(§84§,§`!!§,null,0);
      }
      
      public static function §9]§() : void
      {
         ++§?w§;
         §30§ = §!!,§();
         §!!R§(§5!9§,§;!'§,§?w§.toString(),§30§);
      }
      
      public static function §3!q§() : void
      {
         §!!R§(§5!9§,§0!v§,"",§!!,§(§30§));
      }
      
      public static function §?a§() : void
      {
         if(!§^!5§)
         {
            §!!R§(§ n§,§3B§,null,0);
         }
      }
      
      public static function §[q§(param1:String) : void
      {
         if(!§^!5§)
         {
            §!!R§(§ n§,§%!<§,param1,0);
         }
      }
      
      public static function §81§(param1:String, param2:int) : void
      {
         if(!§^!5§)
         {
            §!!R§(§ n§,§=R§,param1,param2,false);
         }
      }
      
      public static function §4!n§(param1:String, param2:int) : void
      {
         if(!§^!5§)
         {
            §!!R§(§ n§,§,k§,param1,param2,false);
         }
      }
      
      public static function § K§(param1:String) : void
      {
         §!!R§(§?>§,§9§,param1,0);
      }
      
      public static function §6>§(param1:String) : void
      {
         §!!R§(§?>§,§7T§,param1,0);
      }
      
      public static function §+!F§() : void
      {
         §!!R§(§'N§,§7!s§,null,0);
      }
      
      public static function §3n§() : void
      {
         §!!R§(§'N§,§8!_§,null,0);
      }
      
      public static function §4!"§() : void
      {
         §!!R§(§@!T§,§&=§,null,0);
      }
      
      public static function §^k§() : void
      {
         §!!R§(§@!T§,§`Z§,null,0);
      }
      
      public static function §]!3§(param1:String) : void
      {
         §!!R§(§@!T§,§<d§,param1,0);
      }
      
      public static function §7!0§() : void
      {
         §!!R§(§@!T§,§7'§,null,0);
      }
      
      public static function §;J§() : void
      {
         §!!R§(§@!T§,§&!t§,null,0);
      }
      
      public static function §-;§(param1:String, param2:int = 0) : void
      {
         if(!§^!5§)
         {
            §!!R§(§@!T§,§8d§,param1,param2,false);
         }
      }
      
      public static function §]!D§(param1:String, param2:int = 0) : void
      {
         if(!§^!5§)
         {
            §!!R§(§@!T§,§#`§,param1,param2,false);
         }
      }
      
      public static function §4t§(param1:String) : void
      {
         §!!R§(§7p§,§2!;§,param1,0);
      }
      
      public static function §"!C§() : void
      {
         §!!R§(§7p§,§6i§,null,0);
      }
      
      public static function §@8§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §!!R§(§7p§,§0!I§,param1,0);
      }
      
      public static function §&B§(param1:String) : void
      {
         §!!R§(§7p§,§&7§,param1,0);
      }
      
      public static function §<!=§(param1:int) : void
      {
         §!!R§(§'L§,§ !_§,param1.toString(),param1);
      }
      
      public static function §!v§(param1:String) : void
      {
         §!!R§(§'L§,§3%§,param1,0);
      }
      
      public static function §#D§(param1:String) : void
      {
         §!!R§(§1!l§,param1,"",0,false);
      }
      
      private static function §!!R§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §2!6§;
            if(param5)
            {
               _loc6_ = § for§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function § for§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §2!6§;
      }
      
      private static function §#S§(param1:Array) : String
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
      
      private static function §!!,§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
