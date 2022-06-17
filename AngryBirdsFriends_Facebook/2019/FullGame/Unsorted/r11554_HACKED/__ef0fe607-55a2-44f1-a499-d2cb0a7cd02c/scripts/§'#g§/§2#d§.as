package §'#g§
{
   import §+#B§.§5"w§;
   import §7#j§.§@"F§;
   import flash.external.ExternalInterface;
   
   public class §2#d§ extends §4#k§
   {
       
      
      public function §2#d§()
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
            §@"F§.§^$#§("placeOrderRedeemGiftCard");
            §5"w§.§>![§("FacebookGiftCard");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
