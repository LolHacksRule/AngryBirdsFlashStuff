package com.angrybirds.friendsbar.ui
{
   public class VScroller extends HScroller
   {
       
      
      protected var mItemRendererHeight:Number = -1;
      
      public function VScroller(maskWidth:Number, maskHeight:Number, data:Array = null, itemRenderer:Class = null, minMargin:Number = 0, maxMargin:Number = 1.7976931348623157E308)
      {
         super(maskWidth,maskHeight,data,itemRenderer,minMargin,maxMargin);
      }
      
      override public function updatePositions() : void
      {
         var renderer:ScrollerItemRenderer = null;
         var y:Number = NaN;
         var newRenderer:ScrollerItemRenderer = null;
         for(var i:int = mItemRenderers.length - 1; i >= 0; i--)
         {
            renderer = mItemRenderers[i];
            renderer.y = this.getPositionFromIndex(renderer.index);
            if(renderer.y >= mMaskHeight || renderer.y <= -this.itemRendererHeight)
            {
               mSprite.removeChild(renderer);
               mItemRenderers.splice(mItemRenderers.indexOf(renderer),1);
               returnRenderer(renderer);
            }
         }
         for(i = 0; i < mData.length; i++)
         {
            y = this.getPositionFromIndex(i);
            if(y > -this.itemRendererHeight && y < mMaskHeight && !hasRendererWithIndex(i))
            {
               newRenderer = getRenderer();
               mSprite.addChild(newRenderer);
               newRenderer.data = mData[i];
               newRenderer.index = i;
               newRenderer.y = y;
               mItemRenderers.push(newRenderer);
            }
         }
      }
      
      protected function get itemRendererHeight() : Number
      {
         var tempRenderer:ScrollerItemRenderer = null;
         if(this.mItemRendererHeight == -1)
         {
            tempRenderer = getRenderer();
            this.mItemRendererHeight = tempRenderer.height;
            returnRenderer(tempRenderer);
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
      
      public function setHeight(value:Number) : void
      {
         var renderer:ScrollerItemRenderer = null;
         mMaskHeight = mSprite.mask.height = value;
         this.calculateMaxItemsVisible();
         mItemCount = Math.min(mMaxItemsVisible,mData.length);
         mMargin = Math.min((mMaskHeight - mItemCount * this.itemRendererHeight) / mItemCount,mMaxMargin);
         while(mItemRenderers.length > mMaxItemsVisible)
         {
            renderer = mItemRenderers.pop();
            mSprite.removeChild(renderer);
            returnRenderer(renderer);
         }
         setTargetOffset(0);
         mCurrentItemOffset = mTargetOffset;
         this.updatePositions();
      }
      
      override public function setWidth(value:Number) : void
      {
         throw new Error("This function is for HScroller. Use setHeight() instead.");
      }
      
      override protected function getPositionFromIndex(index:Number) : Number
      {
         return Math.round(mMargin / 2 + (index + mCurrentItemOffset) * (this.itemRendererHeight + mMargin));
      }
   }
}
