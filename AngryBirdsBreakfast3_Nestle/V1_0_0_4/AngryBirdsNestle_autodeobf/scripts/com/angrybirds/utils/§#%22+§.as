package com.angrybirds.utils
{
   import §%9§.§'F§;
   import §%9§.§33§;
   import §,!9§.§>"$§;
   import §-!G§.§!!Y§;
   import §-!G§.§"$§;
   import §-!G§.§0![§;
   import §8D§.§ " §;
   import §?N§.§9r§;
   import §[j§.§%p§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §#"+§ extends EventDispatcher implements §!!^§
   {
       
      
      private var §9l§:Boolean = false;
      
      private var §@n§:§33§;
      
      public function §#"+§()
      {
         super();
         this.§@n§ = new §33§();
      }
      
      public function §^!L§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§%p§ = null;
         var _loc2_:* = param1.length != 0;
         if(this.§9l§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§!!Y§.§9!L§.id,
               "code":param1
            };
            _loc5_ = new §%p§(_loc4_,AngryBirdsCustom.§5"+§ + _loc3_,this,§%p§.§#0§);
            this.§9l§ = true;
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(this.§@n§);
         }
         else if(this.§9l§ == false && !_loc2_)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.ENTER_CODE));
            dispatchEvent(new §0!D§(§0!D§.§;N§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §?§.§8!B§((param1.currentTarget as URLLoader).data);
         this.§9l§ = false;
         this.§@n§.close();
         if(_loc2_ && !_loc2_.error)
         {
            if(_loc2_.chapters && _loc2_.chapters is Array && §!!Y§.§9!L§)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §!!Y§.§9!L§.§^"$§(_loc6_);
               }
            }
            if((_loc5_ = §%p§.§3m§(_loc2_.levelProfile)) != _loc2_.levelProfileSecurity)
            {
               § " §.§4"0§ = true;
               (§-!l§.§"x§ as AngryBirdsCustom).§7f§ = new §0![§("",(§-!l§.§"x§ as AngryBirdsCustom).§6!N§);
               §!!Y§.§9!L§ = new §"$§();
               §!!Y§.levelProfile = [];
               return;
            }
            §!!Y§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            if(_loc2_.levelProfile != undefined)
            {
               §!!Y§.levelProfile = _loc2_.levelProfile;
               §!!Y§.§>!k§();
            }
            dispatchEvent(new §0!D§(§0!D§.§"k§));
         }
         else if(_loc2_ && _loc2_.error == §>"$§.CODE_USED)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.CODE_USED,6000));
            dispatchEvent(new §0!D§(§0!D§.§]K§));
         }
         else if(_loc2_ && _loc2_.error == §>"$§.PLAYER_BANNED)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.PLAYER_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §>"$§.IP_BANNED)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.IP_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §>"$§.TOO_MANY_CODES)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.TOO_MANY_CODES,6000));
         }
         else if(_loc2_ && _loc2_.error == §>"$§.CODE_NOT_EXIST && _loc2_.field && _loc2_.field >= 5)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.CODE_NOT_EXIST_TOO_MANY_WARNING,6000));
         }
         else if(_loc2_ && _loc2_.error)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.closePopup(§9r§.§"F§);
            (§-!l§.§"x§ as AngryBirdsCustom).§,!W§.openPopup(new §'F§(§>"$§.CODE_NOT_EXIST,6000));
            dispatchEvent(new §0!D§(§0!D§.§[!f§));
         }
      }
      
      public function §9>§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §&!`§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §0!D§(§0!D§.§[!f§));
         this.§9l§ = false;
      }
   }
}
