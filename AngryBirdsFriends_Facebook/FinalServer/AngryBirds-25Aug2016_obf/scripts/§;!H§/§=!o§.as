package §;!H§
{
   import §+"%§.§6X§;
   import §>!#§.§,"W§;
   import flash.external.ExternalInterface;
   
   public class §=!o§ extends §"!u§
   {
       
      
      public function §=!o§()
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
            §6X§.§3U§("placeOrderRedeemGiftCard");
            §,"W§.§@"S§("FacebookGiftCard");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
