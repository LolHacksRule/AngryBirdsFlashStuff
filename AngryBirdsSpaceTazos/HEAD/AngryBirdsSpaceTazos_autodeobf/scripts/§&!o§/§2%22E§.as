package §&!o§
{
   import §%!P§.§7""§;
   import §5"@§.§1!N§;
   import §[z§.§4!L§;
   import §[z§.§[!A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §2"E§ extends EventDispatcher implements §[!A§
   {
      
      protected static var §?!?§:§2"E§;
       
      
      private var §8o§:int;
      
      private var §6y§:§"!V§;
      
      public function §2"E§()
      {
         super();
         if(§?!?§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§ !#§();
         §?!?§ = this;
         this.§6y§ = new §"!V§(this);
      }
      
      public static function get §3R§() : §2"E§
      {
         if(!§?!?§)
         {
            §?!?§ = new §2"E§();
         }
         return §?!?§;
      }
      
      public function § !#§() : void
      {
         this.§8o§ = 0;
         if(this.§6y§)
         {
            this.§6y§.removeEventListener(§="E§.§;0§,this.§@"@§);
            this.§6y§.removeEventListener(§="E§.§=Y§,this.§[!D§);
            this.§6y§.removeEventListener(§="E§.§3B§,this.§>?§);
         }
      }
      
      public function §-l§() : void
      {
         var _loc2_:Object = {"id":§1!N§.§,!<§.id};
         var _loc3_:§7""§ = new §7""§(_loc2_,§@T§.§&Z§ + "getItems",this,§7""§.§4!8§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc2_:Object = §4!L§.§#";§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §="E§(§="E§.§29§));
            return;
         }
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.type == "VuelaTazos")
            {
               this.§8o§ = _loc4_.count;
            }
         }
         (_loc5_ = {}).type = "VuelaTazos";
         _loc5_.count = this.§8o§;
         (_loc6_ = []).push(_loc5_);
         if((_loc7_ = §7""§.§7"6§(§1!N§.§,!<§.id,_loc6_)) != _loc2_.itemsSecurity)
         {
            this.§8o§ = 0;
            dispatchEvent(new §="E§(§="E§.§29§));
            return;
         }
         dispatchEvent(new §="E§(§="E§.§3B§));
      }
      
      public function §&U§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[!J§(param1:IOErrorEvent) : void
      {
      }
      
      public function §'y§() : int
      {
         return this.§8o§;
      }
      
      public function §#T§(param1:int) : void
      {
         this.§8o§ = param1;
      }
      
      public function §4!6§() : void
      {
         this.§6y§.addEventListener(§="E§.§;0§,this.§@"@§);
         this.§6y§.addEventListener(§="E§.§=Y§,this.§[!D§);
         this.§6y§.addEventListener(§="E§.§3B§,this.§>?§);
         this.§6y§.§4!6§();
      }
      
      private function §@"@§(param1:Event) : void
      {
         dispatchEvent(new §="E§(§="E§.§;0§));
         this.§6y§.removeEventListener(§="E§.§;0§,this.§@"@§);
         this.§6y§.removeEventListener(§="E§.§=Y§,this.§[!D§);
      }
      
      private function §[!D§(param1:Event) : void
      {
         dispatchEvent(new §="E§(§="E§.§=Y§));
         this.§6y§.removeEventListener(§="E§.§;0§,this.§@"@§);
         this.§6y§.removeEventListener(§="E§.§=Y§,this.§[!D§);
      }
      
      private function §>?§(param1:Event) : void
      {
         dispatchEvent(new §="E§(§="E§.§3B§));
         this.§6y§.removeEventListener(§="E§.§3B§,this.§>?§);
      }
   }
}
