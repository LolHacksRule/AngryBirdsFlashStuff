package com.angrybirds.popups.coinshop
{
   import com.angrybirds.shoppopup.PricePoint;
   import com.rovio.assets.AssetCache;
   import com.rovio.sound.SoundEngine;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class AbsCoinShopButton extends EventDispatcher
   {
      
      public static const EVENT_COIN_SHOP_BUTTON_BUY_CLICKED:String = "CoinShopButtonBuyClicked";
       
      
      private var mAssetHolder:Sprite;
      
      protected var mPricePoint:PricePoint;
      
      protected var mCurrencyID:String;
      
      protected var mCoinShopButton:MovieClip;
      
      protected var mButtonIndex:int;
      
      protected var mTotalAmountDigits:uint;
      
      private var mWidth:Number;
      
      private var mHeight:Number;
      
      protected var mshopItemID:String;
      
      public function AbsCoinShopButton(self:AbsCoinShopButton, index:int, pricePoint:PricePoint, currencyID:String, buttonLinkageName:String, shopItemID:String, widthMargin:int = 0)
      {
         super();
         if(self != this)
         {
            throw new Error("Abstract class did not receive reference to self. AbstractClass cannot be instantiated directly.");
         }
         this.mAssetHolder = new Sprite();
         this.mPricePoint = pricePoint;
         this.mButtonIndex = index;
         this.mCurrencyID = currencyID;
         this.mCoinShopButton = new AssetCache.getAssetFromCache(buttonLinkageName)();
         this.mWidth = this.mCoinShopButton.width + widthMargin;
         this.mHeight = this.mCoinShopButton.height;
         this.mshopItemID = shopItemID;
         if(this.mPricePoint.totalQuantity >= 10000)
         {
            this.mTotalAmountDigits = 5;
         }
         else if(this.mPricePoint.totalQuantity >= 1000)
         {
            this.mTotalAmountDigits = 4;
         }
         else
         {
            this.mTotalAmountDigits = 3;
         }
         this.mCoinShopButton.mouseChildren = false;
         this.mCoinShopButton.mouseEnabled = false;
         this.mAssetHolder.addChild(this.mCoinShopButton);
         this.mAssetHolder.addEventListener(MouseEvent.CLICK,this.onBuyClick);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.mAssetHolder.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
      }
      
      protected final function init() : void
      {
         this.setBCIcon();
         this.setBCTextField();
         this.setBG();
         this.setDiscountTag();
         this.setMainIcon();
         this.setNewTag();
         this.setPrice();
         this.setSpecialTag();
      }
      
      public final function getGraphics() : Sprite
      {
         return this.mAssetHolder;
      }
      
      public final function setVisible(value:Boolean) : void
      {
         this.getGraphics().visible = value;
      }
      
      public final function get x() : Number
      {
         return this.mAssetHolder.x;
      }
      
      public final function set x(value:Number) : void
      {
         this.mAssetHolder.x = value;
      }
      
      public final function get y() : Number
      {
         return this.mAssetHolder.y;
      }
      
      public final function set y(value:Number) : void
      {
         this.mAssetHolder.y = value;
      }
      
      public final function setEnabled(value:Boolean) : void
      {
         this.mAssetHolder.mouseEnabled = value;
      }
      
      public final function getButtonIndex() : int
      {
         return this.mButtonIndex;
      }
      
      public final function disable() : void
      {
         this.mAssetHolder.removeEventListener(MouseEvent.CLICK,this.onBuyClick);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this.mAssetHolder.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.mAssetHolder.removeChildren();
         if(this.mAssetHolder.parent)
         {
            this.mAssetHolder.parent.removeChild(this.mAssetHolder);
         }
      }
      
      private function onBuyClick(event:MouseEvent) : void
      {
         SoundEngine.playSound("Menu_Confirm",SoundEngine.UI_CHANNEL);
         dispatchEvent(new Event(EVENT_COIN_SHOP_BUTTON_BUY_CLICKED));
      }
      
      protected function setDiscountTag() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setMainIcon() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setBCIcon() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setBG() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setBCTextField() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setSpecialTag() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setPrice() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function setNewTag() : void
      {
         throw new Error("Abstract Method not implemented");
      }
      
      protected function onMouseOut(event:MouseEvent) : void
      {
      }
      
      protected function onMouseUp(event:MouseEvent) : void
      {
      }
      
      protected function onMouseDown(event:MouseEvent) : void
      {
      }
      
      protected function onMouseOver(event:MouseEvent) : void
      {
      }
   }
}
