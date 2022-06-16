package com.rovio.ui.popup
{
   import com.rovio.BasicGame;
   import com.rovio.data.localization.LocalizationManager;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class AbstractPopupLayer extends EventDispatcher implements IPopupLayer
   {
       
      
      protected var mMargin:Rectangle;
      
      protected var mViewWidth:Number;
      
      protected var mViewHeight:Number;
      
      protected var mLayerIndex:int;
      
      protected var mIsPersistentLayer:Boolean;
      
      protected var mUseQueue:Boolean;
      
      protected var mPopupQueue:Vector.<PopupLayerData>;
      
      protected var mCurrentData:PopupLayerData;
      
      protected var mLocalizationManager:LocalizationManager;
      
      protected var mApplication:BasicGame;
      
      protected var mContainer:MovieClip;
      
      public function AbstractPopupLayer(index:int, container:MovieClip, localizationManager:LocalizationManager, application:BasicGame, useQue:Boolean = true, margin:Rectangle = null, persistentLayer:Boolean = false)
      {
         super();
         this.mLocalizationManager = localizationManager;
         this.mApplication = application;
         this.mPopupQueue = new Vector.<PopupLayerData>();
         this.mLayerIndex = index;
         this.mUseQueue = useQue;
         this.mMargin = margin || new Rectangle();
         this.mIsPersistentLayer = persistentLayer;
         this.createContainer(container);
      }
      
      public function set useQueue(value:Boolean) : void
      {
         this.mUseQueue = value;
      }
      
      public function get useQueue() : Boolean
      {
         return this.mUseQueue;
      }
      
      public function set margin(value:Rectangle) : void
      {
         this.mMargin = value;
      }
      
      public function get margin() : Rectangle
      {
         return this.mMargin;
      }
      
      public function get index() : int
      {
         return this.mLayerIndex;
      }
      
      public function get data() : PopupLayerData
      {
         return this.mCurrentData;
      }
      
      public function set isPersistentLayer(value:Boolean) : void
      {
         this.mIsPersistentLayer = value;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.mIsPersistentLayer;
      }
      
      protected function createContainer(container:MovieClip) : void
      {
         this.mContainer = container.addChild(new MovieClip()) as MovieClip;
         this.setIndexDepth();
      }
      
      public function setIndexDepth() : void
      {
         var targetIndex:int = this.index;
         if(targetIndex >= this.mContainer.parent.numChildren)
         {
            targetIndex = this.mContainer.parent.numChildren - 1;
         }
         this.mContainer.parent.setChildIndex(this.mContainer,targetIndex);
      }
      
      public function setViewSize(width:int, height:int) : void
      {
         this.mViewWidth = width;
         this.mViewHeight = height;
         if(this.mCurrentData)
         {
            this.mCurrentData.popup.setViewSize(this.mViewWidth + this.mMargin.width,this.mViewHeight + this.mMargin.height);
         }
      }
      
      public function openPopup(newData:PopupLayerData, forceOpen:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(useTransitionOut:Boolean = false, allowQueue:Boolean = true, playSound:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function clearQueue() : void
      {
         if(this.mPopupQueue)
         {
            this.mPopupQueue = new Vector.<PopupLayerData>();
         }
      }
      
      public function isPopupOpen() : Boolean
      {
         if(this.mIsPersistentLayer)
         {
            return false;
         }
         return this.mCurrentData != null;
      }
      
      public function isPopupOpenById(id:String) : Boolean
      {
         if(this.mIsPersistentLayer)
         {
            return false;
         }
         if(this.mCurrentData && this.mCurrentData.popup.id == id)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(id:String) : Boolean
      {
         var popupData:PopupLayerData = null;
         for each(popupData in this.mPopupQueue)
         {
            if(popupData.popup.id == id)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(id:String) : IPopup
      {
         if(this.mCurrentData && this.mCurrentData.popup.id == id)
         {
            return this.mCurrentData.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.mCurrentData)
         {
            return this.mCurrentData.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.mContainer;
      }
   }
}
