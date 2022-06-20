package com.rovio.ui.Components.Helpers
{
   import com.rovio.assets.AssetCache;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class UIComponentRovio extends UIEventListenerRovio
   {
       
      
      public var mParentContainer:UIContainerRovio;
      
      public var mClip:MovieClip;
      
      protected var mName:String;
      
      private var mUpperCaseName:String;
      
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
      
      public function UIComponentRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         var cls:Class = null;
         var error:String = null;
         var color:Number = NaN;
         var alpha:Number = NaN;
         var tmp:Sprite = null;
         this.mParentContainer = parentContainer;
         this.mName = data.@name;
         this.mUpperCaseName = this.mName.toUpperCase();
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
            cls = AssetCache.getAssetFromCache(this.name);
            this.mClip = new cls();
            if(this.mParentContainer)
            {
               this.mParentContainer.mClip.addChild(this.mClip);
            }
         }
         else if(this.mParentContainer)
         {
            this.mClip = this.mParentContainer.mClip.getChildByName(this.name) as MovieClip;
            if(this.mClip == null)
            {
               error = "Asset instance not found!! [" + this.name + "] parent: [" + this.mParentContainer.name + "]";
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
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get upperCaseName() : String
      {
         return this.mUpperCaseName;
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
      
      private function readInitialDimensions(data:XML) : void
      {
         var width:Number = data.@width;
         var height:Number = data.@height;
         if(!this.mParentContainer)
         {
            this.mViewWidth = width;
            this.mViewHeight = height;
         }
         else
         {
            if(width == 0)
            {
               this.mViewWidth = this.mParentContainer.viewWidth;
            }
            else
            {
               this.mViewWidth = width;
            }
            if(height == 0)
            {
               this.mViewHeight = this.mParentContainer.viewHeight;
            }
            else
            {
               this.mViewHeight = height;
            }
         }
         this.mInitialViewWidth = this.mViewWidth;
         this.mInitialViewHeight = this.mViewHeight;
      }
      
      private function readInitialAlignmentAndScaling(data:XML) : void
      {
         this.mAlignH = data.@alignH;
         this.mAlignV = data.@alignV;
         this.mScaleH = data.@scaleH;
         this.mScaleV = data.@scaleV;
         this.mScaleFunction = data.@scaleFunction;
         this.mAspectRatioFixed = data.@aspectRatioFixed;
         var scrollRect:String = data.@scrollRect;
         var scaleOnMouseOver:String = data.@scaleOnMouseOver;
         this.setScrollRect(scrollRect);
         this.setScaleOnMouseOver(scaleOnMouseOver);
      }
      
      private function setScaleOnMouseOver(scaleOnMouseOver:String) : void
      {
         if(scaleOnMouseOver)
         {
            scaleOnMouseOver = scaleOnMouseOver.toUpperCase();
            if(scaleOnMouseOver == "TRUE")
            {
               this.mScaleOnMouseOver = true;
            }
         }
      }
      
      private function setScrollRect(scrollRect:String) : void
      {
         if(scrollRect && scrollRect.toUpperCase() == "TRUE")
         {
            this.mScrollRect = true;
         }
      }
      
      public function readInitialVisibility(data:XML) : void
      {
         var property:String = data.@visible;
         if(property && property.toUpperCase() == "FALSE")
         {
            this.setVisibility(false);
         }
         else
         {
            this.setVisibility(true);
         }
         property = data.@enabled;
         if(property && property.toUpperCase() == "FALSE")
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
         this.mClip.stop();
         while(this.mClip.numChildren > 0)
         {
            this.mClip.removeChildAt(0);
         }
         this.mClip = null;
         this.mScaling = null;
      }
      
      override public function listenerUIEventOccured(eventIndex:int, eventName:String) : UIInteractionEvent
      {
         var event:UIInteractionEvent = super.listenerUIEventOccured(eventIndex,eventName);
         if(this.mParentContainer)
         {
            this.mParentContainer.childUIEventOccured(eventIndex,eventName,this,event);
         }
         return event;
      }
      
      public function setVisibility(visibility:Boolean) : void
      {
         this.mVisibility = visibility;
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
      
      public function setActiveStatus(active:Boolean) : void
      {
         this.mActive = active;
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
            if(active)
            {
               this.mClip.gotoAndPlay(1);
            }
            else
            {
               this.mClip.gotoAndStop(1);
            }
         }
      }
      
      public function setEnabled(newEnabled:Boolean, affectChildren:Boolean = false) : void
      {
         if(this.mClip.mouseEnabled != newEnabled)
         {
            this.mClip.mouseEnabled = newEnabled;
            if(affectChildren)
            {
               this.mClip.mouseChildren = newEnabled;
            }
         }
      }
      
      public function getParentView() : UIView
      {
         return this.mParentContainer.getParentView();
      }
      
      public function set x(x:Number) : void
      {
         this.mClip.x = Math.round(x);
         if(this.mScaling)
         {
            this.mScaling.x = this.mClip.x;
         }
      }
      
      public function set y(y:Number) : void
      {
         this.mClip.y = Math.round(y);
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
      
      public function set scaleX(scaleX:Number) : void
      {
         this.mClip.scaleX = scaleX;
         if(this.mScaling)
         {
            this.mScaling.scaleX = scaleX;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mClip.scaleX;
      }
      
      public function set scaleY(scaleY:Number) : void
      {
         this.mClip.scaleY = scaleY;
         if(this.mScaling)
         {
            this.mScaling.scaleY = scaleY;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.mClip.scaleY;
      }
      
      public function get visible() : Boolean
      {
         return this.mClip.visible;
      }
      
      public function set visible(visible:Boolean) : void
      {
         this.mClip.visible = visible;
      }
      
      public function get width() : Number
      {
         return this.mClip.width;
      }
      
      public function get height() : Number
      {
         return this.mClip.height;
      }
      
      override public function goToFrame(frameIndex:int, play:Boolean) : void
      {
         super.goToFrame(frameIndex,play);
         if(this.mClip && this.mClip is MovieClip)
         {
            if(play)
            {
               this.mClip.gotoAndPlay(frameIndex);
            }
            else
            {
               this.mClip.gotoAndStop(frameIndex);
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
      
      public function set viewWidth(width:Number) : void
      {
         this.mViewWidth = width;
         this.fixAlignment();
      }
      
      public function set viewHeight(height:Number) : void
      {
         this.mViewHeight = height;
         this.fixAlignment();
      }
      
      public function onParentVisibilityChange(value:Boolean) : void
      {
      }
      
      public function get scaleOnMouseOver() : Boolean
      {
         return this.mScaleOnMouseOver;
      }
      
      public function set scaleOnMouseOver(value:Boolean) : void
      {
         this.mScaleOnMouseOver = value;
      }
   }
}
