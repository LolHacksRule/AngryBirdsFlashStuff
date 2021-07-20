package § §#4
{
   import §!#C§.§ $?§;
   import §!#C§.§null§;
   import §"c§.CoinShopPopup;
   import §&!_§.§!!K§;
   import §6t§.§,5§;
   import §]C§.§ !+§;
   import §`"3§.§^!Z§;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class §1#e§ extends EventDispatcher implements §<!1§
   {
       
      
      public function §1#e§()
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
            § !+§.addCallback("purchaseCompleted",this.§?"k§);
            § !+§.addCallback("purchaseFailed",this.§##y§);
            § !+§.addCallback("handleUserCancelledOrder",this.§"#9§);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            § !+§.§?!§("purchaseCompleted",this.§?"k§);
            § !+§.§?!§("purchaseFailed",this.§##y§);
            § !+§.§?!§("handleUserCancelledOrder",this.§"#9§);
         }
      }
      
      private function §?"k§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         var _loc5_:§^!Z§ = null;
         if(param4 == "completed")
         {
            § $?§.§`"H§.§-!P§(param2 > 0);
            (_loc5_ = new §^!Z§()).currency = "IVC";
            _loc5_.§'$,§ = §null§.§%l§;
            _loc5_.screen = CoinShopPopup.ID;
            _loc5_.amount = param2;
            _loc5_.§`"x§ = §!!K§.§;"$§;
            _loc5_.itemType = §null§.§%l§;
            _loc5_.§#Z§ = param1;
            §!!K§.§%#S§().§%!D§(false,_loc5_.itemType,_loc5_.amount,_loc5_.§`"x§,_loc5_.screen,_loc5_.level,_loc5_.itemType,_loc5_.§'$,§,_loc5_.§%#&§,_loc5_.currency,_loc5_.§#Z§);
            dispatchEvent(new §,5§(§,5§.§?C§,param2));
         }
         this.dispose();
      }
      
      private function §##y§() : void
      {
         dispatchEvent(new §,5§(§,5§.§]#=§));
         this.dispose();
      }
      
      private function §"#9§() : void
      {
         dispatchEvent(new §,5§(§,5§.§8"L§));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
