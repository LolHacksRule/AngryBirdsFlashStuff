package §[z§
{
   import §%!P§.§7""§;
   import §&!o§.§2"E§;
   import §5"@§.§1!N§;
   import §]!x§.§#!x§;
   import §]!x§.§&A§;
   import §]!x§.§6+§;
   import §]!x§.§]F§;
   import §`>§.§>7§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §;H§ extends EventDispatcher implements §[!A§
   {
       
      
      private var §!"A§:Boolean = false;
      
      private var §8§:§#!x§;
      
      public function §;H§()
      {
         super();
         this.§8§ = new §#!x§();
      }
      
      public function §+!L§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§7""§ = null;
         var _loc2_:Boolean = param1.length != 0 && param1 != "Incorrect code" && param1 != "Código incorrecto" && param1 != "Code already used" && param1 != "Código ya utilizado" && param1 != "<Type code here>" && param1 != "<Introduzca el código aquí>";
         if(this.§!"A§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§1!N§.§,!<§.id,
               "code":param1
            };
            _loc5_ = new §7""§(_loc4_,§@T§.§&Z§ + _loc3_,this,§7""§.§4!8§);
            this.§!"A§ = true;
            (§2&§.§6o§ as §@T§).§^7§.openPopup(this.§8§);
         }
         else if(this.§!"A§ == false && !_loc2_)
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.ENTER_CODE));
            dispatchEvent(new §;§(§;§.§=S§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         this.§!"A§ = false;
         this.§8§.close();
         if(_loc2_ && _loc2_.items && _loc2_.itemsSecurity && _loc2_.id && §7""§.§7"6§(_loc2_.id,_loc2_.items) == _loc2_.itemsSecurity)
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §6+§());
            §2"E§.§3R§.§-l§();
            dispatchEvent(new §;§(§;§.§&!C§));
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.CODE_USED));
            dispatchEvent(new §;§(§;§.§2!R§));
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_NOT_VERIFIED")
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §]F§());
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_BANNED")
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.PLAYER_BANNED));
         }
         else if(_loc2_ && _loc2_.error == "IP_BANNED")
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.IP_BANNED));
         }
         else if(_loc2_ && _loc2_.error == "TOO_MANY_CODES")
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.TOO_MANY_CODES));
         }
         else
         {
            (§2&§.§6o§ as §@T§).§^7§.openPopup(new §&A§(§>7§.CODE_NOT_EXIST));
            dispatchEvent(new §;§(§;§.§?"-§));
         }
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §;§(§;§.§?"-§));
         this.§!"A§ = false;
      }
   }
}
