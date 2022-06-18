package §@!_§
{
   import §+Z§.§8!`§;
   import §2E§.§]!P§;
   import §7!3§.§-!>§;
   import §8!G§.CoinShopPopup;
   import §>#Y§.§!",§;
   import §>#Y§.§2$8§;
   import §]!4§.§=#c§;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class §?!X§ extends EventDispatcher implements §^"E§
   {
       
      
      public function §?!X§()
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
            §=#c§.addCallback("purchaseCompleted",this.§&#A§);
            §=#c§.addCallback("purchaseFailed",this.§-!e§);
            §=#c§.addCallback("handleUserCancelledOrder",this.§@#i§);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            §=#c§.§`$ §("purchaseCompleted",this.§&#A§);
            §=#c§.§`$ §("purchaseFailed",this.§-!e§);
            §=#c§.§`$ §("handleUserCancelledOrder",this.§@#i§);
         }
      }
      
      private function §&#A§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         var _loc5_:§-!>§ = null;
         if(param4 == "completed")
         {
            §!",§.§3"1§.§,"&§(param2 > 0);
            (_loc5_ = new §-!>§()).currency = "IVC";
            _loc5_.§>#$§ = §2$8§.§,"p§;
            _loc5_.screen = CoinShopPopup.ID;
            _loc5_.amount = param2;
            _loc5_.§'#w§ = §]!P§.§;C§;
            _loc5_.itemType = §2$8§.§,"p§;
            _loc5_.§;"u§ = param1;
            §]!P§.§1!7§().§=#3§(false,_loc5_.itemType,_loc5_.amount,_loc5_.§'#w§,_loc5_.screen,_loc5_.level,_loc5_.itemType,_loc5_.§>#$§,_loc5_.§7$&§,_loc5_.currency,_loc5_.§;"u§);
            dispatchEvent(new §8!`§(§8!`§.§>#t§,param2));
         }
         this.dispose();
      }
      
      private function §-!e§() : void
      {
         dispatchEvent(new §8!`§(§8!`§.§33§));
         this.dispose();
      }
      
      private function §@#i§() : void
      {
         dispatchEvent(new §8!`§(§8!`§.§@,§));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
