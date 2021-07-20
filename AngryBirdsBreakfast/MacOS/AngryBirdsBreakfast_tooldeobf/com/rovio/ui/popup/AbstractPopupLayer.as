package com.rovio.ui.popup
{
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.BasicGame;
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
      
      public function AbstractPopupLayer(param1:int, param2:MovieClip, param3:LocalizationManager, param4:BasicGame, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.mLocalizationManager = param3;
         this.mApplication = param4;
         this.mPopupQueue = new Vector.<PopupLayerData>();
         this.mLayerIndex = param1;
         this.mUseQueue = param5;
         this.mMargin = param6 || new Rectangle();
         this.mIsPersistentLayer = param7;
         this.createContainer(param2);
      }
      
      public function set useQueue(param1:Boolean) : void
      {
         this.mUseQueue = param1;
      }
      
      public function get useQueue() : Boolean
      {
         return this.mUseQueue;
      }
      
      public function set margin(param1:Rectangle) : void
      {
         this.mMargin = param1;
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
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.mIsPersistentLayer = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.mIsPersistentLayer;
      }
      
      protected function createContainer(param1:MovieClip) : void
      {
         this.mContainer = param1.addChild(new MovieClip()) as MovieClip;
         this.setIndexDepth();
      }
      
      public function setIndexDepth() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.mContainer.parent.numChildren)
         {
            _loc1_ = this.mContainer.parent.numChildren - 1;
         }
         this.mContainer.parent.setChildIndex(this.mContainer,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.mViewWidth = param1;
         this.mViewHeight = param2;
         if(this.mCurrentData)
         {
            this.mCurrentData.popup.setViewSize(this.mViewWidth + this.mMargin.width,this.mViewHeight + this.mMargin.height);
         }
      }
      
      public function openPopup(param1:PopupLayerData, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
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
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.mIsPersistentLayer)
         {
            return false;
         }
         if(this.mCurrentData && this.mCurrentData.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:PopupLayerData = null;
         for each(_loc2_ in this.mPopupQueue)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : IPopup
      {
         if(this.mCurrentData && this.mCurrentData.popup.id == param1)
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
