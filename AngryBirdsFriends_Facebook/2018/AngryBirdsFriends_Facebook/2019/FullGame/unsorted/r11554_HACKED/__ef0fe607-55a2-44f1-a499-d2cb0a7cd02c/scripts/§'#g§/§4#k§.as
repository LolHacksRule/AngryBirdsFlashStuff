package §'#g§
{
   import §%4§.CoinShopPopup;
   import §+#B§.§+$A§;
   import §-!"§.§7z§;
   import §5"c§.§!!o§;
   import §7#j§.§@"F§;
   import §]"'§.§#$D§;
   import §]"'§.§>I§;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class §4#k§ extends EventDispatcher implements §-$§
   {
       
      
      public function §4#k§()
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
            §@"F§.addCallback("purchaseCompleted",this.§##&§);
            §@"F§.addCallback("purchaseFailed",this.§^$=§);
            §@"F§.addCallback("handleUserCancelledOrder",this.§?#-§);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            §@"F§.§=F§("purchaseCompleted",this.§##&§);
            §@"F§.§=F§("purchaseFailed",this.§^$=§);
            §@"F§.§=F§("handleUserCancelledOrder",this.§?#-§);
         }
      }
      
      private function §##&§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         var _loc5_:§7z§ = null;
         if(param4 == "completed")
         {
            §#$D§.§?q§.§>!'§(param2 > 0);
            (_loc5_ = new §7z§()).currency = "IVC";
            _loc5_.§6"d§ = §>I§.§ !C§;
            _loc5_.screen = CoinShopPopup.ID;
            _loc5_.amount = param2;
            _loc5_.§+#;§ = §+$A§.§`w§;
            _loc5_.itemType = §>I§.§ !C§;
            _loc5_.§-!G§ = param1;
            §+$A§.§@"i§().§%!+§(false,_loc5_.itemType,_loc5_.amount,_loc5_.§+#;§,_loc5_.screen,_loc5_.level,_loc5_.itemType,_loc5_.§6"d§,_loc5_.§#!z§,_loc5_.currency,_loc5_.§-!G§);
            dispatchEvent(new §!!o§(§!!o§.§?O§,param2));
         }
         this.dispose();
      }
      
      private function §^$=§() : void
      {
         dispatchEvent(new §!!o§(§!!o§.§[!]§));
         this.dispose();
      }
      
      private function §?#-§() : void
      {
         dispatchEvent(new §!!o§(§!!o§.§"#X§));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
