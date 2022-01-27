package §!"4§
{
   import §!!r§.§&!D§;
   import §!!r§.§,!u§;
   import §&e§.§<x§;
   import §'!n§.§1!x§;
   import §5R§.§=F§;
   import §6"A§.HighscoreSidebar;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §?!B§ implements §&!D§
   {
       
      
      private var §^§:§]<§;
      
      public function §?!B§(param1:§]<§)
      {
         super();
         this.§^§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:LoginHandlerEvent = null;
         var _loc6_:String = null;
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         this.§^§.§0!B§.close();
         if(_loc2_ && _loc2_.security)
         {
            §;";§.§3U§ = new §]a§();
            §;";§.§3U§.name = _loc2_.nickName;
            §;";§.§3U§.id = _loc2_.id;
            §;";§.§3U§.§8Y§ = _loc2_.security;
            §;";§.§3U§.episodeScore1 = _loc2_.sc1;
            §;";§.§3U§.episodeScore2 = _loc2_.sc2;
            §;";§.§3U§.episodeScore3 = _loc2_.sc3;
            §;";§.§3U§.episodeStars1 = _loc2_.st1;
            §;";§.§3U§.episodeStars2 = _loc2_.st2;
            §;";§.§3U§.episodeStars3 = _loc2_.st3;
            §;";§.§3U§.stars = §;";§.§3U§.episodeStars1 + §;";§.§3U§.episodeStars2 + §;";§.§3U§.episodeStars3;
            §;";§.§3U§.starsNeededToUnlockEpisode2 = _loc2_.min2;
            §;";§.§3U§.starsNeededToUnlockEpisode3 = _loc2_.min3;
            §;";§.§3U§.verified = _loc2_.verified;
            §;";§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §;";§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §=F§.§8"+§(§;";§.levelProfile);
            if(_loc3_ != §;";§.levelProfileSecurity)
            {
               §;";§.§3U§ = new §]a§();
               (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!8§ = "SECURITY_ERROR";
               this.§^§.dispatchEvent(_loc5_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc6_ in _loc2_.tutorials)
               {
                  (§&"<§.§<!7§ as §["!§).§<!%§.§6"$§(_loc6_);
               }
            }
            §;";§.§#l§();
            (§&"<§.§<!7§ as §["!§).§<!%§.§-"9§ = true;
            (_loc4_ = (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§).reset();
            _loc4_.§7m§();
            _loc4_.changeState(HighscoreSidebar.§'r§);
            (§&"<§.§<!7§ as §["!§).§^"<§.§&!'§();
            §1!x§.§6"6§(§1!x§.§7<§);
            _loc5_ = new LoginHandlerEvent(LoginHandlerEvent.§=!,§);
            this.§^§.dispatchEvent(_loc5_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc5_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!8§ = _loc2_.error;
            this.§^§.dispatchEvent(_loc5_);
            §1!x§.§6"6§(§1!x§.§+i§);
         }
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§7!8§ = §<x§.CONNECTION_ERROR_RETRY;
         this.§^§.dispatchEvent(_loc2_);
      }
   }
}
