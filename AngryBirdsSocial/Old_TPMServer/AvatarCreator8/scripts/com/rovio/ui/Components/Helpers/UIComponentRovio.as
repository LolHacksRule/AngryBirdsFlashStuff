package com.rovio.ui.Components.Helpers
{
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var mVisibility:Boolean = true;
      
      public function UIComponentRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Class = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         this.mParentContainer = param2;
         this.mName = param1.@name;
         if(param3)
         {
            this.mClip = param3;
            addChild(this.mClip);
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this);
            }
         }
         else if(param1.@fromLibrary == "True")
         {
            _loc4_ = AssetCache.getAssetFromCache(this.mName);
            this.mClip = new _loc4_();
            addChild(this.mClip);
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
            _loc5_ = this.mParentContainer.mClip.getChildIndex(this.mClip);
            addChild(this.mClip);
            this.mParentContainer.mClip.addChildAt(this,_loc5_);
         }
         if(this.mParentContainer && param1.@isBehind == "True")
         {
            param2.mClip.setChildIndex(this,0);
         }
         if(param1.@isOverlay == "True")
         {
            _loc6_ = 16777215;
            _loc7_ = 0.5;
            if(param1.@overlayColor.toString() != "")
            {
               _loc6_ = parseInt(param1.@overlayColor);
            }
            if(param1.@overlayAlpha.toString() != "")
            {
               _loc7_ = parseFloat(param1.@overlayAlpha);
            }
            _loc8_ = this.getParentView().createOverlaySprite(_loc6_,_loc7_);
            this.mClip.addChildAt(_loc8_,0);
         }
         super(this.mClip);
         this.readInitialVisibility(param1);
      }
      
      public function readInitialVisibility(param1:XML) : void
      {
         var _loc2_:String = param1.@visible;
         if(_loc2_ && _loc2_.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         _loc2_ = param1.@enabled;
         if(_loc2_ && _loc2_.toUpperCase() == "FALSE")
         {
            this.setEnabled(false);
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         if(this.mParentContainer)
         {
            this.mParentContainer.mClip.removeChild(this);
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         this.mClip = null;
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
         this.mParentContainer.containerEventOccured(param1,param2,this);
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.mVisibility = param1;
         visible = this.mVisibility && this.mActive;
         this.mClip.visible = visible;
         if(visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.mActive = param1;
         visible = this.mVisibility && this.mActive;
         this.mClip.visible = visible;
         if(visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         this.mClip.mouseEnabled = param1;
         this.mClip.mouseChildren = param1;
         mouseEnabled = param1;
         mouseChildren = param1;
      }
      
      public function getParentView() : UIView
      {
         return this.mParentContainer.getParentView();
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         super.changeMovieClip(param1);
      }
   }
}
