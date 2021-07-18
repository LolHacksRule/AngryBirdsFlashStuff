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
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.mComponentState = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.mVisualState = VISUAL_STATE_MOUSE_UP_DEFULT;
         this.goToCorrectFrame();
         this.createTooltip(param1.@Tooltip);
      }
      
      public static function setTooltipMovieClipClass() : void
      {
         smTooltipClipClass = AssetCache.getAssetFromCache(TOOLTIP_ASSET_NAME);
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
         _loc2_.width = _loc2_.textWidth * 1.1;
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
         _loc3_.align = TextAlign.CENTER;
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
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.mTooltipMovieClip.y = _loc2_.y - this.mTooltipMovieClip.height + this.MARGIN_TOOLTIP;
            this.mTooltipMovieClip.x = _loc2_.x + mClip.width / 2 - this.mTooltipMovieClip.width / 2;
            _loc3_ = this.mTooltipMovieClip.getRect(stage);
            if(_loc3_.right > stage.stageWidth - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x -= 1 + (_loc3_.right - (stage.stageWidth - this.MARGIN_TOOLTIP));
            }
            if(_loc3_.left < this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.x += 1 + (this.MARGIN_TOOLTIP - _loc3_.left);
            }
            if(_loc3_.bottom > stage.stageHeight - this.MARGIN_TOOLTIP)
            {
               this.mTooltipMovieClip.y -= 1 + (_loc3_.bottom - (stage.stageHeight - this.MARGIN_TOOLTIP));
            }
            if(_loc3_.top < this.MARGIN_TOOLTIP)
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
      
      public function setComponentState(param1:String) : void
      {
         this.mComponentState = param1;
         this.goToCorrectFrame();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if((this.mVisualState == VISUAL_STATE_MOUSE_DOWN || this.mVisualState == VISUAL_STATE_MOUSE_ROLL_OVER) && param1 == VISUAL_STATE_MOUSE_ROLL_OVER)
         {
            return;
         }
         this.mVisualState = param1;
         this.goToCorrectFrame();
      }
      
      public function goToCorrectFrame() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var frameName:Array = new Array(this.mComponentState + "_" + this.mVisualState,this.mComponentState + "_" + VISUAL_STATE_MOUSE_UP_DEFULT,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.mVisualState,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + VISUAL_STATE_MOUSE_UP_DEFULT);
         var i:int = 0;
         for(; i < frameName.length; i++)
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
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_DOWN);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_UP_DEFULT);
         }
         if(param1 == LISTENER_EVENT_MOUSE_ROLLOUT)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OUT);
         }
         if(param1 == LISTENER_EVENT_MOUSE_ROLLOVER)
         {
            this.setComponentVisualState(VISUAL_STATE_MOUSE_ROLL_OVER);
         }
         this.updateToolTips(param1 == LISTENER_EVENT_MOUSE_ROLLOVER);
      }
      
      override public function setEnabled(param1:Boolean) : void
      {
         super.setEnabled(param1);
      }
      
      override public function changeMovieClip(param1:MovieClip) : void
      {
         super.changeMovieClip(param1);
         var _loc2_:Number = mClip.x;
         var _loc3_:Number = mClip.y;
         removeChild(mClip);
         mClip = null;
         mClip = param1;
         addChildAt(mClip,0);
         mClip.x = _loc2_;
         mClip.y = _loc3_;
         this.goToCorrectFrame();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!visible)
         {
            this.updateToolTips(false);
         }
      }
   }
}
