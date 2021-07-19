package com.angrybirds.friendsbar.ui
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
      
      public function HScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         this.mItemRendererPool = new Vector.<ScrollerItemRenderer>(0);
         this.mItemRenderers = new Vector.<ScrollerItemRenderer>(0);
         super();
         this.mSprite = new Sprite();
         this.mMaskWidth = maskWidth;
         this.mMaskHeight = maskHeight;
         this.mData = data;
         this.mItemRendererClass = itemRenderer || ScrollerItemRenderer;
         this.mMinMargin = minMargin;
         this.mMaxMargin = maxMargin;
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
         var mask:Sprite = new Sprite();
         mask.graphics.beginFill(0,1);
         mask.graphics.drawRect(0,0,this.mMaskWidth,this.mMaskHeight);
         mask.graphics.endFill();
         this.mSprite.addChild(mask);
         this.mSprite.mask = mask;
      }
      
      public function setWidth(value:Number) : void
      {
         var renderer:ScrollerItemRenderer = null;
         this.mMaskWidth = this.mSprite.mask.width = value;
         this.mMaxItemsVisible = Math.floor(this.mMaskWidth / (this.itemRendererWidth + this.mMinMargin));
         this.mItemCount = Math.min(this.mMaxItemsVisible,this.mData.length);
         this.calculateMargin();
         while(this.mItemRenderers.length > this.mMaxItemsVisible)
         {
            renderer = this.mItemRenderers.pop();
            this.mSprite.removeChild(renderer);
            this.returnRenderer(renderer);
         }
         this.setTargetOffset(0);
         this.mCurrentItemOffset = this.mTargetOffset;
         this.updatePositions();
      }
      
      public function prepareAllItems() : void
      {
         var renderer:ScrollerItemRenderer = null;
         for(var i:int = 0; i < this.mItemRenderers.length; i++)
         {
            this.mSprite.removeChild(this.mItemRenderers[i]);
         }
         this.mItemRenderers.splice(0,this.mItemRenderers.length);
         for(i = 0; i < this.mData.length; i++)
         {
            renderer = this.getRenderer();
            renderer.index = i;
            renderer.data = this.mData[i];
            this.mItemRenderers.push(renderer);
            this.mSprite.addChild(renderer);
         }
      }
      
      protected function populate() : void
      {
         var renderer:ScrollerItemRenderer = null;
         this.mTargetOffset = this.mCurrentItemOffset = 0;
         this.mItemCount = Math.min(this.mMaxItemsVisible,this.mData.length);
         this.calculateMargin();
         for(var i:int = 0; i < this.mItemCount; i++)
         {
            renderer = this.getRenderer();
            this.mSprite.addChild(renderer);
            renderer.index = i;
            renderer.data = this.mData[i];
            this.mItemRenderers.push(renderer);
         }
         this.updatePositions();
      }
      
      protected function calculateMargin() : void
      {
         this.mMargin = Math.min((this.mMaskWidth - this.mItemCount * this.itemRendererWidth) / this.mItemCount,this.mMaxMargin);
      }
      
      protected function get itemRendererWidth() : Number
      {
         var tempRenderer:ScrollerItemRenderer = null;
         if(this.mItemRendererWidth == -1)
         {
            tempRenderer = this.getRenderer();
            this.mItemRendererWidth = tempRenderer.width;
            this.returnRenderer(tempRenderer);
         }
         return this.mItemRendererWidth;
      }
      
      public function scroll(offset:int, skipAnimation:Boolean = false) : void
      {
         if(this.mData.length == this.mItemCount)
         {
            return;
         }
         this.setTargetOffset(offset);
         if(skipAnimation)
         {
            this.mCurrentItemOffset = this.mTargetOffset;
            this.updatePositions();
         }
      }
      
      public function willBeOutOfBounds(offset:int) : Boolean
      {
         if(this.mTargetOffset - offset > 0 || this.mTargetOffset - offset - this.visibleItemsCount < -this.mData.length)
         {
            return true;
         }
         return false;
      }
      
      protected function setTargetOffset(offset:int) : void
      {
         if(this.mTargetOffset - offset > 0)
         {
            this.mTargetOffset = 0;
         }
         else if(this.mTargetOffset - offset - this.visibleItemsCount < -this.mData.length)
         {
            this.mTargetOffset = -(this.mData.length - this.visibleItemsCount);
         }
         else
         {
            this.mTargetOffset -= offset;
         }
      }
      
      protected function onEnterFrame(e:Event) : void
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
      
      public function updatePositions() : void
      {
         var renderer:ScrollerItemRenderer = null;
         var x:Number = NaN;
         var newRenderer:ScrollerItemRenderer = null;
         for(var i:int = this.mItemRenderers.length - 1; i >= 0; i--)
         {
            renderer = this.mItemRenderers[i];
            renderer.x = this.getPositionFromIndex(renderer.index);
            if(renderer.x >= this.mMaskWidth || renderer.x <= -this.itemRendererWidth)
            {
               this.mSprite.removeChild(renderer);
               this.mItemRenderers.splice(this.mItemRenderers.indexOf(renderer),1);
               this.returnRenderer(renderer);
            }
         }
         for(i = 0; i < this.mData.length; i++)
         {
            x = this.getPositionFromIndex(i);
            if(x > -this.itemRendererWidth && x < this.mMaskWidth - this.itemRendererWidth && !this.hasRendererWithIndex(i))
            {
               newRenderer = this.getRenderer();
               this.mSprite.addChild(newRenderer);
               newRenderer.data = this.mData[i];
               newRenderer.index = i;
               newRenderer.x = x;
               this.mItemRenderers.push(newRenderer);
            }
         }
      }
      
      protected function getPositionFromIndex(index:Number) : Number
      {
         return Math.round(this.mMargin / 2 + (index + this.mCurrentItemOffset) * (this.itemRendererWidth + this.mMargin));
      }
      
      protected function hasRendererWithIndex(index:int) : Boolean
      {
         for(var i:int = 0; i < this.mItemRenderers.length; i++)
         {
            if(this.mItemRenderers[i].index == index)
            {
               return true;
            }
         }
         return false;
      }
      
      public function refresh() : void
      {
         var renderer:ScrollerItemRenderer = null;
         for each(renderer in this.mItemRenderers)
         {
            renderer.data = this.mData[renderer.index];
         }
      }
      
      public function get data() : Array
      {
         return this.mData;
      }
      
      public function set data(value:Array) : void
      {
         this.mData = value;
         this.clear();
         if(this.mData)
         {
            this.populate();
         }
      }
      
      public function get visibleItemsCount() : int
      {
         return this.mItemCount;
      }
      
      public function clear() : void
      {
         var renderer:ScrollerItemRenderer = null;
         while(this.mItemRenderers.length > 0)
         {
            renderer = this.mItemRenderers.pop();
            this.mSprite.removeChild(renderer);
            this.returnRenderer(renderer);
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
         var itemRenderer:ScrollerItemRenderer = new this.mItemRendererClass();
         itemRenderer.scroller = this;
         return itemRenderer;
      }
      
      protected function returnRenderer(renderer:ScrollerItemRenderer) : void
      {
         renderer.data = null;
         this.mItemRendererPool.push(renderer);
      }
      
      public function dispose() : void
      {
         this.clear();
         this.mSprite.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
   }
}
