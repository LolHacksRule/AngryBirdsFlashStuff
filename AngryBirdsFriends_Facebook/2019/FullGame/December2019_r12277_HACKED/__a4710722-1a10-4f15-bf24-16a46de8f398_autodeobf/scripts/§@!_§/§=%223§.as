package §@!_§
{
   import §2E§.§'@§;
   import §]!4§.§=#c§;
   import flash.external.ExternalInterface;
   
   public class §="3§ extends §?!X§
   {
       
      
      public function §="3§()
      {
         super();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function redeem() : void
      {
         if(ExternalInterface.available)
         {
            §=#c§.§<!t§("placeOrderRedeemGiftCard");
            §'@§.§#"E§("FacebookGiftCard");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
