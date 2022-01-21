package §7!Q§
{
   import § !O§.§9!F§;
   import § e§.§?`§;
   import §7!>§.§0!_§;
   import §<!R§.HighscoreSidebar;
   import §>!<§.§-E§;
   import §[l§.§,Q§;
   import §`!@§.§!!Y§;
   import §`!@§.§#e§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §2!O§ implements §[!X§
   {
       
      
      public function §2!O§()
      {
         super();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = §!!Y§.§@M§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §[!5§.§7!h§ = new §9!F§();
            §[!5§.§7!h§.name = _loc2_.nickName;
            §[!5§.§7!h§.email = _loc2_.id;
            §[!5§.§7!h§.§[!9§ = _loc2_.security;
            §[!5§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §[!5§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §-E§.§%6§(§[!5§.levelProfile);
            if(_loc3_ != §[!5§.levelProfileSecurity)
            {
               §[!5§.§7!h§ = new §9!F§();
               §,Q§.sHighscoreSidebar.enableCreditsButton(true);
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§]!a§ = "SECURITY_ERROR";
               §=!G§.§+j§.dispatchEvent(_loc4_);
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               § 4§.§?H§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc5_ in _loc2_.tutorials)
               {
                  § 4§.§?H§.§-! §(_loc5_);
               }
            }
            §[!5§.§[!3§();
            § 4§.§?H§.§4!A§ = true;
            §,Q§.sHighscoreSidebar.§3!j§();
            §,Q§.sHighscoreSidebar.changeState(HighscoreSidebar.§ each§);
            §0!_§.§+j§.§?!m§();
            §?`§.§%p§(§?`§.§,!0§);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§=!J§);
            §=!G§.§+j§.dispatchEvent(_loc4_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§]!a§ = _loc2_.error;
            §=!G§.§+j§.dispatchEvent(_loc4_);
            §?`§.§%p§(§?`§.§6S§);
         }
      }
      
      public function §1k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&M§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§]!a§ = §#e§.CONNECTION_ERROR_RETRY;
         §=!G§.§+j§.dispatchEvent(_loc2_);
         §,Q§.sHighscoreSidebar.enableCreditsButton(true);
      }
   }
}
