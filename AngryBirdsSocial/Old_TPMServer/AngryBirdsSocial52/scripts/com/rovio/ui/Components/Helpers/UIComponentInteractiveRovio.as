package com.rovio.ui.Components.Helpers
{
   import com.rovio.ui.Components.UIContainerRovio;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
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
       
      
      public var mComponentState:String;
      
      public var mVisualState:String;
      
      public var mTooltipText:String;
      
      public var mTooltipSprite:Sprite;
      
      public var MARGIN_TOOLTIP:int = 6;
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.mComponentState = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.mVisualState = VISUAL_STATE_MOUSE_UP_DEFULT;
         this.goToCorrectFrame();
         this.createTooltip(param1.@Tooltip);
         this.mTooltipText = param1.@Tooltip;
         if(this.mTooltipText && this.mTooltipText.length == 0)
         {
            this.mTooltipText = null;
         }
      }
      
      public function createTooltip(param1:String) : void
      {
         var _loc2_:TextField = null;
         var _loc3_:TextFormat = null;
         var _loc4_:Shape = null;
         var _loc5_:Rectangle = null;
         this.mTooltipText = param1;
         if(this.mTooltipText && this.mTooltipText.length == 0)
         {
            this.mTooltipText = null;
         }
         if(this.mTooltipText)
         {
            this.mTooltipSprite = new Sprite();
            _loc2_ = new TextField();
            _loc3_ = _loc2_.defaultTextFormat;
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
            this.mTooltipSprite.addChild(_loc2_);
            (_loc4_ = new Shape()).graphics.clear();
            _loc4_.graphics.lineStyle(1);
            _loc4_.graphics.beginFill(0,1);
            _loc4_.graphics.drawRect(-this.MARGIN_TOOLTIP,-this.MARGIN_TOOLTIP,_loc2_.width + 2 * this.MARGIN_TOOLTIP,_loc2_.height + 2 * this.MARGIN_TOOLTIP);
            _loc4_.graphics.beginFill(16777215,1);
            _loc4_.graphics.drawRect(-this.MARGIN_TOOLTIP / 2,-(this.MARGIN_TOOLTIP / 2),_loc2_.width + 1 * this.MARGIN_TOOLTIP,_loc2_.height + 1 * this.MARGIN_TOOLTIP);
            this.mTooltipSprite.addChildAt(_loc4_,0);
            this.mTooltipSprite.mouseEnabled = false;
            this.mTooltipSprite.mouseChildren = false;
            this.mTooltipSprite.visible = false;
            getParentView().addChild(this.mTooltipSprite);
            _loc5_ = mClip.getRect(getParentView());
            this.mTooltipSprite.y = _loc5_.y - this.mTooltipSprite.height + this.MARGIN_TOOLTIP;
            this.mTooltipSprite.x = _loc5_.x + mClip.width / 2 - this.mTooltipSprite.width / 2;
         }
      }
      
      public function updateToolTips(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         if(!this.mTooltipSprite)
         {
            return;
         }
         if(param1)
         {
            this.mTooltipSprite.visible = true;
            _loc2_ = this.mTooltipSprite.getRect(stage);
            if(_loc2_.right > stage.stageWidth - this.MARGIN_TOOLTIP)
            {
               this.mTooltipSprite.x -= 1 + (_loc2_.right - (stage.stageWidth - this.MARGIN_TOOLTIP));
            }
            if(_loc2_.left < this.MARGIN_TOOLTIP)
            {
               this.mTooltipSprite.x += 1 + (this.MARGIN_TOOLTIP - _loc2_.left);
            }
            if(_loc2_.bottom > stage.stageHeight - this.MARGIN_TOOLTIP)
            {
               this.mTooltipSprite.y -= 1 + (_loc2_.bottom - (stage.stageHeight - this.MARGIN_TOOLTIP));
            }
            if(_loc2_.top < this.MARGIN_TOOLTIP)
            {
               this.mTooltipSprite.y += mClip.height + this.mTooltipSprite.height;
            }
         }
         else
         {
            this.mTooltipSprite.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.mTooltipSprite)
         {
            this.mTooltipText = null;
            while(this.mTooltipSprite.numChildren > 0)
            {
               this.mTooltipSprite.removeChildAt(0);
            }
            if(this.mTooltipSprite.parent)
            {
               this.mTooltipSprite.parent.removeChild(this.mTooltipSprite);
            }
            this.mTooltipSprite = null;
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
   }
}
