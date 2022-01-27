package §6"6§
{
   import §""%§.§#`§;
   import §'#§.§9Y§;
   import §4!x§.§`[§;
   import §4!x§.§`q§;
   import §5s§.§ !_§;
   import §7!s§.HighscoreSidebar;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §<Z§ implements §`[§
   {
       
      
      private var §1!^§:§>o§;
      
      public function §<Z§(param1:§>o§)
      {
         super();
         this.§1!^§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:LoginHandlerEvent = null;
         var _loc6_:String = null;
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         this.§1!^§.§1!D§.close();
         if(_loc2_ && _loc2_.security)
         {
            §40§.§1"$§ = new §1";§();
            §40§.§1"$§.name = _loc2_.nickName;
            §40§.§1"$§.id = _loc2_.id;
            §40§.§1"$§.§5"8§ = _loc2_.security;
            §40§.§1"$§.episodeScore1 = _loc2_.sc1;
            §40§.§1"$§.episodeScore2 = _loc2_.sc2;
            §40§.§1"$§.episodeScore3 = _loc2_.sc3;
            §40§.§1"$§.episodeStars1 = _loc2_.st1;
            §40§.§1"$§.episodeStars2 = _loc2_.st2;
            §40§.§1"$§.episodeStars3 = _loc2_.st3;
            §40§.§1"$§.stars = §40§.§1"$§.episodeStars1 + §40§.§1"$§.episodeStars2 + §40§.§1"$§.episodeStars3;
            §40§.§1"$§.starsNeededToUnlockEpisode2 = _loc2_.min2;
            §40§.§1"$§.starsNeededToUnlockEpisode3 = _loc2_.min3;
            §40§.§1"$§.verified = _loc2_.verified;
            §40§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §40§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §#`§.§>!g§(§40§.levelProfile);
            if(_loc3_ != §40§.levelProfileSecurity)
            {
               §40§.§1"$§ = new §1";§();
               (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5"F§ = "SECURITY_ERROR";
               this.§1!^§.dispatchEvent(_loc5_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc6_ in _loc2_.tutorials)
               {
                  (§&!h§.§ u§ as §^"=§).§^!7§.§^C§(_loc6_);
               }
            }
            §40§.§3!f§();
            (§&!h§.§ u§ as §^"=§).§^!7§.§,n§ = true;
            (_loc4_ = (§&!h§.§ u§ as §^"=§).§?P§.§?!,§).reset();
            _loc4_.§#!V§();
            _loc4_.changeState(HighscoreSidebar.§7>§);
            (§&!h§.§ u§ as §^"=§).§?P§.§'!L§();
            §9Y§.§6x§(§9Y§.§8!W§);
            _loc5_ = new LoginHandlerEvent(LoginHandlerEvent.§8"1§);
            this.§1!^§.dispatchEvent(_loc5_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5"F§ = _loc2_.error;
            this.§1!^§.dispatchEvent(_loc5_);
            §9Y§.§6x§(§9Y§.§0G§);
         }
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§5"F§ = § !_§.CONNECTION_ERROR_RETRY;
         this.§1!^§.dispatchEvent(_loc2_);
      }
   }
}
