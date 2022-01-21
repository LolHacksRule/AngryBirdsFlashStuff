package §=b§
{
   import §,i§.§7;§;
   import §2Y§.§]!k§;
   import §7-§.§[!$§;
   import §<Z§.§!!W§;
   import §<Z§.§"!8§;
   import §<Z§.§1!X§;
   import §>!%§.HighscoreSidebar;
   import §?7§.§87§;
   import §?I§.§'k§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §?q§ implements §!!W§
   {
       
      
      public function §?q§()
      {
         super();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = §"!8§.§&!p§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §,!G§.§-!8§ = new §]!k§();
            §,!G§.§-!8§.name = _loc2_.nickName;
            §,!G§.§-!8§.email = _loc2_.id;
            §,!G§.§-!8§.§>!n§ = _loc2_.security;
            §,!G§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §,!G§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §7;§.§;x§(§,!G§.levelProfile);
            if(_loc3_ != §,!G§.levelProfileSecurity)
            {
               §,!G§.§-!8§ = new §]!k§();
               §[!$§.sHighscoreSidebar.enableCreditsButton(true);
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§`!L§ = "SECURITY_ERROR";
               §&!1§.§@!7§.dispatchEvent(_loc4_);
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §2!M§.§&!#§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc5_ in _loc2_.tutorials)
               {
                  §2!M§.§&!#§.§"c§(_loc5_);
               }
            }
            §,!G§.§3!p§();
            §2!M§.§&!#§.§-!Z§ = true;
            §[!$§.sHighscoreSidebar.§1!P§();
            §[!$§.sHighscoreSidebar.changeState(HighscoreSidebar.§>2§);
            §87§.§@!7§.§5?§();
            §'k§.§=<§(§'k§.§6!i§);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§>!F§);
            §&!1§.§@!7§.dispatchEvent(_loc4_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§`!L§ = _loc2_.error;
            §&!1§.§@!7§.dispatchEvent(_loc4_);
            §'k§.§=<§(§'k§.§<!M§);
         }
      }
      
      public function §^c§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §8!%§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§`!L§ = §1!X§.CONNECTION_ERROR_RETRY;
         §&!1§.§@!7§.dispatchEvent(_loc2_);
         §[!$§.sHighscoreSidebar.enableCreditsButton(true);
      }
   }
}
