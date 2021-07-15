package com.rovio.ui.popup
{
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.ui.popup.event.PopupLayerEvent;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.BasicGame;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class PopupLayer extends AbstractPopupLayer implements IPopupLayer
   {
       
      
      public function PopupLayer(param1:int, param2:MovieClip, param3:LocalizationManager, param4:BasicGame, param5:Boolean = true, param6:Rectangle = null)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override public function openPopup(param1:PopupLayerData, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(mCurrentData)
         {
            if(mCurrentData.popup.id == param1.popup.id && param2)
            {
               return;
            }
            _loc3_ = mCurrentData.popup.priority;
            _loc4_ = param1.popup.priority;
            if(useQueue)
            {
               if(_loc4_ < _loc3_)
               {
                  mPopupQueue.push(param1);
               }
               else if(_loc4_ == PopupPriorityType.OVERRIDE)
               {
                  if(mCurrentData.popup.isTransitioning && param2)
                  {
                     return;
                  }
                  mPopupQueue.length = 0;
                  mPopupQueue.unshift(param1);
                  this.closePopup(this.solveTransitionOutUsage(param1),true);
               }
               else if(_loc4_ == PopupPriorityType.TOP)
               {
                  if(mCurrentData.popup.isTransitioning && param2)
                  {
                     return;
                  }
                  if(param1.useTransitionOutForPrevious == false && param1.useTransitionIn == false && param1.useTransitionOut == false)
                  {
                     mCurrentData.useTransitionIn = false;
                  }
                  mPopupQueue.unshift(mCurrentData);
                  mPopupQueue.unshift(param1);
                  this.closePopup(this.solveTransitionOutUsage(param1),true);
               }
               else
               {
                  mPopupQueue.push(param1);
               }
            }
            else if(_loc4_ >= _loc3_)
            {
               if(mCurrentData.popup.isTransitioning && param2)
               {
                  return;
               }
               mPopupQueue.unshift(param1);
               this.closePopup(this.solveTransitionOutUsage(param1),true);
            }
         }
         else
         {
            this.setCurrentPopup(param1);
         }
      }
      
      override public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         if(mCurrentData)
         {
            mCurrentData.allowQueue = param2;
            mCurrentData.popup.removeEventListener(PopupEvent.CLOSE,this.onPopupCloseRequest);
            mCurrentData.popup.close(param1);
         }
      }
      
      protected function solveTransitionOutUsage(param1:PopupLayerData) : Boolean
      {
         if(mCurrentData)
         {
            return !param1.useTransitionOutForPrevious ? Boolean(mCurrentData.useTransitionOut) : Boolean(param1.useTransitionOutForPrevious);
         }
         return false;
      }
      
      protected function setCurrentPopup(param1:PopupLayerData) : void
      {
         mCurrentData = param1;
         mCurrentData.popup.open(mContainer,mLocalizationManager,mApplication,mCurrentData.useTransitionIn);
         setViewSize(mViewWidth,mViewHeight);
         mCurrentData.popup.addEventListener(PopupEvent.CLOSE_COMPLETE,this.onPopupClosed);
         mCurrentData.popup.addEventListener(PopupEvent.CLOSE,this.onPopupCloseRequest);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,mLayerIndex,mCurrentData));
      }
      
      protected function clearCurrentPopup() : void
      {
         var _loc1_:IPopup = null;
         if(mCurrentData)
         {
            _loc1_ = mCurrentData.popup;
            _loc1_.removeEventListener(PopupEvent.CLOSE,this.onPopupCloseRequest);
            _loc1_.removeEventListener(PopupEvent.CLOSE_COMPLETE,this.onPopupClosed);
            mCurrentData = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,mLayerIndex));
         }
      }
      
      protected function onPopupCloseRequest(param1:PopupEvent) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.ClOSE_REQUEST,mLayerIndex,mCurrentData));
      }
      
      protected function onPopupClosed(param1:PopupEvent) : void
      {
         var _loc3_:PopupLayerData = null;
         var _loc2_:Boolean = true;
         if(mCurrentData)
         {
            _loc2_ = mCurrentData.allowQueue;
            this.clearCurrentPopup();
         }
         if(mPopupQueue.length > 0)
         {
            if(_loc2_)
            {
               _loc3_ = mPopupQueue.shift();
               this.openPopup(_loc3_);
            }
         }
      }
   }
}
