package com.rovio.ui.popup
{
   import com.rovio.BasicGame;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.popup.event.PopupEvent;
   import com.rovio.ui.popup.event.PopupLayerEvent;
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
      
      public function PopupManager(container:MovieClip, localizationManager:LocalizationManager, application:BasicGame, width:Number = 960, height:Number = 560, layerLimit:int = 11)
      {
         super();
         this.mLayers = new Vector.<PopupLayer>(layerLimit,true);
         this.mLocalizationManager = localizationManager;
         this.mApplication = application;
         this.mContainer = container;
         this.mViewWidth = width;
         this.mViewHeight = height;
      }
      
      public function setViewSize(width:int, height:int) : void
      {
         var layer:PopupLayer = null;
         this.mViewWidth = width;
         this.mViewHeight = height;
         for each(layer in this.mLayers)
         {
            if(layer)
            {
               layer.setViewSize(width,height);
            }
         }
      }
      
      public function isPopupOpen() : Boolean
      {
         var layer:PopupLayer = null;
         for each(layer in this.mLayers)
         {
            if(layer && layer.isPopupOpen())
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupOpenById(id:String) : Boolean
      {
         var layer:PopupLayer = null;
         for each(layer in this.mLayers)
         {
            if(layer && layer.isPopupOpenById(id))
            {
               return true;
            }
         }
         return false;
      }
      
      public function isPopupInQueueById(id:String) : Boolean
      {
         var layer:PopupLayer = null;
         for each(layer in this.mLayers)
         {
            if(layer && layer.isPopupInQueueById(id))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(id:String) : IPopup
      {
         var layer:PopupLayer = null;
         for each(layer in this.mLayers)
         {
            if(layer && layer.isPopupOpenById(id))
            {
               return layer.getOpenPopupById(id);
            }
         }
         return null;
      }
      
      public function addLayer(index:int, useQue:Boolean = true, margin:Rectangle = null, isPersistent:Boolean = false) : PopupLayer
      {
         var layer:PopupLayer = this.mLayers[index];
         if(layer)
         {
            layer.isPersistentLayer = isPersistent;
            return layer;
         }
         layer = this.mLayers[index] = this.createPopupLayer(index,useQue,margin,isPersistent);
         layer.addEventListener(PopupLayerEvent.OPEN,this.onLayerOpenPopup);
         layer.addEventListener(PopupLayerEvent.CLOSE,this.onLayerClosePopup);
         layer.addEventListener(PopupLayerEvent.ClOSE_REQUEST,this.onPopupCloseRequest);
         this.sortLayers();
         return layer;
      }
      
      protected function createPopupLayer(index:int, useQue:Boolean, margin:Rectangle, isPersistent:Boolean) : PopupLayer
      {
         var layer:PopupLayer = new PopupLayer(index,this.mContainer,this.mLocalizationManager,this.mApplication,useQue,margin);
         layer.isPersistentLayer = isPersistent;
         return layer;
      }
      
      protected function sortByLayerIndex(obj1:PopupLayer, obj2:PopupLayer) : int
      {
         if(obj2 == null)
         {
            return -1;
         }
         if(obj1 == null)
         {
            return 1;
         }
         return obj1.index - obj2.index;
      }
      
      protected function sortLayers() : void
      {
         var layer:PopupLayer = null;
         var sortedLayers:Vector.<PopupLayer> = this.mLayers.concat();
         sortedLayers.sort(this.sortByLayerIndex);
         for(var i:int = 0; i < sortedLayers.length; i++)
         {
            layer = sortedLayers[i];
            if(layer)
            {
               layer.setIndexDepth();
            }
         }
      }
      
      public function setPersistentLayer(index:int, isPersistent:Boolean) : void
      {
         if(this.mLayers[index])
         {
            this.mLayers[index].isPersistentLayer = isPersistent;
         }
      }
      
      public function openPopup(popup:IPopup, useTransitionIn:Boolean = false, useTransitionOut:Boolean = false, useTransitionOutOfPrevious:Boolean = true, forceOpen:Boolean = false) : void
      {
         var layer:PopupLayer = this.getPopupLayer(popup.layerIndex);
         var data:PopupLayerData = new PopupLayerData(popup,useTransitionIn,useTransitionOut,useTransitionOutOfPrevious);
         layer.openPopup(data,forceOpen);
         this.setViewSize(this.mViewWidth,this.mViewHeight);
      }
      
      public function closePopupById(id:String, useTransitionOnClose:Boolean = false, allowQue:Boolean = true) : void
      {
         var popup:IPopup = this.getOpenPopupById(id);
         if(popup)
         {
            this.closePopup(popup.layerIndex,useTransitionOnClose,allowQue);
         }
      }
      
      public function closeAllPopups(useTransitionOnClose:Boolean = false, allowQue:Boolean = true) : void
      {
         var layer:PopupLayer = null;
         for each(layer in this.mLayers)
         {
            if(layer)
            {
               if(!layer.isPersistentLayer)
               {
                  this.closePopupLayer(layer,useTransitionOnClose,allowQue);
               }
            }
         }
      }
      
      protected function closePopupLayer(layer:PopupLayer, useTransitionOnClose:Boolean, allowQue:Boolean) : void
      {
         layer.closePopup(useTransitionOnClose,allowQue);
      }
      
      public function closePopup(layerIndex:int = -1, useTransitionOnClose:Boolean = false, allowQue:Boolean = true, all:Boolean = false) : void
      {
         var layer:PopupLayer = null;
         var i:int = 0;
         if(layerIndex >= 0 && !all)
         {
            layer = this.mLayers[layerIndex];
            if(layer)
            {
               this.closePopupLayer(layer,useTransitionOnClose,allowQue);
            }
         }
         else
         {
            for(i = this.mLayers.length - 1; i >= 0; i--)
            {
               layer = this.mLayers[i];
               if(layer)
               {
                  if(!all)
                  {
                     this.closePopupLayer(layer,useTransitionOnClose,allowQue);
                     return;
                  }
                  this.closePopupLayer(layer,useTransitionOnClose,false);
               }
            }
         }
      }
      
      protected function onPopupCloseRequest(event:PopupLayerEvent) : void
      {
         var layer:PopupLayer = this.mLayers[event.layerIndex];
         if(layer)
         {
            this.closePopupLayer(layer,event.layerData.useTransitionOut,event.layerData.allowQueue);
         }
      }
      
      protected function onLayerClosePopup(event:PopupLayerEvent) : void
      {
         if(!this.isPopupOpen())
         {
            dispatchEvent(new PopupEvent(PopupEvent.CLOSE,null));
         }
      }
      
      protected function onLayerOpenPopup(event:PopupLayerEvent) : void
      {
         dispatchEvent(new PopupEvent(PopupEvent.OPEN,null));
      }
      
      protected function getPopupLayer(index:int) : PopupLayer
      {
         return this.addLayer(index);
      }
   }
}
