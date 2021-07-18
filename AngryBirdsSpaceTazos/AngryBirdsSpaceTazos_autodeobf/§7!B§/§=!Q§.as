package §7!B§
{
   import § !Y§.§="6§;
   import §!?§.§'k§;
   import §3D§.HighscoreSidebar;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §9y§.§8"3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §=!Q§ implements §-!^§
   {
       
      
      private var §6">§:§@"@§;
      
      public function §=!Q§(param1:§@"@§)
      {
         super();
         this.§6">§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:LoginHandlerEvent = null;
         var _loc6_:String = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         this.§6">§.§4>§.close();
         if(_loc2_ && _loc2_.security)
         {
            §@!^§.§2j§ = new §?A§();
            §@!^§.§2j§.name = _loc2_.nickName;
            §@!^§.§2j§.id = _loc2_.id;
            §@!^§.§2j§.§,!0§ = _loc2_.security;
            §@!^§.§2j§.episodeScore1 = _loc2_.sc1;
            §@!^§.§2j§.episodeScore2 = _loc2_.sc2;
            §@!^§.§2j§.episodeScore3 = _loc2_.sc3;
            §@!^§.§2j§.episodeStars1 = _loc2_.st1;
            §@!^§.§2j§.episodeStars2 = _loc2_.st2;
            §@!^§.§2j§.episodeStars3 = _loc2_.st3;
            §@!^§.§2j§.stars = §@!^§.§2j§.episodeStars1 + §@!^§.§2j§.episodeStars2 + §@!^§.§2j§.episodeStars3;
            §@!^§.§2j§.starsNeededToUnlockEpisode2 = _loc2_.min2;
            §@!^§.§2j§.starsNeededToUnlockEpisode3 = _loc2_.min3;
            §@!^§.§2j§.verified = _loc2_.verified;
            §@!^§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §@!^§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §'k§.§6d§(§@!^§.levelProfile);
            if(_loc3_ != §@!^§.levelProfileSecurity)
            {
               §@!^§.§2j§ = new §?A§();
               (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = "SECURITY_ERROR";
               this.§6">§.dispatchEvent(_loc5_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc6_ in _loc2_.tutorials)
               {
                  (§ !g§.§;!'§ as §`Y§).§]]§.§8R§(_loc6_);
               }
            }
            §@!^§.§;!Y§();
            (§ !g§.§;!'§ as §`Y§).§]]§.§?m§ = true;
            (_loc4_ = (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§).reset();
            _loc4_.§!!I§();
            _loc4_.changeState(HighscoreSidebar.§9"§);
            (§ !g§.§;!'§ as §`Y§).§&,§.§1M§();
            §="6§.§^!U§(§="6§.§+!C§);
            _loc5_ = new LoginHandlerEvent(LoginHandlerEvent.§!"8§);
            this.§6">§.dispatchEvent(_loc5_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§#5§ = _loc2_.error;
            this.§6">§.dispatchEvent(_loc5_);
            §="6§.§^!U§(§="6§.§@!>§);
         }
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§#5§ = §8"3§.CONNECTION_ERROR_RETRY;
         this.§6">§.dispatchEvent(_loc2_);
      }
   }
}
