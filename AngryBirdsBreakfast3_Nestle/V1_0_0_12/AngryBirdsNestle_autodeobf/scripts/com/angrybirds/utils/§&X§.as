package com.angrybirds.utils
{
   import §!"§.§'!1§;
   import §!"§.§0"6§;
   import §!"§.§^!7§;
   import §1!s§.§8!f§;
   import §2!,§.§5f§;
   import §2!,§.§>!F§;
   import §4"!§.§?!#§;
   import §?u§.§48§;
   import §^>§.§2"&§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §&X§ extends EventDispatcher implements §?z§
   {
       
      
      private var §-!_§:Boolean = false;
      
      private var §]i§:§5f§;
      
      public function §&X§()
      {
         super();
         this.§]i§ = new §5f§();
      }
      
      public function §5!`§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§48§ = null;
         var _loc2_:* = param1.length != 0;
         if(this.§-!_§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§^!7§.§>!8§.id,
               "code":param1
            };
            _loc5_ = new §48§(_loc4_,AngryBirdsCustom.§8!O§ + _loc3_,this,§48§.§6!^§);
            this.§-!_§ = true;
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(this.§]i§);
         }
         else if(this.§-!_§ == false && !_loc2_)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.ENTER_CODE));
            dispatchEvent(new §%x§(§%x§.§1z§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §?!-§.§4!-§((param1.currentTarget as URLLoader).data);
         this.§-!_§ = false;
         this.§]i§.close();
         if(_loc2_ && !_loc2_.error)
         {
            if(_loc2_.chapters && _loc2_.chapters is Array && §^!7§.§>!8§)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §^!7§.§>!8§.§]"5§(_loc6_);
               }
            }
            if((_loc5_ = §48§.§"f§(_loc2_.levelProfile)) != _loc2_.levelProfileSecurity)
            {
               §?!#§.§^"&§ = true;
               (§-!2§.§7O§ as AngryBirdsCustom).§,"5§ = new §'!1§("",(§-!2§.§7O§ as AngryBirdsCustom).§8S§);
               §^!7§.§>!8§ = new §0"6§();
               §^!7§.levelProfile = [];
               return;
            }
            §^!7§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            if(_loc2_.levelProfile != undefined)
            {
               §^!7§.levelProfile = _loc2_.levelProfile;
               §^!7§.§0!3§();
            }
            dispatchEvent(new §%x§(§%x§.§8!Q§));
         }
         else if(_loc2_ && _loc2_.error == §2"&§.CODE_USED)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.CODE_USED,6000));
            dispatchEvent(new §%x§(§%x§.§="$§));
         }
         else if(_loc2_ && _loc2_.error == §2"&§.PLAYER_BANNED)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.PLAYER_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §2"&§.IP_BANNED)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.IP_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §2"&§.TOO_MANY_CODES)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.TOO_MANY_CODES,6000));
         }
         else if(_loc2_ && _loc2_.error == §2"&§.CODE_NOT_EXIST && _loc2_.field && _loc2_.field >= 5)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.CODE_NOT_EXIST_TOO_MANY_WARNING,6000));
         }
         else if(_loc2_ && _loc2_.error)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.closePopup(§8!f§.§3!G§);
            (§-!2§.§7O§ as AngryBirdsCustom).§0!l§.openPopup(new §>!F§(§2"&§.CODE_NOT_EXIST,6000));
            dispatchEvent(new §%x§(§%x§.§^!f§));
         }
      }
      
      public function §%+§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5" §(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §%x§(§%x§.§^!f§));
         this.§-!_§ = false;
      }
   }
}
