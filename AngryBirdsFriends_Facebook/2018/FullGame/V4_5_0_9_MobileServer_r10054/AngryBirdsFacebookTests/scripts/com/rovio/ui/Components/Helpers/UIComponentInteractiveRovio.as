package com.rovio.ui.Components.Helpers
{
   import com.rovio.assets.AssetCache;
   import com.rovio.events.UIInteractionEvent;
   import com.rovio.tween.ISimpleTween;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Components.UIContainerRovio;
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
      
      public function UIComponentInteractiveRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         var alternatives:Array = null;
         super(data,parentContainer,clip);
         this.mComponentState = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.mVisualState = VISUAL_STATE_MOUSE_UP_DEFULT;
         this.goToCorrectFrame();
         this.createTooltip(data.@Tooltip);
         if(data.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.mIsToggle = true;
         }
         var newCursor:String = data.@cursor.toString().toLowerCase();
         if(newCursor)
         {
            alternatives = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
            if(alternatives.indexOf(newCursor) > -1)
            {
               this.mMouseCursor = newCursor;
            }
         }
         setUIEventListener(LISTENER_EVENT_MOUSE_ROLLOVER,data.@MouseOver);
         setUIEventListener(LISTENER_EVENT_MOUSE_ROLLOUT,data.@MouseOut);
      }
      
      public static function setTooltipMovieClipClass() : void
      {
         smTooltipClipClass = AssetCache.getAssetFromCache(TOOLTIP_ASSET_NAME);
      }
      
      override public function setActiveStatus(active:Boolean) : void
      {
         super.setActiveStatus(active);
         if(!active)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OUT);
         }
      }
      
      public function createTooltip(newTooltip:String) : void
      {
         this.mTooltipText = newTooltip;
         if(this.mTooltipText && this.mTooltipText.length == 0)
         {
            this.mTooltipText = null;
         }
         if(this.mTooltipText)
         {
            if(smTryToLoadToolTipClass)
            {
               smTryToLoadToolTipClass = false;
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
         var textField:TextField = new TextField();
         textField.name = "Text";
         this.mTooltipMovieClip.addChild(textField);
         var textBackground:Shape = new Shape();
         textBackground.name = "Base";
         this.mTooltipMovieClip.addChildAt(textBackground,0);
         this.setTooltipTextWithoutMovieClip(this.mTooltipText);
      }
      
      private function createTooltipWithMovieClip() : void
      {
         this.mTooltipMovieClip = new smTooltipClipClass();
         this.setTooltipText(this.mTooltipText);
      }
      
      public function setTooltipText(str:String) : void
      {
         this.mTooltipText = str;
         if(smTooltipClipClass)
         {
            this.setTooltipTextMovieClip(str);
         }
         else
         {
            this.setTooltipTextWithoutMovieClip(str);
         }
      }
      
      private function setTooltipTextMovieClip(str:String) : void
      {
         var textField:TextField = this.mTooltipMovieClip.getChildByName("Text") as TextField;
         var base:MovieClip = this.mTooltipMovieClip.getChildByName("Base") as MovieClip;
         textField.text = this.mTooltipText;
         textField.multiline = false;
         textField.width = textField.textWidth * 1.25;
         var baseWidth:Number = Math.max(base.width * 0.75,textField.width * 1.2);
         base.scaleX = baseWidth / base.width;
         base.x = 0;
         for(var i:int = 0; i < base.numChildren; i++)
         {
            base.getChildAt(0).x = 0;
         }
         textField.x = (base.width - textField.width) / 2;
      }
      
      private function setTooltipTextWithoutMovieClip(str:String) : void
      {
         var textField:TextField = this.mTooltipMovieClip.getChildByName("Text") as TextField;
         var dft:TextFormat = textField.defaultTextFormat;
         dft.align = TextFormatAlign.CENTER;
         dft.bold = true;
         dft.size = 12;
         textField.defaultTextFormat = dft;
         textField.border = false;
         textField.text = this.mTooltipText;
         textField.height = textField.textHeight * 1.25;
         textField.width = textField.textWidth * 1.25;
         textField.textColor = 0;
         textField.selectable = false;
         textField.mouseEnabled = false;
         var textBackground:Shape = this.mTooltipMovieClip.getChildByName("Base") as Shape;
         textBackground.graphics.clear();
         textBackground.graphics.lineStyle(1);
         textBackground.graphics.beginFill(0,1);
         textBackground.graphics.drawRect(-this.MARGIN_TOOLTIP,-this.MARGIN_TOOLTIP,textField.width + 2 * this.MARGIN_TOOLTIP,textField.height + 2 * this.MARGIN_TOOLTIP);
         textBackground.graphics.beginFill(16777215,1);
         textBackground.graphics.drawRect(-this.MARGIN_TOOLTIP / 2,-(this.MARGIN_TOOLTIP / 2),textField.width + 1 * this.MARGIN_TOOLTIP,textField.height + 1 * this.MARGIN_TOOLTIP);
      }
      
      private function updateToolTips(showTooltip:Boolean) : void
      {
         var componentRect:Rectangle = null;
         var tooltipRect:Rectangle = null;
         if(!this.mTooltipMovieClip || this.mTooltipText == null || this.mTooltipText.length == 0)
         {
            return;
         }
         if(showTooltip && smTooltipsEnabled)
         {
            componentRect = mClip.getRect(getParentView());
            this.mTooltipMovieClip.y = componentRect.y - this.mTooltipMovieClip.height - this.MARGIN_TOOLTIP;
            this.mTooltipMovieClip.x = componentRect.x + mClip.width / 2 - this.mTooltipMovieClip.width / 2;
            tooltipRect = this.mTooltipMovieClip.getRect(mClip.stage);
            if(tooltipRect.right > mClip.stage.stageWidth - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x -= 1 + (tooltipRect.right - (mClip.stage.stageWidth - this.MARGIN_TOOLTIP));
            }
            if(tooltipRect.left < this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x += 1 + (this.MARGIN_TOOLTIP - tooltipRect.left);
            }
            if(tooltipRect.bottom > mClip.stage.stageHeight - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.y -= 1 + (tooltipRect.bottom - (mClip.stage.stageHeight - this.MARGIN_TOOLTIP));
            }
            if(tooltipRect.top < this.MARGIN_TOOLTIP)
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
      
      public function setComponentState(newState:String) : void
      {
         this.mComponentState = newState;
         this.goToCorrectFrame();
      }
      
      public function setComponentVisualState(newState:String) : void
      {
         if(mScaleOnMouseOver && mScaling)
         {
            if(newState == VISUAL_STATE_MOUSE_ROLL_OVER)
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
            else if(newState == VISUAL_STATE_MOUSE_ROLL_OUT)
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
         this.mVisualState = newState;
         this.goToCorrectFrame();
      }
      
      public function goToCorrectFrame() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var frameName:Array = [this.mComponentState + "_" + this.mVisualState,this.mComponentState + "_" + VISUAL_STATE_MOUSE_UP_DEFULT];
         if(this.mComponentState != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            frameName.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.mVisualState,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + VISUAL_STATE_MOUSE_UP_DEFULT);
         }
         for(var i:int = 0; i < frameName.length; i++)
         {
            if(this.hasFrame(frameName[i]))
            {
               mClip.gotoAndStop(String(frameName[i]));
               break;
            }
         }
      }
      
      private function hasFrame(frameName:String) : Boolean
      {
         var label:FrameLabel = null;
         for each(label in mClip.currentLabels)
         {
            if(label.name == frameName)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function listenerUIEventOccured(eventIndex:int, eventName:String) : UIInteractionEvent
      {
         if(this.mComponentState == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.mIsToggle && eventIndex == LISTENER_EVENT_MOUSE_UP)
         {
            this.toggleComponentState();
         }
         if(eventIndex == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_DOWN);
         }
         if(eventIndex == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OVER);
         }
         if(eventIndex == LISTENER_EVENT_MOUSE_ROLLOUT)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OUT);
         }
         if(eventIndex == LISTENER_EVENT_MOUSE_ROLLOVER)
         {
            Mouse.cursor = this.mMouseCursor;
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OVER);
         }
         this.updateToolTips(eventIndex == LISTENER_EVENT_MOUSE_ROLLOVER);
         return super.listenerUIEventOccured(eventIndex,eventName);
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
      
      override public function setEnabled(newEnabled:Boolean, affectChilden:Boolean = false) : void
      {
         super.setEnabled(newEnabled,affectChilden);
      }
      
      override public function changeMovieClip(newClip:MovieClip) : void
      {
         super.changeMovieClip(newClip);
         var coorX:Number = mClip.x;
         var coorY:Number = mClip.y;
         var index:Number = mParentContainer.mClip.getChildIndex(mClip);
         if(this.mParentContainer)
         {
            mParentContainer.mClip.removeChild(mClip);
         }
         mClip = null;
         mClip = newClip;
         if(this.mParentContainer)
         {
            mParentContainer.mClip.addChildAt(mClip,index);
         }
         mClip.x = coorX;
         mClip.y = coorY;
         this.goToCorrectFrame();
      }
      
      override public function setVisibility(visibility:Boolean) : void
      {
         super.setVisibility(visibility);
         if(!mClip.visible)
         {
            this.updateToolTips(false);
         }
      }
      
      override public function onParentVisibilityChange(value:Boolean) : void
      {
         super.onParentVisibilityChange(value);
         if(!value)
         {
            this.updateToolTips(false);
         }
      }
      
      override public function set viewWidth(width:Number) : void
      {
         if(this.mButtonTween)
         {
            this.mButtonTween.stop();
         }
         super.viewWidth = width;
      }
      
      override public function set viewHeight(height:Number) : void
      {
         if(this.mButtonTween)
         {
            this.mButtonTween.stop();
         }
         super.viewHeight = height;
      }
   }
}
