package §4[§
{
   import §1![§.§#E§;
   import §4!i§.§0!<§;
   import §4!i§.§@"#§;
   import §;V§.§%c§;
   import §<S§.HighscoreSidebar;
   import §[!5§.§2p§;
   import com.angrybirds.utils.§2!N§;
   import com.angrybirds.utils.§30§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §`A§ implements §30§
   {
       
      
      private var §3!+§:§4Z§;
      
      public function §`A§(param1:§4Z§)
      {
         super();
         this.§3!+§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc2_:Object = §2!N§.§6l§((param1.currentTarget as URLLoader).data);
         this.§3!+§.§3!p§.close();
         if(_loc2_ && _loc2_.security)
         {
            §2P§.§[!$§ = new §<!o§();
            §2P§.§[!$§.name = _loc2_.nickName;
            §2P§.§[!$§.id = _loc2_.id;
            §2P§.§[!$§.§&"!§ = _loc2_.security;
            §2P§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §2P§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §#E§.§0"$§(§2P§.levelProfile);
            if(_loc3_ != §2P§.levelProfileSecurity)
            {
               §2P§.§[!$§ = new §<!o§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§1X§ = "SECURITY_ERROR";
               this.§3!+§.dispatchEvent(_loc6_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc7_ in _loc2_.tutorials)
               {
                  (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.setTutorialSeen(_loc7_);
               }
            }
            if(_loc2_.chapters is Array)
            {
               for each(_loc8_ in _loc2_.chapters)
               {
                  §2P§.§[!$§.§switch§(_loc8_);
               }
            }
            §2P§.§-l§();
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§5!z§ = true;
            (_loc4_ = (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§08§).reset();
            _loc4_.§5!Z§();
            _loc4_.§@w§(HighscoreSidebar.§+i§);
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§@!0§();
            §0!<§.§1x§(§0!<§.§+!-§);
            _loc5_ = §@"#§.§,2§.§2"2§().toLowerCase() + "_" + §@"#§.§,2§.§0!x§().toUpperCase();
            §%c§.§6"§("onFlashLanguageChange",_loc5_);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§8h§);
            this.§3!+§.dispatchEvent(_loc6_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§1X§ = _loc2_.error;
            this.§3!+§.dispatchEvent(_loc6_);
            §0!<§.§1x§(§0!<§.§5e§);
         }
      }
      
      public function §?!§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'![§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§1X§ = §2p§.CONNECTION_ERROR_RETRY;
         this.§3!+§.dispatchEvent(_loc2_);
      }
   }
}
