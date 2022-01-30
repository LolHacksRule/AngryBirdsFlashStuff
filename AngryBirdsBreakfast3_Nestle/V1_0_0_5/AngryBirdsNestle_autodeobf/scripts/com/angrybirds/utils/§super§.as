package com.angrybirds.utils
{
   import §&_§.§+?§;
   import §&_§.§6!z§;
   import §'-§.§9u§;
   import §5u§.§^!=§;
   import §63§.§%!8§;
   import §63§.§2!e§;
   import §63§.§^!!§;
   import §?!v§.§2" §;
   import §const§.§!!`§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §super§ extends EventDispatcher implements §0;§
   {
       
      
      private var §[=§:Boolean = false;
      
      private var §3!<§:§+?§;
      
      public function §super§()
      {
         super();
         this.§3!<§ = new §+?§();
      }
      
      public function §1",§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§2" § = null;
         var _loc2_:* = param1.length != 0;
         if(this.§[=§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§^!!§.§]!P§.id,
               "code":param1
            };
            _loc5_ = new §2" §(_loc4_,AngryBirdsCustom.§'P§ + _loc3_,this,§2" §.§0!<§);
            this.§[=§ = true;
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(this.§3!<§);
         }
         else if(this.§[=§ == false && !_loc2_)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.ENTER_CODE));
            dispatchEvent(new §>!R§(§>!R§.§%9§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §?m§.§98§((param1.currentTarget as URLLoader).data);
         this.§[=§ = false;
         this.§3!<§.close();
         if(_loc2_ && !_loc2_.error)
         {
            if(_loc2_.chapters && _loc2_.chapters is Array && §^!!§.§]!P§)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §^!!§.§]!P§.§?!n§(_loc6_);
               }
            }
            if((_loc5_ = §2" §.§?!a§(_loc2_.levelProfile)) != _loc2_.levelProfileSecurity)
            {
               §!!`§.§,i§ = true;
               (§-!I§.§[f§ as AngryBirdsCustom).§=! § = new §2!e§("",(§-!I§.§[f§ as AngryBirdsCustom).§+!t§);
               §^!!§.§]!P§ = new §%!8§();
               §^!!§.levelProfile = [];
               return;
            }
            §^!!§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            if(_loc2_.levelProfile != undefined)
            {
               §^!!§.levelProfile = _loc2_.levelProfile;
               §^!!§.§9!m§();
            }
            dispatchEvent(new §>!R§(§>!R§.§%!m§));
         }
         else if(_loc2_ && _loc2_.error == §9u§.CODE_USED)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.CODE_USED,6000));
            dispatchEvent(new §>!R§(§>!R§.§1!W§));
         }
         else if(_loc2_ && _loc2_.error == §9u§.PLAYER_BANNED)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.PLAYER_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §9u§.IP_BANNED)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.IP_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §9u§.TOO_MANY_CODES)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.TOO_MANY_CODES,6000));
         }
         else if(_loc2_ && _loc2_.error == §9u§.CODE_NOT_EXIST && _loc2_.field && _loc2_.field >= 5)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.CODE_NOT_EXIST_TOO_MANY_WARNING,6000));
         }
         else if(_loc2_ && _loc2_.error)
         {
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.closePopup(§^!=§.§^"!§);
            (§-!I§.§[f§ as AngryBirdsCustom).§@!C§.openPopup(new §6!z§(§9u§.CODE_NOT_EXIST,6000));
            dispatchEvent(new §>!R§(§>!R§.§@!z§));
         }
      }
      
      public function §&k§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §0C§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §>!R§(§>!R§.§@!z§));
         this.§[=§ = false;
      }
   }
}
