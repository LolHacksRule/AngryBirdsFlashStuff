package §4!x§
{
   import §""%§.§#`§;
   import §1!]§.§"!C§;
   import §1!]§.§,!_§;
   import §1!]§.§@R§;
   import §1!]§.§^!W§;
   import §5s§.§ !_§;
   import §6"6§.§40§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import §package§.§<@§;
   
   public class §<W§ extends EventDispatcher implements §`[§
   {
       
      
      private var §,i§:Boolean = false;
      
      private var §6h§:§"!C§;
      
      public function §<W§()
      {
         super();
         this.§6h§ = new §"!C§();
      }
      
      public function §%!%§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§#`§ = null;
         var _loc2_:Boolean = param1.length != 0 && param1 != "Incorrect code" && param1 != "Código incorrecto" && param1 != "Code already used" && param1 != "Código ya utilizado" && param1 != "<Type code here>" && param1 != "<Introduzca el código aquí>";
         if(this.§,i§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§40§.§1"$§.id,
               "code":param1
            };
            _loc5_ = new §#`§(_loc4_,§^"=§.§^"3§ + _loc3_,this,§#`§.§-n§);
            this.§,i§ = true;
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(this.§6h§);
         }
         else if(this.§,i§ == false && !_loc2_)
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.ENTER_CODE));
            dispatchEvent(new §&!=§(§&!=§.§5"$§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §`q§.§<f§((param1.currentTarget as URLLoader).data);
         this.§,i§ = false;
         this.§6h§.close();
         if(_loc2_ && _loc2_.items && _loc2_.itemsSecurity && _loc2_.id && §#`§.§<!w§(_loc2_.id,_loc2_.items) == _loc2_.itemsSecurity)
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §@R§());
            §<@§.§<"B§.§9g§();
            dispatchEvent(new §&!=§(§&!=§.§^!H§));
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.CODE_USED));
            dispatchEvent(new §&!=§(§&!=§.§>!8§));
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_NOT_VERIFIED")
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §^!W§());
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_BANNED")
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.PLAYER_BANNED));
         }
         else if(_loc2_ && _loc2_.error == "IP_BANNED")
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.IP_BANNED));
         }
         else if(_loc2_ && _loc2_.error == "TOO_MANY_CODES")
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.TOO_MANY_CODES));
         }
         else
         {
            (§&!h§.§ u§ as §^"=§).§-"F§.openPopup(new §,!_§(§ !_§.CODE_NOT_EXIST));
            dispatchEvent(new §&!=§(§&!=§.§7w§));
         }
      }
      
      public function §"!7§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §5"9§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §&!=§(§&!=§.§7w§));
         this.§,i§ = false;
      }
   }
}
