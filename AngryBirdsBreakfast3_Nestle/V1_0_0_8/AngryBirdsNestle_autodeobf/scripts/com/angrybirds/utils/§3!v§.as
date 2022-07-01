package com.angrybirds.utils
{
   import § S§.§4&§;
   import §#!n§.§3!s§;
   import §&!>§.§#^§;
   import §&!>§.§2!V§;
   import §&!>§.§7!B§;
   import §'&§.§3W§;
   import §2!"§.§8K§;
   import §?I§.§'!<§;
   import §?I§.§=!L§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3!v§ extends EventDispatcher implements §[!k§
   {
       
      
      private var §throw§:Boolean = false;
      
      private var §>",§:§=!L§;
      
      public function §3!v§()
      {
         super();
         this.§>",§ = new §=!L§();
      }
      
      public function §6! §(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§3!s§ = null;
         var _loc2_:* = param1.length != 0;
         if(this.§throw§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§2!V§.§!!?§.id,
               "code":param1
            };
            _loc5_ = new §3!s§(_loc4_,AngryBirdsCustom.§1=§ + _loc3_,this,§3!s§.§5%§);
            this.§throw§ = true;
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(this.§>",§);
         }
         else if(this.§throw§ == false && !_loc2_)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.ENTER_CODE));
            dispatchEvent(new §="0§(§="0§.§3!w§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §`2§.§#!l§((param1.currentTarget as URLLoader).data);
         this.§throw§ = false;
         this.§>",§.close();
         if(_loc2_ && !_loc2_.error)
         {
            if(_loc2_.chapters && _loc2_.chapters is Array && §2!V§.§!!?§)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §2!V§.§!!?§.§8!2§(_loc6_);
               }
            }
            if((_loc5_ = §3!s§.§'!;§(_loc2_.levelProfile)) != _loc2_.levelProfileSecurity)
            {
               §3W§.§2-§ = true;
               (§-O§.§5!1§ as AngryBirdsCustom).§;!1§ = new §#^§("",(§-O§.§5!1§ as AngryBirdsCustom).§4!d§);
               §2!V§.§!!?§ = new §7!B§();
               §2!V§.levelProfile = [];
               return;
            }
            §2!V§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            if(_loc2_.levelProfile != undefined)
            {
               §2!V§.levelProfile = _loc2_.levelProfile;
               §2!V§.§]n§();
            }
            dispatchEvent(new §="0§(§="0§.§+c§));
         }
         else if(_loc2_ && _loc2_.error == §8K§.CODE_USED)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.CODE_USED,6000));
            dispatchEvent(new §="0§(§="0§.§16§));
         }
         else if(_loc2_ && _loc2_.error == §8K§.PLAYER_BANNED)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.PLAYER_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §8K§.IP_BANNED)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.IP_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §8K§.TOO_MANY_CODES)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.TOO_MANY_CODES,6000));
         }
         else if(_loc2_ && _loc2_.error == §8K§.CODE_NOT_EXIST && _loc2_.field && _loc2_.field >= 5)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.CODE_NOT_EXIST_TOO_MANY_WARNING,6000));
         }
         else if(_loc2_ && _loc2_.error)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.closePopup(§4&§.§;!C§);
            (§-O§.§5!1§ as AngryBirdsCustom).§-6§.openPopup(new §'!<§(§8K§.CODE_NOT_EXIST,6000));
            dispatchEvent(new §="0§(§="0§.§2!l§));
         }
      }
      
      public function §0!n§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §4J§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §="0§(§="0§.§2!l§));
         this.§throw§ = false;
      }
   }
}
