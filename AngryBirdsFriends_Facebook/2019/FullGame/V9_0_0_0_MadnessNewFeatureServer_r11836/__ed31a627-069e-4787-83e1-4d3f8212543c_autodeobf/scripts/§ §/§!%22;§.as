package § §#4
{
   import §&!_§.§0I§;
   import §]C§.§ !+§;
   import flash.external.ExternalInterface;
   
   public class §!";§ extends §1#e§
   {
       
      
      public function §!";§()
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
            § !+§.§>$%§("placeOrderRedeemGiftCard");
            §0I§.§?!A§("FacebookGiftCard");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
