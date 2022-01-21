package § v§
{
   import §!!h§.§1H§;
   import §4%§.§%0§;
   import §7"§.§1! §;
   import §7"§.§8!#§;
   import §7"§.§[!K§;
   import §;!j§.§25§;
   import §@]§.§?![§;
   import §@w§.§'!#§;
   import §]! §.HighscoreSidebar;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3!o§ implements §1! §
   {
       
      
      public function §3!o§()
      {
         super();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = §[!K§.§,!j§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §!!^§.§,!a§ = new §?![§();
            §!!^§.§,!a§.name = _loc2_.nickName;
            §!!^§.§,!a§.email = _loc2_.id;
            §!!^§.§,!a§.§,!@§ = _loc2_.security;
            §!!^§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §!!^§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §1H§.§@!F§(§!!^§.levelProfile);
            if(_loc3_ != §!!^§.levelProfileSecurity)
            {
               §!!^§.§,!a§ = new §?![§();
               §%0§.sHighscoreSidebar.enableCreditsButton(true);
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!F§ = "SECURITY_ERROR";
               §?!E§.§'!S§.dispatchEvent(_loc4_);
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §'j§.§%g§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc5_ in _loc2_.tutorials)
               {
                  §'j§.§%g§.§?g§(_loc5_);
               }
            }
            §!!^§.§,%§();
            §'j§.§%g§.§"!W§ = true;
            §%0§.sHighscoreSidebar.§>!`§();
            §%0§.sHighscoreSidebar.changeState(HighscoreSidebar.§=j§);
            §'!#§.§'!S§.§03§();
            §25§.§%!<§(§25§.§7e§);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§`Y§);
            §?!E§.§'!S§.dispatchEvent(_loc4_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§7!F§ = _loc2_.error;
            §?!E§.§'!S§.dispatchEvent(_loc4_);
            §25§.§%!<§(§25§.§^X§);
         }
      }
      
      public function §2!F§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §2!Z§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§7!F§ = §8!#§.CONNECTION_ERROR_RETRY;
         §?!E§.§'!S§.dispatchEvent(_loc2_);
         §%0§.sHighscoreSidebar.enableCreditsButton(true);
      }
   }
}
