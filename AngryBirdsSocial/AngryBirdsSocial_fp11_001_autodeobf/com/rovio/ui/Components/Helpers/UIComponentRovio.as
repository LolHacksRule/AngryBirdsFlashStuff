package com.rovio.ui.Components.Helpers
{
   import com.rovio.assets.AssetCache;
   import com.rovio.factory.Log;
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
      
      public var mIsOverlay:Boolean = false;
      
      public var mAnimateOnActivation:Boolean = false;
      
      public function UIComponentRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc4_:Class = null;
         var _loc5_:* = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         this.mParentContainer = param2;
         this.mName = param1.@name;
         if(param3)
         {
            this.mClip = param3;
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(param1.@fromLibrary.toString().toUpperCase() == "TRUE")
         {
            _loc4_ = AssetCache.getAssetFromCache(this.mName);
            this.mClip = new _loc4_();
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.mName) as MovieClip;
            if(this.mClip == null)
            {
               _loc5_ = "Asset instance not found!! [" + this.mName + "] parent: [" + this.mParentContainer.mName + "]";
               Log.log(_loc5_);
               this.mParentContainer.mClip.getChildIndex(this.mClip);
            }
         }
         if(param1.@isOverlay == "True")
         {
            this.mIsOverlay = true;
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
         if(this.mParentContainer && param1.@isBehind == "True")
         {
            if(param2.mIsOverlay)
            {
               param2.mClip.setChildIndex(this.mClip,1);
            }
            else
            {
               param2.mClip.setChildIndex(this.mClip,0);
            }
         }
         if(param1.@animateOnActivation == "True")
         {
            this.mAnimateOnActivation = true;
            this.mClip.stop();
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
            this.mParentContainer.mClip.removeChild(this.mClip);
         }
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.containerEventOccured(param1,param2,this);
         }
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.mVisibility = param1;
         this.mClip.visible = this.mVisibility && this.mActive;
         if(this.visible)
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
         this.mClip.visible = this.mVisibility && this.mActive;
         if(this.visible)
         {
            addEventListeners();
         }
         else
         {
            removeEventListeners();
         }
         if(this.mAnimateOnActivation)
         {
            if(param1)
            {
               this.mClip.gotoAndPlay(1);
            }
            else
            {
               this.mClip.gotoAndStop(1);
            }
         }
      }
      
      public function setEnabled(param1:Boolean) : void
      {
         this.mClip.mouseEnabled = param1;
         this.mClip.mouseChildren = param1;
      }
      
      public function getParentView() : UIView
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = param1;
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = param1;
      }
      
      public function get x() : Number
      {
         return this.mClip.x;
      }
      
      public function get y() : Number
      {
         return this.mClip.y;
      }
      
      public function get visible() : Boolean
      {
         return this.mClip.visible;
      }
      
      public function get width() : Number
      {
         return this.mClip.width;
      }
      
      public function get height() : Number
      {
         return this.mClip.height;
      }
      
      override public function goToFrame(param1:int, param2:Boolean) : void
      {
         super.goToFrame(param1,param2);
         if(this.mClip && this.mClip is MovieClip)
         {
            if(param2)
            {
               this.mClip.gotoAndPlay(param1);
            }
            else
            {
               this.mClip.gotoAndStop(param1);
            }
         }
      }
   }
}
