package com.angrybirds.utils
{
   import §#!`§.§4!#§;
   import §;U§.§`"2§;
   import §=X§.§-!f§;
   import §=X§.§3j§;
   import §=X§.§?!n§;
   import §[<§.§%!T§;
   import §]K§.§>!I§;
   import §`q§.§!!U§;
   import §`q§.§9Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §]"!§ extends EventDispatcher implements §finally§
   {
       
      
      private var §0!z§:Boolean = false;
      
      private var §-!W§:§9Q§;
      
      public function §]"!§()
      {
         super();
         this.§-!W§ = new §9Q§();
      }
      
      public function §3!#§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§4!#§ = null;
         var _loc2_:* = param1.length != 0;
         if(this.§0!z§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§3j§.§0!i§.id,
               "code":param1
            };
            _loc5_ = new §4!#§(_loc4_,AngryBirdsCustom.§91§ + _loc3_,this,§4!#§.§;0§);
            this.§0!z§ = true;
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(this.§-!W§);
         }
         else if(this.§0!z§ == false && !_loc2_)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.ENTER_CODE));
            dispatchEvent(new §9$§(§9$§.§>!<§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §2O§.§>!r§((param1.currentTarget as URLLoader).data);
         this.§0!z§ = false;
         this.§-!W§.close();
         if(_loc2_ && !_loc2_.error)
         {
            if(_loc2_.chapters && _loc2_.chapters is Array && §3j§.§0!i§)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §3j§.§0!i§.§0E§(_loc6_);
               }
            }
            if((_loc5_ = §4!#§.§=y§(_loc2_.levelProfile)) != _loc2_.levelProfileSecurity)
            {
               §`"2§.§#!w§ = true;
               (§&N§.§#Y§ as AngryBirdsCustom).§2Z§ = new §-!f§("",(§&N§.§#Y§ as AngryBirdsCustom).§2!V§);
               §3j§.§0!i§ = new §?!n§();
               §3j§.levelProfile = [];
               return;
            }
            §3j§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            if(_loc2_.levelProfile != undefined)
            {
               §3j§.levelProfile = _loc2_.levelProfile;
               §3j§.§'"'§();
            }
            dispatchEvent(new §9$§(§9$§.§1"5§));
         }
         else if(_loc2_ && _loc2_.error == §>!I§.CODE_USED)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.CODE_USED,6000));
            dispatchEvent(new §9$§(§9$§.§@k§));
         }
         else if(_loc2_ && _loc2_.error == §>!I§.PLAYER_BANNED)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.PLAYER_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §>!I§.IP_BANNED)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.IP_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §>!I§.TOO_MANY_CODES)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.TOO_MANY_CODES,6000));
         }
         else if(_loc2_ && _loc2_.error == §>!I§.CODE_NOT_EXIST && _loc2_.field && _loc2_.field >= 5)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.CODE_NOT_EXIST_TOO_MANY_WARNING,6000));
         }
         else if(_loc2_ && _loc2_.error)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.closePopup(§%!T§.§[!N§);
            (§&N§.§#Y§ as AngryBirdsCustom).§@!H§.openPopup(new §!!U§(§>!I§.CODE_NOT_EXIST,6000));
            dispatchEvent(new §9$§(§9$§.§^V§));
         }
      }
      
      public function §+!R§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4!E§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §9$§(§9$§.§^V§));
         this.§0!z§ = false;
      }
   }
}
