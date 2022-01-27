package § !K§
{
   import §!!r§.§&!D§;
   import §!!r§.§,!u§;
   import §!"4§.§;";§;
   import §5R§.§=F§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §+§ extends EventDispatcher implements §&!D§
   {
      
      protected static var §<!S§:§+§;
       
      
      private var §1!;§:int;
      
      private var §&%§:§4"E§;
      
      public function §+§()
      {
         super();
         if(§<!S§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         this.§65§();
         §<!S§ = this;
         this.§&%§ = new §4"E§(this);
      }
      
      public static function get §8!J§() : §+§
      {
         if(!§<!S§)
         {
            §<!S§ = new §+§();
         }
         return §<!S§;
      }
      
      public function §65§() : void
      {
         this.§1!;§ = 0;
         if(this.§&%§)
         {
            this.§&%§.removeEventListener(§=!$§.§2!§,this.§=!&§);
            this.§&%§.removeEventListener(§=!$§.§[!w§,this.§-!N§);
            this.§&%§.removeEventListener(§=!$§.§5c§,this.§3B§);
         }
      }
      
      public function §;"0§() : void
      {
         var _loc2_:Object = {"id":§;";§.§3U§.id};
         var _loc3_:§=F§ = new §=F§(_loc2_,§["!§.§7!h§ + "getItems",this,§=F§.§8"H§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc2_:Object = §,!u§.§4!E§((param1.currentTarget as URLLoader).data);
         if(_loc2_.error)
         {
            dispatchEvent(new §=!$§(§=!$§.§6";§));
            return;
         }
         var _loc3_:Array = _loc2_.items;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.type == "VuelaTazos")
            {
               this.§1!;§ = _loc4_.count;
            }
         }
         (_loc5_ = {}).type = "VuelaTazos";
         _loc5_.count = this.§1!;§;
         (_loc6_ = []).push(_loc5_);
         if((_loc7_ = §=F§.§ Z§(§;";§.§3U§.id,_loc6_)) != _loc2_.itemsSecurity)
         {
            this.§1!;§ = 0;
            dispatchEvent(new §=!$§(§=!$§.§6";§));
            return;
         }
         dispatchEvent(new §=!$§(§=!$§.§5c§));
      }
      
      public function dynamic(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §1x§(param1:IOErrorEvent) : void
      {
      }
      
      public function §6!^§() : int
      {
         return this.§1!;§;
      }
      
      public function §>"2§(param1:int) : void
      {
         this.§1!;§ = param1;
      }
      
      public function §,!$§() : void
      {
         this.§&%§.addEventListener(§=!$§.§2!§,this.§=!&§);
         this.§&%§.addEventListener(§=!$§.§[!w§,this.§-!N§);
         this.§&%§.addEventListener(§=!$§.§5c§,this.§3B§);
         this.§&%§.§,!$§();
      }
      
      private function §=!&§(param1:Event) : void
      {
         dispatchEvent(new §=!$§(§=!$§.§2!§));
         this.§&%§.removeEventListener(§=!$§.§2!§,this.§=!&§);
         this.§&%§.removeEventListener(§=!$§.§[!w§,this.§-!N§);
      }
      
      private function §-!N§(param1:Event) : void
      {
         dispatchEvent(new §=!$§(§=!$§.§[!w§));
         this.§&%§.removeEventListener(§=!$§.§2!§,this.§=!&§);
         this.§&%§.removeEventListener(§=!$§.§[!w§,this.§-!N§);
      }
      
      private function §3B§(param1:Event) : void
      {
         dispatchEvent(new §=!$§(§=!$§.§5c§));
         this.§&%§.removeEventListener(§=!$§.§5c§,this.§3B§);
      }
   }
}
