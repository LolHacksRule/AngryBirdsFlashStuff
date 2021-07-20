package com.rovio.ui.scroller
{
   public class VScroller extends HScroller
   {
       
      
      protected var mItemRendererHeight:Number = -1;
      
      public function VScroller(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:ScrollerItemRenderer = null;
         var _loc3_:Number = NaN;
         var _loc4_:ScrollerItemRenderer = null;
         var _loc1_:int = mItemRenderers.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = mItemRenderers[_loc1_];
            _loc2_.y = this.getPositionFromIndex(_loc2_.index);
            if(_loc2_.y >= mMaskHeight || _loc2_.y <= -this.itemRendererHeight)
            {
               hide(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < mData.length)
         {
            _loc3_ = this.getPositionFromIndex(_loc1_);
            if(_loc3_ > -this.itemRendererHeight && _loc3_ < mMaskHeight && !hasRendererWithIndex(_loc1_))
            {
               _loc4_ = getRenderer();
               mSprite.addChild(_loc4_);
               setRendererData(_loc4_,mData[_loc1_]);
               _loc4_.index = _loc1_;
               _loc4_.y = _loc3_;
               mItemRenderers.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      protected function get itemRendererHeight() : Number
      {
         var _loc1_:ScrollerItemRenderer = null;
         if(this.mItemRendererHeight == -1)
         {
            _loc1_ = getRenderer();
            this.mItemRendererHeight = _loc1_.height;
            returnRenderer(_loc1_);
         }
         return this.mItemRendererHeight;
      }
      
      override protected function calculateMaxItemsVisible() : void
      {
         mMaxItemsVisible = Math.floor(mMaskHeight / (this.itemRendererHeight + mMinMargin));
      }
      
      override protected function calculateMargin() : void
      {
         mMargin = Math.min((mMaskHeight - mItemCount * this.itemRendererHeight) / mItemCount,mMaxMargin);
      }
      
      override public function setHeight(param1:Number) : void
      {
         var _loc2_:ScrollerItemRenderer = null;
         mMaskHeight = mSprite.mask.height = param1;
         this.calculateMaxItemsVisible();
         mItemCount = Math.min(mMaxItemsVisible,mData.length);
         mMargin = Math.min((mMaskHeight - mItemCount * this.itemRendererHeight) / mItemCount,mMaxMargin);
         while(mItemRenderers.length > mMaxItemsVisible)
         {
            _loc2_ = mItemRenderers.pop();
            mSprite.removeChild(_loc2_);
            returnRenderer(_loc2_);
         }
         setTargetOffset(0);
         mCurrentItemOffset = mTargetOffset;
         this.updatePositions();
      }
      
      override public function setWidth(param1:Number) : void
      {
         mMaskWidth = mSprite.mask.width = param1;
      }
      
      override protected function getPositionFromIndex(param1:Number) : Number
      {
         return Math.round(mMargin / 2 + (param1 + mCurrentItemOffset) * (this.itemRendererHeight + mMargin));
      }
   }
}
