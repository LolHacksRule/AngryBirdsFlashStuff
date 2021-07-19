package com.angrybirds.popups
{
   import com.rovio.BasicGame;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.ui.popup.PopupLayer;
   import com.rovio.ui.popup.PopupManager;
   import com.rovio.ui.popup.event.PopupLayerEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class PopupManagerFriends extends PopupManager
   {
      
      public static const BLOCKER_ALPHA:Number = 0.6;
       
      
      private var mBlocker:Sprite;
      
      public function PopupManagerFriends(container:MovieClip, localizationManager:LocalizationManager, application:BasicGame, width:Number = 960, height:Number = 560, layerLimit:int = 11)
      {
         this.createBlocker();
         super(container,localizationManager,application,width,height,layerLimit);
      }
      
      private function createBlocker() : void
      {
         this.mBlocker = new Sprite();
         this.mBlocker.graphics.beginFill(0);
         this.mBlocker.graphics.drawRect(0,0,100,100);
         this.mBlocker.graphics.endFill();
         this.mBlocker.alpha = BLOCKER_ALPHA;
      }
      
      override public function addLayer(index:int, useQue:Boolean = true, margin:Rectangle = null, isPersistent:Boolean = false) : PopupLayer
      {
         var layer:PopupLayer = super.addLayer(index,useQue,margin,isPersistent);
         layer.addEventListener(PopupLayerEvent.OPEN,this.onPopupOpen);
         layer.addEventListener(PopupLayerEvent.CLOSE,this.onPopupClose);
         return layer;
      }
      
      private function onPopupOpen(e:PopupLayerEvent) : void
      {
         this.setBlocker();
      }
      
      private function onPopupClose(e:PopupLayerEvent) : void
      {
         this.setBlocker();
      }
      
      private function setBlocker() : void
      {
         var layer:PopupLayer = null;
         var topOpenLayer:PopupLayer = null;
         for each(layer in mLayers)
         {
            if(!(!layer || !layer.isPopupOpen()))
            {
               if(topOpenLayer == null || topOpenLayer.index < layer.index)
               {
                  topOpenLayer = layer;
               }
            }
         }
         if(topOpenLayer)
         {
            if(this.mBlocker.parent != mContainer)
            {
               mContainer.addChild(this.mBlocker);
            }
            mContainer.setChildIndex(this.mBlocker,mContainer.numChildren - 1);
            mContainer.setChildIndex(topOpenLayer.container,mContainer.numChildren - 1);
         }
         else if(this.mBlocker.parent == mContainer)
         {
            mContainer.removeChild(this.mBlocker);
         }
      }
      
      override public function setViewSize(width:int, height:int) : void
      {
         super.setViewSize(width,height);
         this.mBlocker.x = -(width >> 1);
         this.mBlocker.y = -(height >> 1);
         this.mBlocker.width = mViewWidth << 1;
         this.mBlocker.height = mViewHeight << 1;
      }
   }
}
