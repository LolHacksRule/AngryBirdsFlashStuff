package §0$§
{
   import §#!1§.§6!>§;
   import §&6§.§,!Y§;
   import §&6§.§`!T§;
   import §&6§.§`!q§;
   import §,E§.§"!K§;
   import §2S§.§6!P§;
   import §5!W§.§`X§;
   import §5!q§.HighscoreSidebar;
   import §=f§.§#!A§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §&!L§ implements §`!T§
   {
       
      
      public function §&!L§()
      {
         super();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = §`!q§.§-`§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §!t§.§<1§ = new §#!A§();
            §!t§.§<1§.name = _loc2_.nickName;
            §!t§.§<1§.email = _loc2_.id;
            §!t§.§<1§.§7!F§ = _loc2_.security;
            §!t§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §!t§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §"!K§.§-!X§(§!t§.levelProfile);
            if(_loc3_ != §!t§.levelProfileSecurity)
            {
               §!t§.§<1§ = new §#!A§();
               §`X§.sHighscoreSidebar.enableCreditsButton(true);
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§15§ = "SECURITY_ERROR";
               §8!K§.§5!!§.dispatchEvent(_loc4_);
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §3![§.§5!6§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc5_ in _loc2_.tutorials)
               {
                  §3![§.§5!6§.§8!D§(_loc5_);
               }
            }
            §!t§.§5>§();
            §3![§.§5!6§.§%!%§ = true;
            §`X§.sHighscoreSidebar.§+1§();
            §`X§.sHighscoreSidebar.changeState(HighscoreSidebar.§<! §);
            §6!P§.§5!!§.§0u§();
            §6!>§.§7!'§(§6!>§.§?!4§);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§16§);
            §8!K§.§5!!§.dispatchEvent(_loc4_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§15§ = _loc2_.error;
            §8!K§.§5!!§.dispatchEvent(_loc4_);
            §6!>§.§7!'§(§6!>§.§^J§);
         }
      }
      
      public function §^!P§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'!d§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§15§ = §,!Y§.CONNECTION_ERROR_RETRY;
         §8!K§.§5!!§.dispatchEvent(_loc2_);
         §`X§.sHighscoreSidebar.enableCreditsButton(true);
      }
   }
}
