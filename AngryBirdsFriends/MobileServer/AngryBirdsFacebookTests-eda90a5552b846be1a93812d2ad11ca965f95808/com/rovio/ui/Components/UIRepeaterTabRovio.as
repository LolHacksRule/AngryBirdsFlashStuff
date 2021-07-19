package com.rovio.ui.Components
{
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   
   public class UIRepeaterTabRovio extends UIContainerRovio
   {
       
      
      public var mCurrentPage:int;
      
      public var mTotalPageCount:int;
      
      public var mTrackCount:int;
      
      public var mItemPerPage:int;
      
      public var mDeltaXPage:Number;
      
      public var mDeltaYPage:Number;
      
      public var mDefaultX:Number;
      
      public var mDefaultY:Number;
      
      public var mItemCountForScrolling:Number;
      
      public function UIRepeaterTabRovio(data:XML, parentContainer:UIContainerRovio, parentView:UIView, clip:MovieClip = null)
      {
         super(data,parentContainer,parentView,clip);
         mRepeaterTab = true;
      }
      
      public function initTab(itemPerPage:int, defaultX:Number, defaultY:Number, deltaXPage:Number, deltaYPage:Number, trackCount:int, itemCountForScrolling:int) : void
      {
         this.mTrackCount = trackCount;
         this.mItemPerPage = itemPerPage * this.mTrackCount;
         this.mItemCountForScrolling = itemCountForScrolling;
         this.mDefaultX = defaultX;
         this.mDefaultY = defaultY;
         this.mDeltaXPage = deltaXPage;
         this.mDeltaYPage = deltaYPage;
         if(false && itemPerPage == itemCountForScrolling)
         {
            this.mTotalPageCount = Math.max(1,Math.ceil(mItems.length / this.mItemPerPage));
         }
         else
         {
            this.mTotalPageCount = 1;
            if(mItems.length > this.mItemPerPage)
            {
               this.mTotalPageCount += Math.ceil((mItems.length - this.mItemPerPage) / (this.mTrackCount * this.mItemCountForScrolling));
            }
         }
         this.setCurrentPage(0);
      }
      
      public function setCurrentPage(newPage:int) : void
      {
         if(newPage < 0)
         {
            newPage = 0;
         }
         if(newPage >= this.mTotalPageCount)
         {
            newPage = this.mTotalPageCount - 1;
         }
         this.mCurrentPage = newPage;
         var firstVisible:int = this.mCurrentPage * this.mItemCountForScrolling * this.mTrackCount;
         var lastVisible:int = firstVisible + this.mItemPerPage;
         for(var i:int = 0; i < mItems.length; i++)
         {
            (mItems[i] as UIComponentRovio).setVisibility(i >= firstVisible && i < lastVisible);
         }
         x = this.mDefaultX - this.mCurrentPage * this.mDeltaXPage;
         y = this.mDefaultY - this.mCurrentPage * this.mDeltaYPage;
      }
   }
}
