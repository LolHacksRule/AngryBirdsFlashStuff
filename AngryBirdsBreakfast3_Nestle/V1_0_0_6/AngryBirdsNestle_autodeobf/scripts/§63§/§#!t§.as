package §63§
{
   import §'-§.§9u§;
   import §2W§.§+!d§;
   import §2W§.§4L§;
   import §8x§.§]"-§;
   import §?!v§.§2" §;
   import §]K§.HighscoreSidebar;
   import com.angrybirds.utils.§0;§;
   import com.angrybirds.utils.§?m§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §#!t§ implements §0;§
   {
       
      
      private var §9R§:§=7§;
      
      public function §#!t§(param1:§=7§)
      {
         super();
         this.§9R§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:HighscoreSidebar = null;
         var _loc5_:String = null;
         var _loc6_:LoginHandlerEvent = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc2_:Object = §?m§.§98§((param1.currentTarget as URLLoader).data);
         this.§9R§.§["4§.close();
         if(_loc2_ && _loc2_.security)
         {
            §^!!§.§]!P§ = new §%!8§();
            §^!!§.§]!P§.name = _loc2_.nickName;
            §^!!§.§]!P§.id = _loc2_.id;
            §^!!§.§]!P§.§>4§ = _loc2_.security;
            §^!!§.levelProfile = _loc2_.levelProfile;
            if(_loc2_.levelProfileSecurity != undefined)
            {
               §^!!§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            }
            _loc3_ = §2" §.§?!a§(§^!!§.levelProfile);
            if(_loc3_ != §^!!§.levelProfileSecurity)
            {
               §^!!§.§]!P§ = new §%!8§();
               (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;>§ = "SECURITY_ERROR";
               this.§9R§.dispatchEvent(_loc6_);
               return;
            }
            if(_loc2_.tutorials is Array)
            {
               for each(_loc7_ in _loc2_.tutorials)
               {
                  (§-!I§.§[f§ as AngryBirdsCustom).§=! §.setTutorialSeen(_loc7_);
               }
            }
            if(_loc2_.chapters is Array)
            {
               for each(_loc8_ in _loc2_.chapters)
               {
                  §^!!§.§]!P§.§?!n§(_loc8_);
               }
            }
            §^!!§.§9!m§();
            (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§ !%§ = true;
            (_loc4_ = (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§`G§).reset();
            _loc4_.§<J§();
            _loc4_.§=O§(HighscoreSidebar.§2t§);
            (§-!I§.§[f§ as AngryBirdsCustom).§=!F§.§%7§();
            §4L§.§2!4§(§4L§.§]!z§);
            _loc5_ = §+!d§.§<"5§.§,!;§().toLowerCase() + "_" + §+!d§.§<"5§.§'!G§().toUpperCase();
            §]"-§.§6V§("onFlashLanguageChange",_loc5_);
            _loc6_ = new LoginHandlerEvent(LoginHandlerEvent.§@!v§);
            this.§9R§.dispatchEvent(_loc6_);
         }
         else if(_loc2_ && _loc2_.error)
         {
            (_loc6_ = new LoginHandlerEvent(LoginHandlerEvent.ERROR)).§;>§ = _loc2_.error;
            this.§9R§.dispatchEvent(_loc6_);
            §4L§.§2!4§(§4L§.§%O§);
         }
      }
      
      public function §&k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0C§(param1:IOErrorEvent) : void
      {
         var _loc2_:LoginHandlerEvent = new LoginHandlerEvent(LoginHandlerEvent.ERROR);
         _loc2_.§;>§ = §9u§.CONNECTION_ERROR_RETRY;
         this.§9R§.dispatchEvent(_loc2_);
      }
   }
}
