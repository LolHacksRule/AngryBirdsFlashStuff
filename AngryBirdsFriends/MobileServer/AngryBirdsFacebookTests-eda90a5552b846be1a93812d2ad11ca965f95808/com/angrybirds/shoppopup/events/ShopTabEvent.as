package com.angrybirds.shoppopup.events
{
   import com.angrybirds.shoppopup.PricePoint;
   import com.angrybirds.shoppopup.ShopItem;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class ShopTabEvent extends Event
   {
      
      public static const TAB_CLICKED:String = "tabClicked";
      
      public static const ITEM_BUY:String = "itemBuy";
       
      
      private var mShopItem:ShopItem;
      
      private var mPricePoint:PricePoint;
      
      private var mPoint:Point;
      
      private var mShopType:String;
      
      public function ShopTabEvent(type:String, shopType:String, bubbles:Boolean = false, cancelable:Boolean = false, shopItem:ShopItem = null, pricePoint:PricePoint = null, point:Point = null)
      {
         super(type,bubbles,cancelable);
         this.mShopItem = shopItem;
         this.mPricePoint = pricePoint;
         this.mPoint = point;
         this.mShopType = shopType;
      }
      
      public function get point() : Point
      {
         return this.mPoint;
      }
      
      public function get pricePoint() : PricePoint
      {
         return this.mPricePoint;
      }
      
      public function get shopItem() : ShopItem
      {
         return this.mShopItem;
      }
      
      public function get shopType() : String
      {
         return this.mShopType;
      }
   }
}
