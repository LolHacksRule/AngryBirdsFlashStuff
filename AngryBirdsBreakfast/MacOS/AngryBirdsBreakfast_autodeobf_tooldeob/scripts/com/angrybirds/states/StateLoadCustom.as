package com.angrybirds.states
{
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.states.StateLoad;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class StateLoadCustom extends StateLoad
   {
       
      
      public function StateLoadCustom(param1:LocalizationManager, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function init() : void
      {
         super.init();
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         super.setViewSize(param1,param2);
         if(mLoadingView)
         {
            _loc3_ = param1 / (mLoadingView.width / mLoadingView.scaleX);
            if(mLoadingView.height / mLoadingView.scaleY * _loc3_ > param2)
            {
               _loc3_ = param2 / (mLoadingView.height / mLoadingView.scaleY);
            }
            mLoadingView.scaleX = mLoadingView.scaleY = _loc3_ * 1.4;
            mLoadingView.x = param1 - mLoadingView.width >> 1;
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(param1);
         this.setLoadingPercentage(0);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         (mLoadingView.getChildByName("mcLoadBar") as MovieClip)["mcMask"].scaleX = param1;
      }
   }
}
