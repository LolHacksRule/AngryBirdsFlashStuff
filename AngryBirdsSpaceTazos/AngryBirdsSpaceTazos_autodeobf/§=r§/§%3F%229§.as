package §=r§
{
   import §!?§.§'k§;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §7!B§.§@!^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §?"9§ extends EventDispatcher implements §-!^§
   {
       
      
      private var §`"+§:§7!r§;
      
      public function §?"9§(param1:§7!r§)
      {
         super();
         this.§`"+§ = param1;
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §=!<§(§=!<§.§7k§));
            §7!r§.§[!1§.§-!F§();
            return;
         }
         var _loc3_:int = 0;
         var _loc4_:Array = _loc2_.items;
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.type == "VuelaTazos")
            {
               _loc3_ = _loc5_.count;
            }
         }
         this.§`"+§.§#!+§(_loc3_);
         dispatchEvent(new §=!<§(§=!<§.§9E§));
         (_loc6_ = {}).type = "VuelaTazos";
         _loc6_.count = _loc3_;
         (_loc7_ = []).push(_loc6_);
         if((_loc8_ = §'k§.§5-§(§@!^§.§2j§.id,_loc7_)) != _loc2_.itemsSecurity)
         {
            dispatchEvent(new §=!<§(§=!<§.§7k§));
            return;
         }
         dispatchEvent(new §=!<§(§=!<§.§3!7§));
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
      
      public function §="5§() : void
      {
         var _loc2_:Object = {};
         _loc2_.type = "VuelaTazos";
         _loc2_.count = 1;
         var _loc3_:Array = [];
         _loc3_.push(_loc2_);
         var _loc4_:String = §'k§.§5-§(§@!^§.§2j§.id,_loc3_);
         var _loc5_:Object = {
            "id":§@!^§.§2j§.id,
            "items":_loc3_,
            "itemsSecurity":_loc4_
         };
         var _loc6_:§'k§ = new §'k§(_loc5_,§`Y§.§6T§ + "useItem",this,§'k§.§;!^§);
      }
   }
}
