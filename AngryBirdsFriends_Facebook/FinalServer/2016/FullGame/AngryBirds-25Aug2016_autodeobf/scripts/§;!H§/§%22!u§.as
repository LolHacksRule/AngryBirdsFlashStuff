package §;!H§
{
   import §%$!§.§%h§;
   import §%$!§.§=]§;
   import §+"%§.§6X§;
   import §3!B§.§9##§;
   import §>!#§.§-#A§;
   import §>q§.CoinShopPopup;
   import §^$4§.§4I§;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class §"!u§ extends EventDispatcher implements §!!8§
   {
       
      
      public function §"!u§()
      {
         super();
         this.initialize();
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function initialize() : void
      {
         if(ExternalInterface.available)
         {
            §6X§.addCallback("purchaseCompleted",this.§2"T§);
            §6X§.addCallback("purchaseFailed",this.§7"H§);
            §6X§.addCallback("handleUserCancelledOrder",this.§#!M§);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            §6X§.§5!3§("purchaseCompleted",this.§2"T§);
            §6X§.§5!3§("purchaseFailed",this.§7"H§);
            §6X§.§5!3§("handleUserCancelledOrder",this.§#!M§);
         }
      }
      
      private function §2"T§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         var _loc5_:§9##§ = null;
         if(param4 == "completed")
         {
            §%h§.§3!]§.§=L§(param2 > 0);
            (_loc5_ = new §9##§()).currency = "IVC";
            _loc5_.iapType = §=]§.§;Q§;
            _loc5_.§;"O§ = CoinShopPopup.ID;
            _loc5_.amount = param2;
            _loc5_.gainType = §-#A§.§;#8§;
            _loc5_.itemType = §=]§.§;Q§;
            _loc5_.§'$§ = param1;
            §-#A§.§6$2§().§]!H§(false,_loc5_.itemType,_loc5_.amount,_loc5_.gainType,_loc5_.§;"O§,_loc5_.level,_loc5_.itemType,_loc5_.iapType,_loc5_.§#!v§,_loc5_.currency,_loc5_.§'$§);
            dispatchEvent(new §4I§(§4I§.§`!M§,param2));
         }
         this.dispose();
      }
      
      private function §7"H§() : void
      {
         dispatchEvent(new §4I§(§4I§.§ !,§));
         this.dispose();
      }
      
      private function §#!M§() : void
      {
         dispatchEvent(new §4I§(§4I§.§do§));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
