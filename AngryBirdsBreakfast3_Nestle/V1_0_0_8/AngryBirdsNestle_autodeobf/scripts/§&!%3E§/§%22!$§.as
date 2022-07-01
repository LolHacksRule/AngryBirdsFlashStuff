package §&!>§
{
   import §#!n§.§3!s§;
   import §%f§.§"!i§;
   import §%f§.§[@§;
   import §,#§.§=%§;
   import §2!"§.§8K§;
   import §=0§.HighscoreSidebar;
   import §^t§.§4!C§;
   import com.angrybirds.utils.§[!k§;
   import com.angrybirds.utils.§`2§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §"!$§ implements §[!k§
   {
       
      
      private var §2" §:§'!x§;
      
      public function §"!$§(param1:§'!x§)
      {
         super();
         this.§2" § = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc2_:Object = §`2§.§#!l§((param1.currentTarget as URLLoader).data);
         this.§2" §.§+0§.close();
         if(_loc2_.security)
         {
            §2!V§.§!!?§ = new §7!B§();
            §2!V§.§!!?§.name = _loc2_.nickName;
            §2!V§.§!!?§.id = _loc2_.id;
            §2!V§.§!!?§.§"Q§ = _loc2_.security;
            §2!V§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §2!V§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §3!s§.§'!;§(§2!V§.levelProfile);
            if(_loc3_ != §2!V§.levelProfileSecurity)
            {
               §2!V§.§!!?§ = new §7!B§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§%!,§ = "SECURITY_ERROR";
               this.§2" §.dispatchEvent(_loc6_);
               return;
            }
            §2!V§.§]n§();
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§`!K§ = true;
            §"!i§.§&!R§(§"!i§.§>!9§);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§%P§);
            this.§2" §.dispatchEvent(_loc6_);
            (_loc4_ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§).reset();
            _loc4_.§>!,§();
            _loc4_.§@!Z§(HighscoreSidebar.§ x§);
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§;!D§();
            (§-O§.§5!1§ as AngryBirdsCustom).§'"6§(§=%§.§'u§);
            _loc5_ = §[@§.§"e§.§1-§().toLowerCase() + "_" + §[@§.§"e§.§]f§().toUpperCase();
            §4!C§.§6'§("onFlashLanguageChange",_loc5_);
         }
         else if(_loc2_.error)
         {
            _loc7_ = _loc2_.error;
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§%!,§ = _loc7_;
            _loc6_.field = _loc2_.field;
            this.§2" §.dispatchEvent(_loc6_);
            §"!i§.§&!R§(§"!i§.§?v§);
         }
      }
      
      public function §0!n§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4J§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§%!,§ = §8K§.CONNECTION_ERROR_RETRY;
         this.§2" §.dispatchEvent(_loc2_);
      }
   }
}
