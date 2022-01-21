package §7!N§
{
   import §#!q§.§6!?§;
   import §+J§.§?!'§;
   import §1!^§.§,!n§;
   import §9!$§.HighscoreSidebar;
   import §<! §.§#!b§;
   import §<! §.§1!6§;
   import §<! §.§<<§;
   import §]w§.§8!L§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §,I§ implements §<<§
   {
       
      
      public function §,I§()
      {
         super();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = §1!6§.§>o§((param1.currentTarget as URLLoader).data);
         if(_loc2_.security)
         {
            §0-§.§6!&§ = new §?!'§();
            §0-§.§6!&§.name = _loc2_.nickName;
            §0-§.§6!&§.email = _loc2_.id;
            §0-§.§6!&§.§7!j§ = _loc2_.security;
            §0-§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §0-§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §,!n§.§@j§(§0-§.levelProfile);
            if(_loc3_ != §0-§.levelProfileSecurity)
            {
               §0-§.§6!&§ = new §?!'§();
               §2'§.sHighscoreSidebar.enableCreditsButton(true);
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+!K§ = "SECURITY_ERROR";
               §3!0§.§9$§.dispatchEvent(_loc4_);
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §9!_§.§1!?§.overallScore = _loc2_.overallScore;
            }
            §0-§.§5!^§();
            §9!_§.§1!?§.§`2§ = true;
            §2'§.sHighscoreSidebar.§<e§();
            §2'§.sHighscoreSidebar.changeState(HighscoreSidebar.§2!R§);
            §8!L§.§9$§.§-!<§();
            §6!?§.§>!I§(§6!?§.§^0§);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§<>§);
            §3!0§.§9$§.dispatchEvent(_loc4_);
         }
         else if(_loc2_.error)
         {
            §2'§.sHighscoreSidebar.enableCreditsButton(true);
            _loc5_ = _loc2_.error;
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+!K§ = _loc5_;
            §3!0§.§9$§.dispatchEvent(_loc4_);
            §6!?§.§>!I§(§6!?§.§45§);
         }
      }
      
      public function § !X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §-;§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§+!K§ = §#!b§.CONNECTION_ERROR_RETRY;
         §3!0§.§9$§.dispatchEvent(_loc2_);
         §2'§.sHighscoreSidebar.enableCreditsButton(true);
      }
   }
}
