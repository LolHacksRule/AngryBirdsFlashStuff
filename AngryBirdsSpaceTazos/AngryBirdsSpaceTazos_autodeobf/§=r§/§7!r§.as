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
   
   public class §7!r§ extends EventDispatcher implements §-!^§
   {
      
      protected static var §1'§:§7!r§;
       
      
      private var §8!e§:int;
      
      private var §6M§:§?"9§;
      
      public function §7!r§()
      {
         super();
         if(§1'§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§#!§();
         §1'§ = this;
         this.§6M§ = new §?"9§(this);
      }
      
      public static function get §[!1§() : §7!r§
      {
         if(!§1'§)
         {
            §1'§ = new §7!r§();
         }
         return §1'§;
      }
      
      public function §#!§() : void
      {
         this.§8!e§ = 0;
         if(this.§6M§)
         {
            this.§6M§.removeEventListener(§=!<§.§3!7§,this.§6"G§);
            this.§6M§.removeEventListener(§=!<§.§7k§,this.§^f§);
            this.§6M§.removeEventListener(§=!<§.§9E§,this.§'c§);
         }
      }
      
      public function §-!F§() : void
      {
         var _loc2_:Object = {"id":§@!^§.§2j§.id};
         var _loc3_:§'k§ = new §'k§(_loc2_,§`Y§.§6T§ + "getItems",this,§'k§.§;!^§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §=!<§(§=!<§.§="9§));
            return;
         }
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.type == "VuelaTazos")
            {
               this.§8!e§ = _loc4_.count;
            }
         }
         (_loc5_ = {}).type = "VuelaTazos";
         _loc5_.count = this.§8!e§;
         (_loc6_ = []).push(_loc5_);
         if((_loc7_ = §'k§.§5-§(§@!^§.§2j§.id,_loc6_)) != _loc2_.itemsSecurity)
         {
            this.§8!e§ = 0;
            dispatchEvent(new §=!<§(§=!<§.§="9§));
            return;
         }
         dispatchEvent(new §=!<§(§=!<§.§9E§));
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
      
      public function §2"2§() : int
      {
         return this.§8!e§;
      }
      
      public function §#!+§(param1:int) : void
      {
         this.§8!e§ = param1;
      }
      
      public function §="5§() : void
      {
         this.§6M§.addEventListener(§=!<§.§3!7§,this.§6"G§);
         this.§6M§.addEventListener(§=!<§.§7k§,this.§^f§);
         this.§6M§.addEventListener(§=!<§.§9E§,this.§'c§);
         this.§6M§.§="5§();
      }
      
      private function §6"G§(param1:Event) : void
      {
         dispatchEvent(new §=!<§(§=!<§.§3!7§));
         this.§6M§.removeEventListener(§=!<§.§3!7§,this.§6"G§);
         this.§6M§.removeEventListener(§=!<§.§7k§,this.§^f§);
      }
      
      private function §^f§(param1:Event) : void
      {
         dispatchEvent(new §=!<§(§=!<§.§7k§));
         this.§6M§.removeEventListener(§=!<§.§3!7§,this.§6"G§);
         this.§6M§.removeEventListener(§=!<§.§7k§,this.§^f§);
      }
      
      private function §'c§(param1:Event) : void
      {
         dispatchEvent(new §=!<§(§=!<§.§9E§));
         this.§6M§.removeEventListener(§=!<§.§9E§,this.§'c§);
      }
   }
}
