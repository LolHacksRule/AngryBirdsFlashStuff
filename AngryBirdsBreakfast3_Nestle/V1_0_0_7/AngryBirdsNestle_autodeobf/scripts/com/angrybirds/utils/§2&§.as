package com.angrybirds.utils
{
   import §!!`§.§>!&§;
   import §"q§.§2!L§;
   import §"q§.§6,§;
   import §"q§.§;!z§;
   import §%r§.§ L§;
   import §3@§.§=W§;
   import §;!y§.§4![§;
   import §@!l§.§,!D§;
   import §@!l§.§0d§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §2&§ extends EventDispatcher implements §#!z§
   {
       
      
      private var §@W§:Boolean = false;
      
      private var §4l§:§0d§;
      
      public function §2&§()
      {
         super();
         this.§4l§ = new §0d§();
      }
      
      public function §#9§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§=W§ = null;
         var _loc2_:* = param1.length != 0;
         if(this.§@W§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§6,§.§!!7§.id,
               "code":param1
            };
            _loc5_ = new §=W§(_loc4_,AngryBirdsCustom.§9"+§ + _loc3_,this,§=W§.§"!x§);
            this.§@W§ = true;
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(this.§4l§);
         }
         else if(this.§@W§ == false && !_loc2_)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.ENTER_CODE));
            dispatchEvent(new §@!q§(§@!q§.§+K§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc2_:Object = §@>§.§&a§((param1.currentTarget as URLLoader).data);
         this.§@W§ = false;
         this.§4l§.close();
         if(_loc2_ && !_loc2_.error)
         {
            if(_loc2_.chapters && _loc2_.chapters is Array && §6,§.§!!7§)
            {
               for each(_loc6_ in _loc2_.chapters)
               {
                  §6,§.§!!7§.§["&§(_loc6_);
               }
            }
            if((_loc5_ = §=W§.§76§(_loc2_.levelProfile)) != _loc2_.levelProfileSecurity)
            {
               § L§.§-w§ = true;
               (§,!X§.§>!G§ as AngryBirdsCustom).§<0§ = new §;!z§("",(§,!X§.§>!G§ as AngryBirdsCustom).§5!c§);
               §6,§.§!!7§ = new §2!L§();
               §6,§.levelProfile = [];
               return;
            }
            §6,§.levelProfileSecurity = _loc2_.levelProfileSecurity;
            if(_loc2_.levelProfile != undefined)
            {
               §6,§.levelProfile = _loc2_.levelProfile;
               §6,§.§," §();
            }
            dispatchEvent(new §@!q§(§@!q§.§1!4§));
         }
         else if(_loc2_ && _loc2_.error == §4![§.CODE_USED)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.CODE_USED,6000));
            dispatchEvent(new §@!q§(§@!q§.§4"1§));
         }
         else if(_loc2_ && _loc2_.error == §4![§.PLAYER_BANNED)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.PLAYER_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §4![§.IP_BANNED)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.IP_BANNED,6000));
         }
         else if(_loc2_ && _loc2_.error == §4![§.TOO_MANY_CODES)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.TOO_MANY_CODES,6000));
         }
         else if(_loc2_ && _loc2_.error == §4![§.CODE_NOT_EXIST && _loc2_.field && _loc2_.field >= 5)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.CODE_NOT_EXIST_TOO_MANY_WARNING,6000));
         }
         else if(_loc2_ && _loc2_.error)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.closePopup(§>!&§.§0?§);
            (§,!X§.§>!G§ as AngryBirdsCustom).§5!K§.openPopup(new §,!D§(§4![§.CODE_NOT_EXIST,6000));
            dispatchEvent(new §@!q§(§@!q§.§;!Q§));
         }
      }
      
      public function §9!@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §@!2§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §@!q§(§@!q§.§;!Q§));
         this.§@W§ = false;
      }
   }
}
