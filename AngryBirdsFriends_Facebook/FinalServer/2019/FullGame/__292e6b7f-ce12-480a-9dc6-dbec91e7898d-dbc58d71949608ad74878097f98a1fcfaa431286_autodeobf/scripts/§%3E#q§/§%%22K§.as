package §>#q§
{
   import §#"4§.§3";§;
   import §#$?§.§7!b§;
   import §&=§.§<#V§;
   import §,#,§.§>#g§;
   import §,#,§.§]§;
   import §[#V§.§>#!§;
   import §]"U§.CoinShopPopup;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   
   public class §%"K§ extends EventDispatcher implements §+R§
   {
       
      
      public function §%"K§()
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
            §7!b§.addCallback("purchaseCompleted",this.§"!C§);
            §7!b§.addCallback("purchaseFailed",this.§,6§);
            §7!b§.addCallback("handleUserCancelledOrder",this.§7"9§);
         }
      }
      
      private function removeEventListeners() : void
      {
         if(ExternalInterface.available)
         {
            §7!b§.§&#&§("purchaseCompleted",this.§"!C§);
            §7!b§.§&#&§("purchaseFailed",this.§,6§);
            §7!b§.§&#&§("handleUserCancelledOrder",this.§7"9§);
         }
      }
      
      private function §"!C§(param1:String, param2:Number, param3:String, param4:String) : void
      {
         var _loc5_:§<#V§ = null;
         if(param4 == "completed")
         {
            §]#0§.§+!,§.§@!z§(param2 > 0);
            (_loc5_ = new §<#V§()).currency = "IVC";
            _loc5_.§#!D§ = §>#g§.§=-§;
            _loc5_.screen = CoinShopPopup.ID;
            _loc5_.amount = param2;
            _loc5_.§]#=§ = §3";§.§[$4§;
            _loc5_.itemType = §>#g§.§=-§;
            _loc5_.§>$%§ = param1;
            §3";§.§#"'§().§7"Q§(false,_loc5_.itemType,_loc5_.amount,_loc5_.§]#=§,_loc5_.screen,_loc5_.level,_loc5_.itemType,_loc5_.§#!D§,_loc5_.§&$3§,_loc5_.currency,_loc5_.§>$%§);
            dispatchEvent(new §>#!§(§>#!§.§@K§,param2));
         }
         this.dispose();
      }
      
      private function §,6§() : void
      {
         dispatchEvent(new §>#!§(§>#!§.§<w§));
         this.dispose();
      }
      
      private function §7"9§() : void
      {
         dispatchEvent(new §>#!§(§>#!§.§0#J§));
         this.dispose();
      }
      
      public function redeem() : void
      {
         throw new Error("This method should be overridden.");
      }
   }
}
