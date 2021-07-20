package com.rovio.ui.Components.Helpers
{
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.assets.AssetCache;
   import each.Log;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      public var mName:String;
      
      public var mActive:Boolean = false;
      
      public var mVisibility:Boolean = true;
      
      public var mIsOverlay:Boolean = false;
      
      public var mAnimateOnActivation:Boolean = false;
      
      protected var mScaling:UIScaleUtility;
      
      private var mScrollRect:Boolean = false;
      
      protected var mScaleOnMouseOver:Boolean = false;
      
      private var mViewWidth:Number;
      
      private var mViewHeight:Number;
      
      private var mInitialViewWidth:Number;
      
      private var mInitialViewHeight:Number;
      
      private var mAlignH:String;
      
      private var mAlignV:String;
      
      private var mScaleH:String;
      
      private var mScaleV:String;
      
      private var mScaleFunction:String;
      
      private var mAspectRatioFixed:String;
      
      private var mAutoAlign:Boolean = true;
      
      public function UIComponentRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         var data:XML = param1;
         var parentContainer:UIContainerRovio = param2;
         var clip:MovieClip = param3;
         this.mParentContainer = parentContainer;
         this.mName = data.@name;
         if(clip)
         {
            this.mClip = clip;
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(data.@fromLibrary.toString().toUpperCase() == "TRUE")
         {
            cls = AssetCache.getAssetFromCache(this.mName);
            this.mClip = new cls();
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
               error = "Asset instance not found!! [" + this.mName + "] parent: [" + this.mParentContainer.mName + "]";
               Log.log(error);
               function():void
               {
                  throw new Error(error);
               }();
            }
         }
         if(data.@isOverlay.toString().toUpperCase() == "TRUE")
         {
            this.mIsOverlay = true;
            color = 16777215;
            alpha = 0.5;
            if(data.@overlayColor.toString() != "")
            {
               color = parseInt(data.@overlayColor);
            }
            if(data.@overlayAlpha.toString() != "")
            {
               alpha = parseFloat(data.@overlayAlpha);
            }
            tmp = this.getParentView().createOverlaySprite(color,alpha);
            this.mClip.addChildAt(tmp,0);
         }
         if(this.mParentContainer && data.@isBehind.toString().toUpperCase() == "TRUE")
         {
            if(parentContainer.mIsOverlay)
            {
               parentContainer.mClip.setChildIndex(this.mClip,1);
            }
            else
            {
               parentContainer.mClip.setChildIndex(this.mClip,0);
            }
         }
         if(data.@animateOnActivation.toString().toUpperCase() == "TRUE")
         {
            this.mAnimateOnActivation = true;
            this.mClip.stop();
         }
         if(data.@autoAlign.toString().toUpperCase() == "FALSE")
         {
            this.mAutoAlign = false;
         }
         var targetSprite:Sprite = this.mClip;
         if(this.mClip.MouseHitArea)
         {
            this.mClip.MouseHitArea.alpha = 0;
            targetSprite = this.mClip.MouseHitArea;
            targetSprite.visible = true;
         }
         super(targetSprite);
         this.readInitialVisibility(data);
         this.readInitialDimensions(data);
         this.readInitialAlignmentAndScaling(data);
      }
      
      private function fixAlignment() : void
      {
         if(this.mAutoAlign)
         {
            if(!this.mScaling)
            {
               this.mScaling = new UIScaleUtility(this.x,this.y,this.mClip.scaleX,this.mClip.scaleY,this.mInitialViewWidth,this.mInitialViewHeight,this.mAlignH,this.mAlignV,this.mScaleH,this.mScaleV,this.mAspectRatioFixed,this.mScaleFunction);
            }
            this.mScaling.updateScale(this.mViewWidth,this.mViewHeight);
            this.mClip.x = this.mScaling.x;
            this.mClip.y = this.mScaling.y;
            this.mClip.scaleX = this.mScaling.scaleX;
            this.mClip.scaleY = this.mScaling.scaleY;
         }
         if(this.mScrollRect)
         {
            this.mClip.scrollRect = new Rectangle(0,0,this.mInitialViewWidth,this.mInitialViewHeight);
         }
      }
      
      private function readInitialDimensions(param1:XML) : void
      {
         var _loc2_:Number = param1.@width;
         var _loc3_:Number = param1.@height;
         if(!this.mParentContainer)
         {
            this.mViewWidth = _loc2_;
            this.mViewHeight = _loc3_;
         }
         else
         {
            if(_loc2_ == 0)
            {
               this.mViewWidth = this.mParentContainer.viewWidth;
            }
            else
            {
               this.mViewWidth = _loc2_;
            }
            if(_loc3_ == 0)
            {
               this.mViewHeight = this.mParentContainer.viewHeight;
            }
            else
            {
               this.mViewHeight = _loc3_;
            }
         }
         this.mInitialViewWidth = this.mViewWidth;
         this.mInitialViewHeight = this.mViewHeight;
      }
      
      private function readInitialAlignmentAndScaling(param1:XML) : void
      {
         this.mAlignH = param1.@alignH;
         this.mAlignV = param1.@alignV;
         this.mScaleH = param1.@scaleH;
         this.mScaleV = param1.@scaleV;
         this.mScaleFunction = param1.@scaleFunction;
         this.mAspectRatioFixed = param1.@aspectRatioFixed;
         var _loc2_:String = param1.@scrollRect;
         var _loc3_:String = param1.@scaleOnMouseOver;
         this.setScrollRect(_loc2_);
         this.setScaleOnMouseOver(_loc3_);
      }
      
      private function setScaleOnMouseOver(param1:String) : void
      {
         if(param1)
         {
            param1 = param1.toUpperCase();
            if(param1 == "TRUE")
            {
               this.mScaleOnMouseOver = true;
            }
         }
      }
      
      private function setScrollRect(param1:String) : void
      {
         if(param1 && param1.toUpperCase() == "TRUE")
         {
            this.mScrollRect = true;
         }
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
         if(this.mParentContainer && this.mClip.parent == this.mParentContainer.mClip)
         {
            this.mParentContainer.mClip.removeChild(this.mClip);
         }
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
         this.mScaling = null;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : UIInteractionEvent
      {
         var _loc3_:UIInteractionEvent = super.listenerUIEventOccured(param1,param2);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(param1,param2,this,_loc3_);
         }
         return _loc3_;
      }
      
      public function setVisibility(param1:Boolean) : void
      {
         this.mVisibility = param1;
         this.mClip.visible = this.mVisibility && this.mActive;
         if(this.visible)
         {
            addUIEventListeners();
         }
         else
         {
            removeUIEventListeners();
         }
      }
      
      public function setActiveStatus(param1:Boolean) : void
      {
         this.mActive = param1;
         this.mClip.visible = this.mVisibility && this.mActive;
         if(this.visible)
         {
            addUIEventListeners();
         }
         else
         {
            removeUIEventListeners();
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
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         if(this.mClip.mouseEnabled != param1)
         {
            this.mClip.mouseEnabled = param1;
            if(param2)
            {
               this.mClip.mouseChildren = param1;
            }
         }
      }
      
      public function getParentView() : UIView
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(param1:Number) : void
      {
         this.mClip.x = Math.round(param1);
         if(this.mScaling)
         {
            this.mScaling.x = this.mClip.x;
         }
      }
      
      public function set y(param1:Number) : void
      {
         this.mClip.y = Math.round(param1);
         if(this.mScaling)
         {
            this.mScaling.y = this.mClip.y;
         }
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
      
      public function set visible(param1:Boolean) : void
      {
         this.mClip.visible = param1;
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
      
      public function get viewWidth() : Number
      {
         return this.mViewWidth;
      }
      
      public function get viewHeight() : Number
      {
         return this.mViewHeight;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         this.mViewWidth = param1;
         this.fixAlignment();
      }
      
      public function set viewHeight(param1:Number) : void
      {
         this.mViewHeight = param1;
         this.fixAlignment();
      }
      
      public function onParentVisibilityChange(param1:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.mScaleOnMouseOver;
      }
      
      public function set scaleOnMouseOver(param1:Boolean) : void
      {
         this.mScaleOnMouseOver = param1;
      }
   }
}
