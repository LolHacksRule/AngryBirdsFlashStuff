package com.angrybirds.shoppopup.serveractions
{
   import com.rovio.externalInterface.ExternalInterfaceHandler;
   import com.rovio.utils.FacebookGoogleAnalyticsTracker;
   import flash.external.ExternalInterface;
   
   public class FacebookRedeemItem extends RedeemItem
   {
       
      
      public function FacebookRedeemItem()
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
            ExternalInterfaceHandler.performCall("placeOrderRedeemGiftCard");
            FacebookGoogleAnalyticsTracker.trackShopProductRedeemSelected("FacebookGiftCard");
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
