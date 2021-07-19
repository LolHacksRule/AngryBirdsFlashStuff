package § ^§
{
   import §"n§.§[!-§;
   import §#"&§.§#!4§;
   import §%_§.§"!!§;
   import §]0§.§5!p§;
   import §]0§.§>I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §5!C§ implements §>I§
   {
       
      
      private var §"N§:§3!_§;
      
      public function §5!C§(param1:§3!_§)
      {
         super();
         this.§"N§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:LoginHandlerEvent = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §5!p§.§0>§((param1.currentTarget as URLLoader).data);
         this.§"N§.§&!1§.close();
         if(_loc2_ && _loc2_.security)
         {
            §`!2§.§9!&§ = new §[C§();
            §`!2§.§9!&§.name = _loc2_.nickName;
            §`!2§.§9!&§.id = _loc2_.id;
            §`!2§.§9!&§.§4J§ = _loc2_.security;
            §`!2§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §`!2§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §#!4§.§^5§(§`!2§.levelProfile);
            if(_loc3_ != §`!2§.levelProfileSecurity)
            {
               §`!2§.§9!&§ = new §[C§();
               (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = "SECURITY_ERROR";
               this.§"N§.dispatchEvent(_loc4_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc5_ in _loc2_.tutorials)
               {
                  (§6!!§.singleton as §4!=§).§?!b§.setTutorialSeen(_loc5_);
               }
            }
            if(_loc2_.chapters is Array)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §`!2§.§9!&§.§^!+§(_loc6_);
               }
            }
            §`!2§.§?>§();
            (§6!!§.singleton as §4!=§).§?!b§.§+!9§ = true;
            §[!-§.§@v§(§[!-§.§=!$§);
            _loc4_ = new LoginHandlerEvent(LoginHandlerEvent.§"m§);
            this.§"N§.dispatchEvent(_loc4_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc4_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§3!N§ = _loc2_.error;
            this.§"N§.dispatchEvent(_loc4_);
            §[!-§.§@v§(§[!-§.§1!a§);
         }
      }
      
      public function §'!s§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §=o§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§3!N§ = §"!!§.CONNECTION_ERROR_RETRY;
         this.§"N§.dispatchEvent(_loc2_);
      }
   }
}
