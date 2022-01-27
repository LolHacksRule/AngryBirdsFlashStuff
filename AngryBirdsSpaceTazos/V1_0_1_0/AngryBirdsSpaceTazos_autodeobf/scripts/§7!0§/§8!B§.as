package §7!0§
{
   import §!?§.§'k§;
   import §3C§.§-"E§;
   import §3C§.§9!%§;
   import §3C§.§["1§;
   import §3C§.§^p§;
   import §7!B§.§@!^§;
   import §9y§.§8"3§;
   import §=r§.§7!r§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §8!B§ extends EventDispatcher implements §-!^§
   {
       
      
      private var §!!]§:Boolean = false;
      
      private var §3!S§:§["1§;
      
      public function §8!B§()
      {
         super();
         this.§3!S§ = new §["1§();
      }
      
      public function §6!L§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§'k§ = null;
         var _loc2_:Boolean = param1.length != 0 && param1 != "Incorrect code" && param1 != "Código incorrecto" && param1 != "Code already used" && param1 != "Código ya utilizado" && param1 != "<Type code here>" && param1 != "<Introduzca el código aquí>";
         if(this.§!!]§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§@!^§.§2j§.id,
               "code":param1
            };
            _loc5_ = new §'k§(_loc4_,§`Y§.§6T§ + _loc3_,this,§'k§.§;!^§);
            this.§!!]§ = true;
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(this.§3!S§);
         }
         else if(this.§!!]§ == false && !_loc2_)
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.ENTER_CODE));
            dispatchEvent(new §3!d§(§3!d§.§9!v§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         this.§!!]§ = false;
         this.§3!S§.close();
         if(_loc2_ && _loc2_.items && _loc2_.itemsSecurity && _loc2_.id && §'k§.§5-§(_loc2_.id,_loc2_.items) == _loc2_.itemsSecurity)
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §-"E§());
            §7!r§.§[!1§.§-!F§();
            dispatchEvent(new §3!d§(§3!d§.§+T§));
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.CODE_USED));
            dispatchEvent(new §3!d§(§3!d§.§!e§));
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_NOT_VERIFIED")
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §9!%§());
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_BANNED")
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.PLAYER_BANNED));
         }
         else if(_loc2_ && _loc2_.error == "IP_BANNED")
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.IP_BANNED));
         }
         else
         {
            (§ !g§.§;!'§ as §`Y§).§>";§.openPopup(new §^p§(§8"3§.CODE_NOT_EXIST));
            dispatchEvent(new §3!d§(§3!d§.§-l§));
         }
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §3!d§(§3!d§.§-l§));
         this.§!!]§ = false;
      }
   }
}
