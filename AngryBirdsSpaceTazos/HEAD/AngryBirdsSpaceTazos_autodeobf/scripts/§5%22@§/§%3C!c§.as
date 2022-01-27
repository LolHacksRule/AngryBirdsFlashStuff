package §5"@§
{
   import §%!P§.§7""§;
   import §4u§.§1y§;
   import §>!x§.HighscoreSidebar;
   import §[z§.§4!L§;
   import §[z§.§[!A§;
   import §`>§.§>7§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §<!c§ implements §[!A§
   {
       
      
      private var §>!Z§:§0x§;
      
      public function §<!c§(param1:§0x§)
      {
         super();
         this.§>!Z§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:LoginHandlerEvent = null;
         var _loc6_:String = null;
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         this.§>!Z§.§8v§.close();
         if(_loc2_.security)
         {
            §1!N§.§,!<§ = new §!"'§();
            §1!N§.§,!<§.name = _loc2_.nickName;
            §1!N§.§,!<§.id = _loc2_.id;
            §1!N§.§,!<§.§?"#§ = _loc2_.security;
            §1!N§.§,!<§.episodeScore1 = _loc2_.sc1;
            §1!N§.§,!<§.episodeScore2 = _loc2_.sc2;
            §1!N§.§,!<§.episodeScore3 = _loc2_.sc3;
            §1!N§.§,!<§.episodeStars1 = _loc2_.st1;
            §1!N§.§,!<§.episodeStars2 = _loc2_.st2;
            §1!N§.§,!<§.episodeStars3 = _loc2_.st3;
            §1!N§.§,!<§.stars = §1!N§.§,!<§.episodeStars1 + §1!N§.§,!<§.episodeStars2 + §1!N§.§,!<§.episodeStars3;
            §1!N§.§,!<§.starsNeededToUnlockEpisode2 = _loc2_.min2;
            §1!N§.§,!<§.starsNeededToUnlockEpisode3 = _loc2_.min3;
            §1!N§.§,!<§.verified = _loc2_.verified;
            §1!N§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §1!N§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §7""§.§^!`§(§1!N§.levelProfile);
            if(_loc2_.verified && _loc3_ != §1!N§.levelProfileSecurity)
            {
               §1!N§.§,!<§ = new §!"'§();
               (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+%§ = "SECURITY_ERROR";
               this.§>!Z§.dispatchEvent(_loc5_);
               return;
            }
            §1!N§.§]N§();
            (§2&§.§6o§ as §@T§).§'"5§.§ ^§ = true;
            §1y§.§<>§(§1y§.§9"5§);
            _loc5_ = new LoginHandlerEvent(LoginHandlerEvent.§,!!§);
            this.§>!Z§.dispatchEvent(_loc5_);
            (_loc4_ = (§2&§.§6o§ as §@T§).§56§.§`a§).reset();
            _loc4_.§4!o§();
            _loc4_.changeState(HighscoreSidebar.§#!V§);
            (§2&§.§6o§ as §@T§).§56§.§&&§();
         }
         else if(_loc2_.error)
         {
            _loc6_ = _loc2_.error;
            (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§+%§ = _loc6_;
            this.§>!Z§.dispatchEvent(_loc5_);
            §1y§.§<>§(§1y§.§`!v§);
         }
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§+%§ = §>7§.CONNECTION_ERROR_RETRY;
         this.§>!Z§.dispatchEvent(_loc2_);
      }
   }
}
