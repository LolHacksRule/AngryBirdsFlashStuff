package §1"N§
{
   import §%!x§.§^!K§;
   import §2"5§.§[#G§;
   import §2G§.§"G§;
   import §2G§.§-#+§;
   import §4#V§.CoinShopPopup;
   import §5"7§.§+$"§;
   import §`7§.§ try§;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class §@"8§ extends EventDispatcher implements §+"O§
   {
       
      
      public function §@"8§()
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
            §^!K§.addCallback("purchaseCompleted",this.§4y§);
            §^!K§.addCallback("purchaseFailed",this.§&]§);
            §^!K§.addCallback("handleUserCancelledOrder",this.§6#d§);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            §^!K§.§,"i§("purchaseCompleted",this.§4y§);
            §^!K§.§,"i§("purchaseFailed",this.§&]§);
            §^!K§.§,"i§("handleUserCancelledOrder",this.§6#d§);
         }
      }
      
      private function §4y§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         var _loc5_:§+$"§ = null;
         if(param4 == "completed")
         {
            §-#+§.§6!§.§<"k§(param2 > 0);
            (_loc5_ = new §+$"§()).currency = "IVC";
            _loc5_.§ #5§ = §"G§.§6!@§;
            _loc5_.screen = CoinShopPopup.ID;
            _loc5_.amount = param2;
            _loc5_.§2>§ = § try§.§#B§;
            _loc5_.itemType = §"G§.§6!@§;
            _loc5_.§0"q§ = param1;
            § try§.§!!t§().§ #D§(false,_loc5_.itemType,_loc5_.amount,_loc5_.§2>§,_loc5_.screen,_loc5_.level,_loc5_.itemType,_loc5_.§ #5§,_loc5_.§7#?§,_loc5_.currency,_loc5_.§0"q§);
            dispatchEvent(new §[#G§(§[#G§.§@!B§,param2));
         }
         this.dispose();
      }
      
      private function §&]§() : void
      {
         dispatchEvent(new §[#G§(§[#G§.§!"§));
         this.dispose();
      }
      
      private function §6#d§() : void
      {
         dispatchEvent(new §[#G§(§[#G§.§7!#§));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
