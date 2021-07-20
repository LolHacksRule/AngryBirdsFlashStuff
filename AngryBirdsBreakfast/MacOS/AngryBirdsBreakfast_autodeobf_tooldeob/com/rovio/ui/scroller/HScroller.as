package com.rovio.ui.scroller
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class HScroller
   {
       
      
      protected var mSprite:Sprite;
      
      protected var mMaskWidth:Number;
      
      protected var mMaskHeight:Number;
      
      protected var mItemRendererClass:Class;
      
      protected var mMinMargin:Number;
      
      protected var mMaxMargin:Number;
      
      protected var mMargin:Number;
      
      protected var mMaxItemsVisible:Number;
      
      protected var mItemRendererWidth:Number = -1;
      
      protected var mData:Array;
      
      protected var mItemCount:int = -1;
      
      protected var mCurrentItemOffset:Number = 0;
      
      protected var mTargetOffset:int = 0;
      
      protected var mItemRendererPool:Vector.<ScrollerItemRenderer>;
      
      protected var mItemRenderers:Vector.<ScrollerItemRenderer>;
      
      public function HScroller(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         this.mItemRendererPool = new Vector.<ScrollerItemRenderer>(0);
         this.mItemRenderers = new Vector.<ScrollerItemRenderer>(0);
         super();
         this.mSprite = new Sprite();
         this.mMaskWidth = param1;
         this.mMaskHeight = param2;
         this.mData = param3;
         this.mItemRendererClass = param4 || ScrollerItemRenderer;
         this.mMinMargin = param5;
         this.mMaxMargin = param6;
         this.calculateMaxItemsVisible();
         this.makeMask();
         if(this.mData)
         {
            this.populate();
         }
         this.mSprite.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function calculateMaxItemsVisible() : void
      {
         this.mMaxItemsVisible = Math.floor(this.mMaskWidth / (this.itemRendererWidth + this.mMinMargin));
      }
      
      public function get scrollerSprite() : Sprite
      {
         return this.mSprite;
      }
      
      protected function makeMask() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(0,1);
         _loc1_.graphics.drawRect(0,0,this.mMaskWidth,this.mMaskHeight);
         _loc1_.graphics.endFill();
         this.mSprite.addChild(_loc1_);
         this.mSprite.mask = _loc1_;
      }
      
      public function setWidth(param1:Number) : void
      {
         var _loc2_:ScrollerItemRenderer = null;
         this.mMaskWidth = this.mSprite.mask.width = param1;
         this.mMaxItemsVisible = Math.floor(this.mMaskWidth / (this.itemRendererWidth + this.mMinMargin));
         this.mItemCount = Math.min(this.mMaxItemsVisible,this.mData.length);
         this.calculateMargin();
         while(this.mItemRenderers.length > this.mMaxItemsVisible)
         {
            _loc2_ = this.mItemRenderers.pop();
            this.mSprite.removeChild(_loc2_);
            this.returnRenderer(_loc2_);
         }
         this.setTargetOffset(0);
         this.mCurrentItemOffset = this.mTargetOffset;
         this.updatePositions();
      }
      
      public function setHeight(param1:Number) : void
      {
         this.mMaskHeight = this.mSprite.mask.height = param1;
      }
      
      protected function populate(param1:Boolean = true) : void
      {
         var _loc3_:ScrollerItemRenderer = null;
         if(param1)
         {
            this.mCurrentItemOffset = 0;
            this.mTargetOffset = 0;
         }
         this.mItemCount = Math.min(this.mMaxItemsVisible,this.mData.length);
         this.calculateMargin();
         var _loc2_:int = 0;
         while(_loc2_ < this.mItemCount)
         {
            _loc3_ = this.getRenderer();
            this.mSprite.addChild(_loc3_);
            _loc3_.index = _loc2_;
            this.setRendererData(_loc3_,this.data[_loc2_]);
            this.mItemRenderers.push(_loc3_);
            _loc2_++;
         }
         this.updatePositions();
      }
      
      protected function setRendererData(param1:ScrollerItemRenderer, param2:Object) : void
      {
         param1.data = param2;
      }
      
      protected function calculateMargin() : void
      {
         this.mMargin = Math.min((this.mMaskWidth - this.mItemCount * this.itemRendererWidth) / this.mItemCount,this.mMaxMargin);
      }
      
      protected function get itemRendererWidth() : Number
      {
         var _loc1_:ScrollerItemRenderer = null;
         if(this.mItemRendererWidth == -1)
         {
            _loc1_ = this.getRenderer();
            this.mItemRendererWidth = _loc1_.width;
            this.returnRenderer(_loc1_);
         }
         return this.mItemRendererWidth;
      }
      
      public function setData(param1:Array, param2:Boolean = true) : void
      {
         this.mData = param1;
         this.clear();
         if(this.mData)
         {
            this.populate(param2);
         }
      }
      
      public function scroll(param1:int, param2:Boolean = false) : void
      {
         if(!this.mData || this.mData.length == this.mItemCount)
         {
            return;
         }
         this.setTargetOffset(param1);
         if(param2)
         {
            this.mCurrentItemOffset = this.mTargetOffset;
            this.updatePositions();
         }
      }
      
      protected function setTargetOffset(param1:int) : void
      {
         if(this.mTargetOffset - param1 > 0)
         {
            this.mTargetOffset = 0;
         }
         else if(this.mTargetOffset - param1 - this.visibleItemsCount < -this.mData.length)
         {
            this.mTargetOffset = -(this.mData.length - this.visibleItemsCount);
         }
         else
         {
            this.mTargetOffset -= param1;
         }
      }
      
      protected function onEnterFrame(param1:Event) : void
      {
         if(this.mTargetOffset == this.mCurrentItemOffset)
         {
            return;
         }
         this.mCurrentItemOffset += (this.mTargetOffset - this.mCurrentItemOffset) / 4;
         if(Math.abs(this.mCurrentItemOffset - this.mTargetOffset) < 0.01)
         {
            this.mCurrentItemOffset = this.mTargetOffset;
         }
         this.updatePositions();
      }
      
      protected function updatePositions() : void
      {
         var _loc2_:ScrollerItemRenderer = null;
         var _loc3_:Number = NaN;
         var _loc4_:ScrollerItemRenderer = null;
         var _loc1_:int = this.mItemRenderers.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.mItemRenderers[_loc1_];
            _loc2_.x = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.x >= this.mMaskWidth || _loc2_.x <= -this.itemRendererWidth)
            {
               this.hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < this.mData.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.itemRendererWidth && _loc3_ < this.mMaskWidth && !this.hasRendererWithIndex(_loc1_))
            {
               _loc4_ = this.getRenderer();
               this.mSprite.addChild(_loc4_);
               this.setRendererData(_loc4_,this.mData[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               this.mItemRenderers.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function hide(param1:ScrollerItemRenderer) : void
      {
         this.mSprite.removeChild(param1);
         this.mItemRenderers.splice(this.mItemRenderers.indexOf(param1),1);
         this.returnRenderer(param1);
      }
      
      protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(this.mMargin / 2 + (param1 + this.mCurrentItemOffset) * (this.itemRendererWidth + this.mMargin));
      }
      
      protected function hasRendererWithIndex(param1:int) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.mItemRenderers.length)
         {
            if(this.mItemRenderers[_loc2_].index == param1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function refresh() : void
      {
         var _loc1_:ScrollerItemRenderer = null;
         for each(_loc1_ in this.mItemRenderers)
         {
            this.setRendererData(_loc1_,this.mData[_loc1_.index]);
         }
      }
      
      public function get data() : Array
      {
         return this.mData;
      }
      
      public function set data(param1:Array) : void
      {
         this.setData(param1);
      }
      
      public function get visibleItemsCount() : int
      {
         return this.mItemCount;
      }
      
      public function clear() : void
      {
         var _loc1_:ScrollerItemRenderer = null;
         while(this.mItemRenderers.length > 0)
         {
            _loc1_ = this.mItemRenderers.pop();
            this.mSprite.removeChild(_loc1_);
            this.returnRenderer(_loc1_);
         }
      }
      
      public function get offset() : int
      {
         return -this.mTargetOffset;
      }
      
      protected function getRenderer() : ScrollerItemRenderer
      {
         if(this.mItemRendererPool.length > 0)
         {
            return this.mItemRendererPool.pop();
         }
         var _loc1_:ScrollerItemRenderer = new this.mItemRendererClass();
         _loc1_.scroller = this;
         return _loc1_;
      }
      
      protected function returnRenderer(param1:ScrollerItemRenderer) : void
      {
         this.setRendererData(param1,null);
         this.mItemRendererPool.push(param1);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.mSprite.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
