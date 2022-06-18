package com.rovio.ui.popup
{
   import com.rovio.BasicGame;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.ui.popup.event.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class PopupLayer extends AbstractPopupLayer implements IPopupLayer
   {
       
      
      public function PopupLayer(index:int, container:MovieClip, localizationManager:LocalizationManager, application:BasicGame, useQue:Boolean = true, margin:Rectangle = null)
      {
         super(index,container,localizationManager,application,useQue,margin);
      }
      
      override public function openPopup(newData:PopupLayerData, forceOpen:Boolean = false) : void
      {
         var currentPriory:int = 0;
         var targetPriority:int = 0;
         if(mCurrentData)
         {
            if(mCurrentData.popup.id == newData.popup.id && !forceOpen)
            {
               return;
            }
            currentPriory = mCurrentData.popup.priority;
            targetPriority = newData.popup.priority;
            if(useQueue)
            {
               if(targetPriority < currentPriory)
               {
                  mPopupQueue.push(newData);
               }
               else if(targetPriority == PopupPriorityType.OVERRIDE)
               {
                  if(mCurrentData.popup.isTransitioning && !forceOpen)
                  {
                     return;
                  }
                  mPopupQueue.length = 0;
                  mPopupQueue.unshift(newData);
                  this.closePopup(this.solveTransitionOutUsage(newData),true);
               }
               else if(targetPriority == PopupPriorityType.TOP)
               {
                  if(mCurrentData.popup.isTransitioning && !forceOpen)
                  {
                     return;
                  }
                  if(newData.useTransitionOutForPrevious == false && newData.useTransitionIn == false && newData.useTransitionOut == false)
                  {
                     mCurrentData.useTransitionIn = false;
                  }
                  mPopupQueue.unshift(mCurrentData);
                  mPopupQueue.unshift(newData);
                  this.closePopup(this.solveTransitionOutUsage(newData),true);
               }
               else if(targetPriority == PopupPriorityType.REPLACE)
               {
                  if(mCurrentData.popup.isTransitioning && !forceOpen)
                  {
                     return;
                  }
                  if(newData.useTransitionOutForPrevious == false && newData.useTransitionIn == false && newData.useTransitionOut == false)
                  {
                     mCurrentData.useTransitionIn = false;
                  }
                  if(mPopupQueue.length > 0)
                  {
                     if(mPopupQueue[0] == mCurrentData)
                     {
                        mPopupQueue.splice(0,1,newData);
                     }
                     else
                     {
                        mPopupQueue.unshift(newData);
                     }
                  }
                  else
                  {
                     mPopupQueue.push(newData);
                  }
                  mPopupQueue.unshift(mCurrentData);
                  this.closePopup(this.solveTransitionOutUsage(newData),true,false);
               }
               else
               {
                  mPopupQueue.push(newData);
               }
            }
            else if(targetPriority >= currentPriory)
            {
               if(mCurrentData.popup.isTransitioning && !forceOpen)
               {
                  return;
               }
               mPopupQueue.unshift(newData);
               this.closePopup(this.solveTransitionOutUsage(newData),true);
            }
         }
         else
         {
            this.setCurrentPopup(newData);
         }
      }
      
      override public function closePopup(useTransitionOut:Boolean = false, allowQueue:Boolean = true, playSound:Boolean = true) : void
      {
         if(mCurrentData)
         {
            mCurrentData.allowQueue = allowQueue;
            mCurrentData.popup.removeEventListener(PopupEvent.CLOSE,this.onPopupCloseRequest);
            mCurrentData.popup.close(useTransitionOut,playSound);
         }
      }
      
      protected function solveTransitionOutUsage(data:PopupLayerData) : Boolean
      {
         if(mCurrentData)
         {
            return !!data.useTransitionOutForPrevious ? Boolean(mCurrentData.useTransitionOut) : Boolean(data.useTransitionOutForPrevious);
         }
         return false;
      }
      
      protected function setCurrentPopup(data:PopupLayerData) : void
      {
         mCurrentData = data;
         mCurrentData.popup.open(mContainer,mLocalizationManager,mApplication,mCurrentData.useTransitionIn);
         setViewSize(mViewWidth,mViewHeight);
         mCurrentData.popup.addEventListener(PopupEvent.CLOSE_COMPLETE,this.onPopupClosed);
         mCurrentData.popup.addEventListener(PopupEvent.CLOSE,this.onPopupCloseRequest);
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.OPEN,mLayerIndex,mCurrentData));
      }
      
      protected function clearCurrentPopup() : void
      {
         var popup:IPopup = null;
         if(mCurrentData)
         {
            popup = mCurrentData.popup;
            popup.removeEventListener(PopupEvent.CLOSE,this.onPopupCloseRequest);
            popup.removeEventListener(PopupEvent.CLOSE_COMPLETE,this.onPopupClosed);
            mCurrentData = null;
            dispatchEvent(new PopupLayerEvent(PopupLayerEvent.CLOSE,mLayerIndex));
         }
      }
      
      protected function onPopupCloseRequest(event:PopupEvent) : void
      {
         dispatchEvent(new PopupLayerEvent(PopupLayerEvent.ClOSE_REQUEST,mLayerIndex,mCurrentData));
      }
      
      protected function onPopupClosed(event:PopupEvent) : void
      {
         var nextData:PopupLayerData = null;
         var allowQueue:Boolean = true;
         if(mCurrentData)
         {
            allowQueue = mCurrentData.allowQueue;
            this.clearCurrentPopup();
         }
         if(mPopupQueue.length > 0)
         {
            if(allowQueue)
            {
               nextData = mPopupQueue.shift();
               this.openPopup(nextData);
            }
         }
      }
   }
}
