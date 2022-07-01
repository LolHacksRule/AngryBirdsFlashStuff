package §&!>§
{
   import §#!n§.§3!s§;
   import §%f§.§"!i§;
   import §%f§.§[@§;
   import §2!"§.§8K§;
   import §=0§.HighscoreSidebar;
   import §^t§.§4!C§;
   import com.angrybirds.utils.§[!k§;
   import com.angrybirds.utils.§`2§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §,!1§ implements §[!k§
   {
       
      
      private var §2" §:§'!x§;
      
      public function §,!1§(param1:§'!x§)
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
         var _loc8_:int = 0;
         var _loc2_:Object = §`2§.§#!l§((param1.currentTarget as URLLoader).data);
         this.§2" §.§+0§.close();
         if(_loc2_ && _loc2_.security)
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
            if(_loc2_.tutorials is Array)
            {
               for each(_loc7_ in _loc2_.tutorials)
               {
                  (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.setTutorialSeen(_loc7_);
               }
            }
            if(_loc2_.chapters is Array)
            {
               for each(_loc8_ in _loc2_.chapters)
               {
                  §2!V§.§!!?§.§8!2§(_loc8_);
               }
            }
            §2!V§.§]n§();
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§`!K§ = true;
            (_loc4_ = (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§%!j§).reset();
            _loc4_.§>!,§();
            _loc4_.§@!Z§(HighscoreSidebar.§ x§);
            (§-O§.§5!1§ as AngryBirdsCustom).§9]§.§;!D§();
            §"!i§.§&!R§(§"!i§.§2=§);
            _loc5_ = §[@§.§"e§.§1-§().toLowerCase() + "_" + §[@§.§"e§.§]f§().toUpperCase();
            §4!C§.§6'§("onFlashLanguageChange",_loc5_);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§`O§);
            this.§2" §.dispatchEvent(_loc6_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§%!,§ = _loc2_.error;
            this.§2" §.dispatchEvent(_loc6_);
            §"!i§.§&!R§(§"!i§.§8!j§);
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
