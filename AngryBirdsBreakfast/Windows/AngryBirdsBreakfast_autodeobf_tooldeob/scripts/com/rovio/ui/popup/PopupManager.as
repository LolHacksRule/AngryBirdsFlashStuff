package com.rovio.ui.popup
{
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.ui.popup.event.PopupLayerEvent;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.BasicGame;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class PopupManager extends EventDispatcher implements IPopupManager
   {
       
      
      protected var mContainer:MovieClip;
      
      protected var mViewWidth:Number;
      
      protected var mViewHeight:Number;
      
      protected var mLayers:Vector.<PopupLayer>;
      
      protected var mLocalizationManager:LocalizationManager;
      
      protected var mApplication:BasicGame;
      
      public function PopupManager(param1:MovieClip, param2:LocalizationManager, param3:BasicGame, param4:Number = 960, param5:Number = 560, param6:int = 11)
      {
         super();
         this.mLayers = new Vector.<PopupLayer>(param6,true);
         this.mLocalizationManager = param2;
         this.mApplication = param3;
         this.mContainer = param1;
         this.mViewWidth = param4;
         this.mViewHeight = param5;
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         var _loc3_:PopupLayer = null;
         this.mViewWidth = param1;
         this.mViewHeight = param2;
         for each(_loc3_ in this.mLayers)
         {
            if(_loc3_)
            {
               _loc3_.setViewSize(param1,param2);
            }
         }
      }
      
      public function isPopupOpen() : Boolean
      {
         var _loc1_:PopupLayer = null;
         for each(_loc1_ in this.mLayers)
         {
            if(_loc1_ && _loc1_.isPopupOpen())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         var _loc2_:PopupLayer = null;
         for each(_loc2_ in this.mLayers)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:PopupLayer = null;
         for each(_loc2_ in this.mLayers)
         {
            if(_loc2_ && _loc2_.isPopupInQueueById(param1))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : IPopup
      {
         var _loc2_:PopupLayer = null;
         for each(_loc2_ in this.mLayers)
         {
            if(_loc2_ && _loc2_.isPopupOpenById(param1))
            {
               return _loc2_.getOpenPopupById(param1);
            }
         }
         return null;
      }
      
      public function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : PopupLayer
      {
         var _loc5_:PopupLayer;
         if(_loc5_ = this.mLayers[param1])
         {
            _loc5_.isPersistentLayer = param4;
            return _loc5_;
         }
         (_loc5_ = this.mLayers[param1] = this.createPopupLayer(param1,param2,param3,param4)).addEventListener(PopupLayerEvent.OPEN,this.onLayerOpenPopup);
         _loc5_.addEventListener(PopupLayerEvent.CLOSE,this.onLayerClosePopup);
         _loc5_.addEventListener(PopupLayerEvent.ClOSE_REQUEST,this.onPopupCloseRequest);
         this.sortLayers();
         return _loc5_;
      }
      
      protected function createPopupLayer(param1:int, param2:Boolean, param3:Rectangle, param4:Boolean) : PopupLayer
      {
         var _loc5_:PopupLayer;
         (_loc5_ = new PopupLayer(param1,this.mContainer,this.mLocalizationManager,this.mApplication,param2,param3)).isPersistentLayer = param4;
         return _loc5_;
      }
      
      protected function sortByLayerIndex(param1:PopupLayer, param2:PopupLayer) : int
      {
         if(param2 == null)
         {
            return -1;
         }
         if(param1 == null)
         {
            return 1;
         }
         return param1.index - param2.index;
      }
      
      protected function sortLayers() : void
      {
         var _loc2_:PopupLayer = null;
         var _loc1_:Vector.<PopupLayer> = this.mLayers.concat();
         _loc1_.sort(this.sortByLayerIndex);
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc2_ = _loc1_[_loc3_];
            if(_loc2_)
            {
               _loc2_.setIndexDepth();
            }
            _loc3_++;
         }
      }
      
      public function setPersistentLayer(param1:int, param2:Boolean) : void
      {
         if(this.mLayers[param1])
         {
            this.mLayers[param1].isPersistentLayer = param2;
         }
      }
      
      public function openPopup(param1:IPopup, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:PopupLayer = this.getPopupLayer(param1.layerIndex);
         var _loc7_:PopupLayerData = new PopupLayerData(param1,param2,param3,param4);
         _loc6_.openPopup(_loc7_,param5);
         this.setViewSize(this.mViewWidth,this.mViewHeight);
      }
      
      public function closePopupById(param1:String, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:IPopup;
         if(_loc4_ = this.getOpenPopupById(param1))
         {
            this.closePopup(_loc4_.layerIndex,param2,param3);
         }
      }
      
      public function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:PopupLayer = null;
         for each(_loc3_ in this.mLayers)
         {
            if(_loc3_)
            {
               if(!_loc3_.isPersistentLayer)
               {
                  this.closePopupLayer(_loc3_,param1,param2);
               }
            }
         }
      }
      
      protected function closePopupLayer(param1:PopupLayer, param2:Boolean, param3:Boolean) : void
      {
         param1.closePopup(param2,param3);
      }
      
      public function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:PopupLayer = null;
         var _loc6_:int = 0;
         if(param1 >= 0 && !param4)
         {
            if(_loc5_ = this.mLayers[param1])
            {
               this.closePopupLayer(_loc5_,param2,param3);
            }
         }
         else
         {
            _loc6_ = this.mLayers.length - 1;
            for(; _loc6_ >= 0; _loc6_--)
            {
               if(_loc5_ = this.mLayers[_loc6_])
               {
                  if(!param4)
                  {
                     this.closePopupLayer(_loc5_,param2,param3);
                  }
                  this.closePopupLayer(_loc5_,param2,false);
                  continue;
                  return;
               }
            }
         }
      }
      
      protected function onPopupCloseRequest(param1:PopupLayerEvent) : void
      {
         var _loc2_:PopupLayer = this.mLayers[param1.layerIndex];
         if(_loc2_)
         {
            this.closePopupLayer(_loc2_,param1.layerData.useTransitionOut,param1.layerData.allowQueue);
         }
      }
      
      protected function onLayerClosePopup(param1:PopupLayerEvent) : void
      {
         if(!this.isPopupOpen())
         {
            dispatchEvent(new PopupEvent(PopupEvent.CLOSE,null));
         }
      }
      
      protected function onLayerOpenPopup(param1:PopupLayerEvent) : void
      {
         dispatchEvent(new PopupEvent(PopupEvent.OPEN,null));
      }
      
      protected function getPopupLayer(param1:int) : PopupLayer
      {
         return this.addLayer(param1);
      }
   }
}
