package §=X§
{
   import § !H§.§0!m§;
   import §#!`§.§4!#§;
   import §-!F§.§[!Q§;
   import §-!F§.§]L§;
   import §<[§.HighscoreSidebar;
   import §]K§.§>!I§;
   import com.angrybirds.utils.§2O§;
   import com.angrybirds.utils.§finally§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §=!4§ implements §finally§
   {
       
      
      private var §"!T§:§`!3§;
      
      public function §=!4§(param1:§`!3§)
      {
         super();
         this.§"!T§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc2_:Object = §2O§.§>!r§((param1.currentTarget as URLLoader).data);
         this.§"!T§.§[u§.close();
         if(_loc2_ && _loc2_.security)
         {
            §3j§.§0!i§ = new §?!n§();
            §3j§.§0!i§.name = _loc2_.nickName;
            §3j§.§0!i§.id = _loc2_.id;
            §3j§.§0!i§.§?!f§ = _loc2_.security;
            §3j§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §3j§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §4!#§.§=y§(§3j§.levelProfile);
            if(_loc3_ != §3j§.levelProfileSecurity)
            {
               §3j§.§0!i§ = new §?!n§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§?R§ = "SECURITY_ERROR";
               this.§"!T§.dispatchEvent(_loc6_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc7_ in _loc2_.tutorials)
               {
                  (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.setTutorialSeen(_loc7_);
               }
            }
            if(_loc2_.chapters is Array)
            {
               for each(_loc8_ in _loc2_.chapters)
               {
                  §3j§.§0!i§.§0E§(_loc8_);
               }
            }
            §3j§.§'"'§();
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§2!7§ = true;
            (_loc4_ = (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§[k§).reset();
            _loc4_.§9!q§();
            _loc4_.§ D§(HighscoreSidebar.§8c§);
            (§&N§.§#Y§ as AngryBirdsCustom).§#A§.§0"%§();
            §]L§.§0!S§(§]L§.§7!!§);
            _loc5_ = §[!Q§.§=J§.§"" §().toLowerCase() + "_" + §[!Q§.§=J§.§%w§().toUpperCase();
            §0!m§.§<Q§("onFlashLanguageChange",_loc5_);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§%T§);
            this.§"!T§.dispatchEvent(_loc6_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§?R§ = _loc2_.error;
            this.§"!T§.dispatchEvent(_loc6_);
            §]L§.§0!S§(§]L§.§-!s§);
         }
      }
      
      public function §+!R§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!E§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§?R§ = §>!I§.CONNECTION_ERROR_RETRY;
         this.§"!T§.dispatchEvent(_loc2_);
      }
   }
}
