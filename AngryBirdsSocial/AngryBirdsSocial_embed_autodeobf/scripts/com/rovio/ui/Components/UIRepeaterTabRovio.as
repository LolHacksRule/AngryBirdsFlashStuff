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
      
      public function UIRepeaterTabRovio(param1:XML, param2:UIContainerRovio, param3:UIView, param4:MovieClip = null)
      {
         super(param1,param2,param3,param4);
         mRepeaterTab = true;
      }
      
      public function initTab(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         this.mTrackCount = param6;
         this.mItemPerPage = param1 * this.mTrackCount;
         this.mItemCountForScrolling = param7;
         this.mDefaultX = param2;
         this.mDefaultY = param3;
         this.mDeltaXPage = param4;
         this.mDeltaYPage = param5;
         this.mTotalPageCount = 1;
         if(mItems.length > this.mItemPerPage)
         {
            this.mTotalPageCount += Math.ceil((mItems.length - this.mItemPerPage) / (this.mTrackCount * this.mItemCountForScrolling));
         }
         this.setCurrentPage(0);
      }
      
      public function setCurrentPage(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 >= this.mTotalPageCount)
         {
            param1 = this.mTotalPageCount - 1;
         }
         this.mCurrentPage = param1;
         var _loc2_:int = this.mCurrentPage * this.mItemCountForScrolling * this.mTrackCount;
         var _loc3_:int = _loc2_ + this.mItemPerPage;
         var _loc4_:int = 0;
         while(_loc4_ < mItems.length)
         {
            (mItems[_loc4_] as UIComponentRovio).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
            _loc4_++;
         }
         x = this.mDefaultX - this.mCurrentPage * this.mDeltaXPage;
         y = this.mDefaultY - this.mCurrentPage * this.mDeltaYPage;
      }
   }
}
