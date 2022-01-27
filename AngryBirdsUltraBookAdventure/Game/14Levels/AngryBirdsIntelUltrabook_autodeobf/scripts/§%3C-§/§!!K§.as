package §<-§
{
   import §-^§.§7!6§;
   import flash.net.URLLoader;
   import flash.utils.getTimer;
   
   public class §!!K§ extends §5Z§
   {
      
      private static const §,!S§:Boolean = AngryBirdsFP11.§?C§;
      
      private static const §,g§:String = "powerup-used";
      
      private static const §8h§:String = "level-powerup-used";
      
      private static const §7!;§:String = "powerup-" + §0O§;
      
      private static const §"W§:String = §0O§ + "-powerup";
      
      private static const §&7§:String = "framerate";
      
      private static const §'+§:String = "external-pause";
      
      private static const §7!H§:String = "gift";
      
      private static const §3!§:String = "shop";
      
      private static const §5R§:String = "brag";
      
      private static const §6`§:String = "invite";
      
      private static const §5!a§:String = "avatar";
      
      private static const §?!f§:String = "warning";
      
      private static const §4!"§:String = "user-statistics";
      
      private static const § y§:String = "error";
      
      private static const § 1§:String = "paused";
      
      private static const §91§:String = "resumed";
      
      private static const §<!H§:String = "gift-claimed";
      
      private static const §%!e§:String = "campaign-gift-claimed";
      
      private static const §"!0§:String = "opened";
      
      private static const §]!l§:String = "product-selected";
      
      private static const §&;§:String = "product-buy-selected";
      
      private static const §<b§:String = "product-buy-completed";
      
      private static const §&!2§:String = "brag-shown";
      
      private static const §3Z§:String = "brag-clicked";
      
      private static const §3!U§:String = "friend-clicked";
      
      private static const §%S§:String = "generic-clicked";
      
      private static const §9V§:String = "opened";
      
      private static const §-!1§:String = "set";
      
      private static const §;d§:String = "product-set";
      
      private static const §28§:String = §&;§;
      
      private static const §+h§:String = §<b§;
      
      private static const §,&§:String = "share-clicked";
      
      private static const §=!Y§:String = "share-completed";
      
      private static const §%!z§:String = "download-failed";
      
      private static const §%#§:String = "3rd-party-cookies-missing";
      
      private static const §9q§:String = "invalid-level";
      
      private static const §5!§:String = "flash-var-missing";
      
      private static const §?g§:String = "friend-count";
      
      private static const §#S§:String = "advertisement-click";
      
      private static const SAMPLE_1_PERCENT_FLASH_ACTIONS:Array = [§[@§,§0O§];
      
      private static const SAMPLE_100_PERCENT_FLASH_ACTIONS:Array = [ACTION_APPLICATION_CRASH,§^,§,§<!q§];
      
      private static const SAMPLE_1_PERCENT_CATEGORIES:Array = [§,g§,§8h§,§7!;§,§"W§,§&7§,§'+§,§7!H§,§3!§,§5R§,§6`§,§5!a§];
      
      private static const SAMPLE_100_PERCENT_CATEGORIES:Array = [§ y§];
      
      private static const FULL_SCREEN:String = "-full-screen";
      
      private static const §"!B§:String = ACTION_CPU_FPS_REPORT + FULL_SCREEN;
      
      private static const §-!3§:String = ACTION_GPU_FPS_REPORT + FULL_SCREEN;
      
      private static var sSample10Percent:Boolean = false;
      
      private static var sSample1Percent:Boolean = false;
      
      private static var §4!]§:Array = [];
      
      private static var §&f§:int = 0;
      
      private static var §<!e§:int = 0;
      
      private static var §%!X§:int = 0;
      
      private static var §+!X§:int = 0;
       
      
      public function §!!K§()
      {
         super();
      }
      
      public static function §`!m§() : void
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
      
      public static function §]!M§(param1:int, param2:int) : void
      {
         §&!v§(§5Z§.ACTION_APPLICATION_CRASH,param1.toString(),param2);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.load(§7!6§.§7V§(AngryBirdsFP11.§[!S§ + "/clienterror/" + param1));
      }
      
      public static function §&!v§(param1:String, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:String = §4b§(param1,SAMPLE_100_PERCENT_FLASH_ACTIONS,SAMPLE_1_PERCENT_FLASH_ACTIONS);
         §5Z§.trackSampledEvent(_loc4_,§^!u§,param1,param2,param3);
      }
      
      public static function §[v§(param1:String, param2:String) : void
      {
         var _loc3_:int = §8!<§();
         §89§(§,g§,param1,param2,0);
         §89§(§8h§,param2,param1,0);
      }
      
      public static function §9s§(param1:Array, param2:String, param3:int) : void
      {
         var _loc4_:String = null;
         if(enabled)
         {
            if(_loc4_ = §=S§(param1))
            {
               §89§(§7!;§,_loc4_,param2,param3);
               §89§(§"W§,param2,_loc4_,param3);
            }
         }
      }
      
      public static function §&U§(param1:int, param2:String, param3:Boolean, param4:Boolean) : void
      {
         var _loc6_:String = null;
         if(§4!]§.indexOf(param2) >= 0)
         {
            return;
         }
         var _loc5_:* = §4!]§.length == 0;
         §4!]§.push(param2);
         if(param3)
         {
            _loc6_ = §5Z§.ACTION_CPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!!K§.§"!B§;
            }
         }
         else
         {
            _loc6_ = §5Z§.ACTION_GPU_FPS_REPORT;
            if(param4)
            {
               _loc6_ = §!!K§.§-!3§;
            }
         }
         if(_loc5_)
         {
            §&!v§(_loc6_,param1.toString(),param1);
         }
         §89§(§&7§,_loc6_,param2,param1);
      }
      
      public static function §+[§(param1:String, param2:int) : void
      {
         ++§&f§;
         §89§(§7!H§,§<!H§,param1,param2);
      }
      
      public static function §@!S§() : void
      {
         §89§(§7!H§,§%!e§,null,0);
      }
      
      public static function §=E§() : void
      {
         ++§<!e§;
         §%!X§ = §8!<§();
         §89§(§'+§,§ 1§,§<!e§.toString(),§%!X§);
      }
      
      public static function §2!k§() : void
      {
         §89§(§'+§,§91§,"",§8!<§(§%!X§));
      }
      
      public static function §6!j§() : void
      {
         if(!§,!S§)
         {
            §89§(§3!§,§"!0§,null,0);
         }
      }
      
      public static function §1!o§(param1:String) : void
      {
         if(!§,!S§)
         {
            §89§(§3!§,§]!l§,param1,0);
         }
      }
      
      public static function §if §(param1:String, param2:int) : void
      {
         if(!§,!S§)
         {
            §89§(§3!§,§&;§,param1,param2,false);
         }
      }
      
      public static function §4"§(param1:String, param2:int) : void
      {
         if(!§,!S§)
         {
            §89§(§3!§,§<b§,param1,param2,false);
         }
      }
      
      public static function §<]§(param1:String) : void
      {
         §89§(§5R§,§&!2§,param1,0);
      }
      
      public static function §-!=§(param1:String) : void
      {
         §89§(§5R§,§3Z§,param1,0);
      }
      
      public static function §8'§() : void
      {
         §89§(§6`§,§3!U§,null,0);
      }
      
      public static function §0!'§() : void
      {
         §89§(§6`§,§%S§,null,0);
      }
      
      public static function §+!F§() : void
      {
         §89§(§5!a§,§9V§,null,0);
      }
      
      public static function §+!@§() : void
      {
         §89§(§5!a§,§-!1§,null,0);
      }
      
      public static function §-G§(param1:String) : void
      {
         §89§(§5!a§,§;d§,param1,0);
      }
      
      public static function §-z§() : void
      {
         §89§(§5!a§,§,&§,null,0);
      }
      
      public static function §'!s§() : void
      {
         §89§(§5!a§,§=!Y§,null,0);
      }
      
      public static function §^!X§(param1:String, param2:int = 0) : void
      {
         if(!§,!S§)
         {
            §89§(§5!a§,§28§,param1,param2,false);
         }
      }
      
      public static function §,! §(param1:String, param2:int = 0) : void
      {
         if(!§,!S§)
         {
            §89§(§5!a§,§+h§,param1,param2,false);
         }
      }
      
      public static function §<J§(param1:String) : void
      {
         §89§(§?!f§,§%!z§,param1,0);
      }
      
      public static function §%!,§() : void
      {
         §89§(§?!f§,§%#§,null,0);
      }
      
      public static function §4R§(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "[null]";
         }
         else if(param1.length == 0)
         {
            param1 = "[empty]";
         }
         §89§(§?!f§,§9q§,param1,0);
      }
      
      public static function §1,§(param1:String) : void
      {
         §89§(§?!f§,§5!§,param1,0);
      }
      
      public static function §5!%§(param1:int) : void
      {
         §89§(§4!"§,§?g§,param1.toString(),param1);
      }
      
      public static function §%$§(param1:String) : void
      {
         §89§(§4!"§,§#S§,param1,0);
      }
      
      public static function §<3§(param1:String) : void
      {
         §89§(§ y§,param1,"",0,false);
      }
      
      private static function §89§(param1:String, param2:String, param3:String, param4:int, param5:Boolean = true) : void
      {
         var _loc6_:String = null;
         if(enabled)
         {
            _loc6_ = §``§;
            if(param5)
            {
               _loc6_ = §4b§(param1,SAMPLE_100_PERCENT_CATEGORIES,SAMPLE_1_PERCENT_CATEGORIES);
            }
            trackSampledEvent(_loc6_,param1,param2,param3,param4);
         }
      }
      
      private static function §4b§(param1:String, param2:Array, param3:Array) : String
      {
         if(param3.indexOf(param1) >= 0)
         {
            return TRACKING_FUNCTION_1_PERCENT;
         }
         if(param2.indexOf(param1) < 0)
         {
            return TRACKING_FUNCTION_10_PERCENT;
         }
         return §``§;
      }
      
      private static function §=S§(param1:Array) : String
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
      
      private static function §8!<§(param1:int = 0) : int
      {
         return getTimer() / 1000 - param1;
      }
   }
}
