package §-!G§
{
   import §&5§.HighscoreSidebar;
   import §,!9§.§>"$§;
   import §?-§.§do §;
   import §[j§.§%p§;
   import §`6§.§!!]§;
   import §`6§.§6,§;
   import com.angrybirds.utils.§!!^§;
   import com.angrybirds.utils.§?§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §-!§ implements §!!^§
   {
       
      
      private var §2!b§:§]!V§;
      
      public function §-!§(param1:§]!V§)
      {
         super();
         this.§2!b§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc2_:Object = §?§.§8!B§((param1.currentTarget as URLLoader).data);
         this.§2!b§.§9L§.close();
         if(_loc2_ && _loc2_.security)
         {
            §!!Y§.§9!L§ = new §"$§();
            §!!Y§.§9!L§.name = _loc2_.nickName;
            §!!Y§.§9!L§.id = _loc2_.id;
            §!!Y§.§9!L§.§4!z§ = _loc2_.security;
            §!!Y§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §!!Y§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §%p§.§3m§(§!!Y§.levelProfile);
            if(_loc3_ != §!!Y§.levelProfileSecurity)
            {
               §!!Y§.§9!L§ = new §"$§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@!;§ = "SECURITY_ERROR";
               this.§2!b§.dispatchEvent(_loc6_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc7_ in _loc2_.tutorials)
               {
                  (§-!l§.§"x§ as AngryBirdsCustom).§7f§.setTutorialSeen(_loc7_);
               }
            }
            if(_loc2_.chapters is Array)
            {
               for each(_loc8_ in _loc2_.chapters)
               {
                  §!!Y§.§9!L§.§^"$§(_loc8_);
               }
            }
            §!!Y§.§>!k§();
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§&!P§ = true;
            (_loc4_ = (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§,!-§).reset();
            _loc4_.§1!4§();
            _loc4_.§0!"§(HighscoreSidebar.§%!3§);
            (§-!l§.§"x§ as AngryBirdsCustom).§catch§.§6c§();
            §6,§.§8"0§(§6,§.§;G§);
            _loc5_ = §!!]§.§?!+§.§[!;§().toLowerCase() + "_" + §!!]§.§?!+§.§<N§().toUpperCase();
            §do §.§>"-§("onFlashLanguageChange",_loc5_);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§6!$§);
            this.§2!b§.dispatchEvent(_loc6_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§@!;§ = _loc2_.error;
            this.§2!b§.dispatchEvent(_loc6_);
            §6,§.§8"0§(§6,§.§7'§);
         }
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&!`§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§@!;§ = §>"$§.CONNECTION_ERROR_RETRY;
         this.§2!b§.dispatchEvent(_loc2_);
      }
   }
}
