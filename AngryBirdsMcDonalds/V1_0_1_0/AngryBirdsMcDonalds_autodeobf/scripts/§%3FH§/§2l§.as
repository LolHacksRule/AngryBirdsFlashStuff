package §?H§
{
   import § !1§.§8!Y§;
   import § !1§.§@!g§;
   import § !1§.§[n§;
   import §%<§.§+V§;
   import §'Y§.§6Q§;
   import §1!D§.§]!§;
   import §3#§.HighscoreSidebar;
   import §8!P§.§5e§;
   import §^u§.§5!U§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §2l§ implements §[n§
   {
       
      
      public function §2l§()
      {
         super();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc2_:Object = §8!Y§.§%f§((param1.currentTarget as URLLoader).data);
         if(_loc2_ && _loc2_.security)
         {
            §>!!§.§^!4§ = new §5!U§();
            §>!!§.§^!4§.name = _loc2_.nickName;
            §>!!§.§^!4§.email = _loc2_.id;
            §>!!§.§^!4§.§,b§ = _loc2_.security;
            §>!!§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §>!!§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §6Q§.§9!_§(§>!!§.levelProfile);
            if(_loc3_ != §>!!§.levelProfileSecurity)
            {
               §>!!§.§^!4§ = new §5!U§();
               §+V§.sHighscoreSidebar.enableCreditsButton(true);
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5z§ = "SECURITY_ERROR";
               §>!X§.§>E§.dispatchEvent(_loc4_);
               return;
            }
            if(_loc2_.overallScore != undefined)
            {
               §;!4§.§8'§.overallScore = _loc2_.overallScore;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc5_ in _loc2_.tutorials)
               {
                  §;!4§.§8'§.§#!8§(_loc5_);
               }
            }
            §>!!§.§]a§();
            §;!4§.§8'§.§2!^§ = true;
            §+V§.sHighscoreSidebar.§]l§();
            §+V§.sHighscoreSidebar.changeState(HighscoreSidebar.§0C§);
            §5e§.§>E§.§=!A§();
            §]!§.§>G§(§]!§.§?6§);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§2t§);
            §>!X§.§>E§.dispatchEvent(_loc4_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§5z§ = _loc2_.error;
            §>!X§.§>E§.dispatchEvent(_loc4_);
            §]!§.§>G§(§]!§.§#!j§);
         }
      }
      
      public function §-_§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!O§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§5z§ = §@!g§.CONNECTION_ERROR_RETRY;
         §>!X§.§>E§.dispatchEvent(_loc2_);
         §+V§.sHighscoreSidebar.enableCreditsButton(true);
      }
   }
}
