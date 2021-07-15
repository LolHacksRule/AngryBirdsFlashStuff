package com.rovio.ui.Components.Helpers
{
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.tween.TweenManager;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.assets.AssetCache;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class UIComponentInteractiveRovio extends UIComponentRovio
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const COMPONENT_STATE_DEACTIVE:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const VISUAL_STATE_MOUSE_ROLL_OUT:String = "Out";
      
      public static const VISUAL_STATE_MOUSE_ROLL_OVER:String = "Over";
      
      public static const VISUAL_STATE_MOUSE_UP_DEFULT:String = "Up_Default";
      
      public static const VISUAL_STATE_MOUSE_DOWN:String = "Down";
      
      public static var smTooltipClipClass:Class;
      
      public static var smTryToLoadToolTipClass:Boolean = true;
      
      public static const TOOLTIP_ASSET_NAME:String = "Tooltip";
      
      public static var smTooltipsEnabled:Boolean = true;
       
      
      public var mComponentState:String;
      
      public var mVisualState:String;
      
      public var mTooltipText:String;
      
      public var mTooltipMovieClip:MovieClip;
      
      public var MARGIN_TOOLTIP:int = 6;
      
      private var mIsToggle:Boolean = false;
      
      private var mMouseCursor:String = "auto";
      
      private var mButtonTween:ISimpleTween;
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.mComponentState = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.mVisualState = VISUAL_STATE_MOUSE_UP_DEFULT;
         this.goToCorrectFrame();
         this.createTooltip(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.mIsToggle = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.mMouseCursor = _loc4_;
            }
         }
         ON_FADE_TO_ALPHA_COMPLETE(LISTENER_EVENT_MOUSE_ROLLOVER,param1.@MouseOver);
         ON_FADE_TO_ALPHA_COMPLETE(LISTENER_EVENT_MOUSE_ROLLOUT,param1.@MouseOut);
      }
      
      public static function setTooltipMovieClipClass() : void
      {
         smTooltipClipClass = AssetCache.getAssetFromCache(TOOLTIP_ASSET_NAME);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(param1)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OUT);
         }
      }
      
      public function createTooltip(param1:String) : void
      {
         this.mTooltipText = param1;
         if(this.mTooltipText && this.mTooltipText.length == 0)
         {
            this.mTooltipText = null;
         }
         if(this.mTooltipText)
         {
            if(dtRatio)
            {
               dtRatio = false;
               setTooltipMovieClipClass();
            }
            this.mTooltipMovieClip = new MovieClip();
            if(smTooltipClipClass)
            {
               this.createTooltipWithMovieClip();
            }
            else
            {
               this.createTooltipWithoutMovieClip();
            }
            this.mTooltipMovieClip.mouseEnabled = false;
            this.mTooltipMovieClip.mouseChildren = false;
            this.mTooltipMovieClip.visible = false;
            getParentView().addChild(this.mTooltipMovieClip);
         }
      }
      
      private function createTooltipWithoutMovieClip() : void
      {
         this.mTooltipMovieClip = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.mTooltipMovieClip.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.mTooltipMovieClip.addChildAt(_loc2_,0);
         this.setTooltipTextWithoutMovieClip(this.mTooltipText);
      }
      
      private function createTooltipWithMovieClip() : void
      {
         this.mTooltipMovieClip = new smTooltipClipClass();
         this.setTooltipText(this.mTooltipText);
      }
      
      public function setTooltipText(param1:String) : void
      {
         this.mTooltipText = param1;
         if(smTooltipClipClass)
         {
            this.setTooltipTextMovieClip(param1);
         }
         else
         {
            this.setTooltipTextWithoutMovieClip(param1);
         }
      }
      
      private function setTooltipTextMovieClip(param1:String) : void
      {
         var _loc2_:TextField = this.mTooltipMovieClip.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.mTooltipMovieClip.getChildByName("Base") as MovieClip;
         _loc2_.text = this.mTooltipText;
         _loc2_.multiline = false;
         _loc2_.width = _loc2_.textWidth * 1.25;
         var _loc4_:Number = Math.max(_loc3_.width * 0.75,_loc2_.width * 1.2);
         _loc3_.scaleX = _loc4_ / _loc3_.width;
         _loc3_.x = 0;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.numChildren)
         {
            _loc3_.getChildAt(0).x = 0;
            _loc5_++;
         }
         _loc2_.x = (_loc3_.width - _loc2_.width) / 2;
      }
      
      private function setTooltipTextWithoutMovieClip(param1:String) : void
      {
         var _loc2_:TextField = this.mTooltipMovieClip.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.mTooltipText;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.mTooltipMovieClip.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.MARGIN_TOOLTIP,-this.MARGIN_TOOLTIP,_loc2_.width + 2 * this.MARGIN_TOOLTIP,_loc2_.height + 2 * this.MARGIN_TOOLTIP);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.MARGIN_TOOLTIP / 2,-(this.MARGIN_TOOLTIP / 2),_loc2_.width + 1 * this.MARGIN_TOOLTIP,_loc2_.height + 1 * this.MARGIN_TOOLTIP);
      }
      
      private function updateToolTips(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.mTooltipMovieClip || this.mTooltipText == null || this.mTooltipText.length == 0)
         {
            return;
         }
         if(param1 && smTooltipsEnabled)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.mTooltipMovieClip.y = _loc2_.y - this.mTooltipMovieClip.height - this.MARGIN_TOOLTIP;
            this.mTooltipMovieClip.x = _loc2_.x + mClip.width / 2 - this.mTooltipMovieClip.width / 2;
            _loc3_ = this.mTooltipMovieClip.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.MARGIN_TOOLTIP));
            }
            if(_loc3_.left < this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x += 1 + (this.MARGIN_TOOLTIP - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.MARGIN_TOOLTIP));
            }
            if(_loc3_.top < this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.y += mClip.height + this.mTooltipMovieClip.height + this.MARGIN_TOOLTIP * 2;
            }
            this.mTooltipMovieClip.visible = true;
         }
         else
         {
            this.mTooltipMovieClip.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.mComponentState = COMPONENT_STATE_DISABLED;
         if(this.mTooltipMovieClip)
         {
            this.mTooltipText = null;
            while(this.mTooltipMovieClip.numChildren > 0)
            {
               this.mTooltipMovieClip.removeChildAt(0);
            }
            if(this.mTooltipMovieClip.parent)
            {
               this.mTooltipMovieClip.parent.removeChild(this.mTooltipMovieClip);
            }
            this.mTooltipMovieClip = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.mComponentState = param1;
         this.goToCorrectFrame();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(mScaleOnMouseOver && mScaling)
         {
            if(param1 == VISUAL_STATE_MOUSE_ROLL_OVER)
            {
               if(this.mButtonTween != null)
               {
                  this.mButtonTween.stop();
               }
               this.mButtonTween = TweenManager.instance.createTween(mClip,{
                  "scaleX":mScaling.scaleX + 0.1,
                  "scaleY":mScaling.scaleY + 0.1
               },null,0.1);
               this.mButtonTween.play();
            }
            else if(param1 == VISUAL_STATE_MOUSE_ROLL_OUT)
            {
               if(this.mButtonTween != null)
               {
                  this.mButtonTween.stop();
               }
               this.mButtonTween = TweenManager.instance.createTween(mClip,{
                  "scaleX":mScaling.scaleX,
                  "scaleY":mScaling.scaleY
               },null,0.1);
               this.mButtonTween.play();
            }
         }
         this.mVisualState = param1;
         this.goToCorrectFrame();
      }
      
      public function goToCorrectFrame() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.mComponentState + "_" + this.mVisualState,this.mComponentState + "_" + VISUAL_STATE_MOUSE_UP_DEFULT];
         if(this.mComponentState != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.mVisualState,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + VISUAL_STATE_MOUSE_UP_DEFULT);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.hasFrame(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function hasFrame(param1:String) : Boolean
      {
         var _loc2_:FrameLabel = null;
         for each(_loc2_ in mClip.currentLabels)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : UIInteractionEvent
      {
         if(this.mComponentState == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.mIsToggle && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.toggleComponentState();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_DOWN);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OVER);
         }
         if(param1 == LISTENER_EVENT_MOUSE_ROLLOUT)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OUT);
         }
         if(param1 == LISTENER_EVENT_MOUSE_ROLLOVER)
         {
            Mouse.cursor = this.mMouseCursor;
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OVER);
         }
         this.updateToolTips(param1 == LISTENER_EVENT_MOUSE_ROLLOVER);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function toggleComponentState() : void
      {
         if(this.mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
         }
         else if(this.mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE)
         {
            this.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         super.changeMovieClip(param1);
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         var _loc4_:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(this.mParentContainer)
         {
            mParentContainer.mClip.removeChild(mClip);
         }
         mClip = null;
         mClip = param1;
         if(this.mParentContainer)
         {
            mParentContainer.mClip.addChildAt(mClip,_loc4_);
         }
         mClip.x = _loc2_;
         mClip.y = _loc3_;
         this.goToCorrectFrame();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.updateToolTips(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(param1)
         {
            this.updateToolTips(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.mButtonTween)
         {
            this.mButtonTween.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.mButtonTween)
         {
            this.mButtonTween.stop();
         }
         super.viewHeight = param1;
      }
   }
}
