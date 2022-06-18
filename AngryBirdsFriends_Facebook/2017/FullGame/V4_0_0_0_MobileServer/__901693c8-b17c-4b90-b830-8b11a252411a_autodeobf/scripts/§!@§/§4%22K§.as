package §!@§
{
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §+"E§.§8#m§;
   import §6!0§.§ "8§;
   import §6V§.§?!=§;
   import §9"0§.CoinShopPopup;
   import §;#r§.§"g§;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class §4"K§ extends EventDispatcher implements §&"R§
   {
       
      
      public function §4"K§()
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
            § "8§.addCallback("purchaseCompleted",this.§&`§);
            § "8§.addCallback("purchaseFailed",this.§@#w§);
            § "8§.addCallback("handleUserCancelledOrder",this.§ "`§);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            § "8§.§+#R§("purchaseCompleted",this.§&`§);
            § "8§.§+#R§("purchaseFailed",this.§@#w§);
            § "8§.§+#R§("handleUserCancelledOrder",this.§ "`§);
         }
      }
      
      private function §&`§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         var _loc5_:§"g§ = null;
         if(param4 == "completed")
         {
            §4"W§.§ "D§.§@!z§(param2 > 0);
            (_loc5_ = new §"g§()).currency = "IVC";
            _loc5_.§;!1§ = §6$0§.§3#j§;
            _loc5_.screen = CoinShopPopup.ID;
            _loc5_.amount = param2;
            _loc5_.§>"j§ = §?!=§.§%"w§;
            _loc5_.itemType = §6$0§.§3#j§;
            _loc5_.§]$9§ = param1;
            §?!=§.§3!q§().§%"X§(false,_loc5_.itemType,_loc5_.amount,_loc5_.§>"j§,_loc5_.screen,_loc5_.level,_loc5_.itemType,_loc5_.§;!1§,_loc5_.§^$9§,_loc5_.currency,_loc5_.§]$9§);
            dispatchEvent(new §8#m§(§8#m§.§,#y§,param2));
         }
         this.dispose();
      }
      
      private function §@#w§() : void
      {
         dispatchEvent(new §8#m§(§8#m§.§?E§));
         this.dispose();
      }
      
      private function § "`§() : void
      {
         dispatchEvent(new §8#m§(§8#m§.§`y§));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
