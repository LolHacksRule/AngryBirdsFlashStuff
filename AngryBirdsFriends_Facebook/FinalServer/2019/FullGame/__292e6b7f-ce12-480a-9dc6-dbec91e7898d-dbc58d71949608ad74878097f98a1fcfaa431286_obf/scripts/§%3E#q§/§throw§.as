package §>#q§
{
   import §#"4§.§<"G§;
   import §#$?§.§7!b§;
   import flash.external.ExternalInterface;
   
   public class §throw§ extends §%"K§
   {
       
      
      public function §throw§()
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
            §7!b§.§7@§("placeOrderRedeemGiftCard");
            §<"G§.§6##§("FacebookGiftCard");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
