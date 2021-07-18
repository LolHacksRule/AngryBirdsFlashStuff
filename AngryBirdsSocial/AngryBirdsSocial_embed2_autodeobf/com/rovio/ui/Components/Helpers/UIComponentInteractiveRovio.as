package com.rovio.ui.Components.Helpers
{
   import com.rovio.assets.AssetCache;
   import com.rovio.ui.Components.UIContainerRovio;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
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
       
      
      public var mComponentState:String;
      
      public var mVisualState:String;
      
      public var mTooltipText:String;
      
      public var mTooltipMovieClip:MovieClip;
      
      public var MARGIN_TOOLTIP:int = 6;
      
      public function UIComponentInteractiveRovio(data:XML, parentContainer:UIContainerRovio, clip:MovieClip = null)
      {
         super(data,parentContainer,clip);
         this.mComponentState = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.mVisualState = VISUAL_STATE_MOUSE_UP_DEFULT;
         this.goToCorrectFrame();
         this.createTooltip(data.@Tooltip);
      }
      
      public static function setTooltipMovieClipClass() : void
      {
         smTooltipClipClass = AssetCache.getAssetFromCache(TOOLTIP_ASSET_NAME);
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
         textField.width = textField.textWidth * 1.1;
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
         dft.align = TextAlign.CENTER;
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
         if(showTooltip)
         {
            componentRect = mClip.getRect(getParentView());
            this.mTooltipMovieClip.y = componentRect.y - this.mTooltipMovieClip.height + this.MARGIN_TOOLTIP;
            this.mTooltipMovieClip.x = componentRect.x + mClip.width / 2 - this.mTooltipMovieClip.width / 2;
            tooltipRect = this.mTooltipMovieClip.getRect(stage);
            if(tooltipRect.right > stage.stageWidth - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x -= 1 + (tooltipRect.right - (stage.stageWidth - this.MARGIN_TOOLTIP));
            }
            if(tooltipRect.left < this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x += 1 + (this.MARGIN_TOOLTIP - tooltipRect.left);
            }
            if(tooltipRect.bottom > stage.stageHeight - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.y -= 1 + (tooltipRect.bottom - (stage.stageHeight - this.MARGIN_TOOLTIP));
            }
            if(tooltipRect.top < this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.y += mClip.height + this.mTooltipMovieClip.height;
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
         if((this.mVisualState == VISUAL_STATE_MOUSE_DOWN || this.mVisualState == VISUAL_STATE_MOUSE_ROLL_OVER) && newState == VISUAL_STATE_MOUSE_ROLL_OVER)
         {
            return;
         }
         this.mVisualState = newState;
         this.goToCorrectFrame();
      }
      
      public function goToCorrectFrame() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var frameName:Array = new Array(this.mComponentState + "_" + this.mVisualState,this.mComponentState + "_" + VISUAL_STATE_MOUSE_UP_DEFULT,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.mVisualState,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + VISUAL_STATE_MOUSE_UP_DEFULT);
         for(var i:int = 0; i < frameName.length; i++)
         {
            try
            {
               mClip.gotoAndStop(frameName[i] as String);
               if(mClip.numChildren > 0)
               {
                  return;
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      override public function listenerEventOccured(eventIndex:int, eventName:String) : void
      {
         super.listenerEventOccured(eventIndex,eventName);
         if(eventIndex == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_DOWN);
         }
         if(eventIndex == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_UP_DEFULT);
         }
         if(eventIndex == LISTENER_EVENT_MOUSE_ROLLOUT)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OUT);
         }
         if(eventIndex == LISTENER_EVENT_MOUSE_ROLLOVER)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OVER);
         }
         this.updateToolTips(eventIndex == LISTENER_EVENT_MOUSE_ROLLOVER);
      }
      
      override public function setEnabled(newEnabled:Boolean) : void
      {
         super.setEnabled(newEnabled);
      }
      
      override public function changeMovieClip(newClip:MovieClip) : void
      {
         super.changeMovieClip(newClip);
         var coorX:Number = mClip.x;
         var coorY:Number = mClip.y;
         removeChild(mClip);
         mClip = null;
         mClip = newClip;
         addChildAt(mClip,0);
         mClip.x = coorX;
         mClip.y = coorY;
         this.goToCorrectFrame();
      }
      
      override public function setVisibility(visibility:Boolean) : void
      {
         super.setVisibility(visibility);
         if(!visible)
         {
            this.updateToolTips(false);
         }
      }
   }
}
