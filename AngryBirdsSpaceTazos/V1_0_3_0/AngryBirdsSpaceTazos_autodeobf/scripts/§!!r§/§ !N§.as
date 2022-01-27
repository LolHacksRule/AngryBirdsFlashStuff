package §!!r§
{
   import § !K§.§+§;
   import §!"4§.§;";§;
   import §&e§.§<x§;
   import §+"C§.§25§;
   import §+"C§.§3'§;
   import §+"C§.§<!-§;
   import §+"C§.§["G§;
   import §5R§.§=F§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class § !N§ extends EventDispatcher implements §&!D§
   {
       
      
      private var §8!,§:Boolean = false;
      
      private var §"!§:§25§;
      
      public function § !N§()
      {
         super();
         this.§"!§ = new §25§();
      }
      
      public function § ";§(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:§=F§ = null;
         var _loc2_:Boolean = param1.length != 0 && param1 != "Incorrect code" && param1 != "Código incorrecto" && param1 != "Code already used" && param1 != "Código ya utilizado" && param1 != "<Type code here>" && param1 != "<Introduzca el código aquí>";
         if(this.§8!,§ == false && _loc2_)
         {
            _loc3_ = "code";
            _loc4_ = {
               "playerId":§;";§.§3U§.id,
               "code":param1
            };
            _loc5_ = new §=F§(_loc4_,§["!§.§7!h§ + _loc3_,this,§=F§.§8"H§);
            this.§8!,§ = true;
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(this.§"!§);
         }
         else if(this.§8!,§ == false && !_loc2_)
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.ENTER_CODE));
            dispatchEvent(new §<l§(§<l§.§9!E§));
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         this.§8!,§ = false;
         this.§"!§.close();
         if(_loc2_ && _loc2_.items && _loc2_.itemsSecurity && _loc2_.id && §=F§.§ Z§(_loc2_.id,_loc2_.items) == _loc2_.itemsSecurity)
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §<!-§());
            §+§.§8!J§.§;"0§();
            dispatchEvent(new §<l§(§<l§.§'"#§));
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.CODE_USED));
            dispatchEvent(new §<l§(§<l§.§7#§));
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_NOT_VERIFIED")
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §3'§());
         }
         else if(_loc2_ && _loc2_.error == "PLAYER_BANNED")
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.PLAYER_BANNED));
         }
         else if(_loc2_ && _loc2_.error == "IP_BANNED")
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.IP_BANNED));
         }
         else if(_loc2_ && _loc2_.error == "TOO_MANY_CODES")
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.TOO_MANY_CODES));
         }
         else
         {
            (§&"<§.§<!7§ as §["!§).§1"0§.openPopup(new §["G§(§<x§.CODE_NOT_EXIST));
            dispatchEvent(new §<l§(§<l§.§0y§));
         }
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
         dispatchEvent(new §<l§(§<l§.§0y§));
         this.§8!,§ = false;
      }
   }
}
