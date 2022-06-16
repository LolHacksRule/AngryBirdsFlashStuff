package §1"N§
{
   import §%!x§.§^!K§;
   import §`7§.§`"x§;
   import flash.external.ExternalInterface;
   
   public class §>#`§ extends §@"8§
   {
       
      
      public function §>#`§()
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
            §^!K§.§+"D§("placeOrderRedeemGiftCard");
            §`"x§.§"#h§("FacebookGiftCard");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
