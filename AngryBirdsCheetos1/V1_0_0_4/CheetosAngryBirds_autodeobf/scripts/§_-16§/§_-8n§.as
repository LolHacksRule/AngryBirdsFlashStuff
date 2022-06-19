package §_-16§
{
   import §_-2B§.§_-wA§;
   import §_-Eg§.§_-Up§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-8n§ extends §_-MF§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §_-qC§:String = "Deactive";
      
      public static const §_-uX§:String = "Disabled";
      
      public static const §_-ns§:String = "Out";
      
      public static const §_-rC§:String = "Over";
      
      public static const §_-KP§:String = "Up_Default";
      
      public static const §_-7a§:String = "Down";
      
      public static var §_-dg§:Class;
      
      public static var §_-CR§:Boolean = true;
      
      public static const §_-QD§:String = "Tooltip";
       
      
      public var §_-Uv§:String;
      
      public var §_-Ux§:String;
      
      public var §_-rV§:String;
      
      public var §_-07§:MovieClip;
      
      public var §_-RN§:int = 6;
      
      public function §_-8n§(param1:XML, param2:§_-Up§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-Uv§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§_-Ux§ = §_-KP§;
         this.§_-i-§();
         this.§_-CG§(param1.@Tooltip);
      }
      
      public static function §_-nd§() : void
      {
         §_-dg§ = §_-wA§.§_-Mh§(§_-QD§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-ns§);
         }
      }
      
      public function §_-CG§(param1:String) : void
      {
         this.§_-rV§ = param1;
         if(this.§_-rV§ && this.§_-rV§.length == 0)
         {
            this.§_-rV§ = null;
         }
         if(this.§_-rV§)
         {
            if(§_-CR§)
            {
               §_-CR§ = false;
               §_-nd§();
            }
            this.§_-07§ = new MovieClip();
            if(§_-dg§)
            {
               this.§_-0e§();
            }
            else
            {
               this.§_-jm§();
            }
            this.§_-07§.mouseEnabled = false;
            this.§_-07§.mouseChildren = false;
            this.§_-07§.visible = false;
            getParentView().addChild(this.§_-07§);
         }
      }
      
      private function §_-jm§() : void
      {
         this.§_-07§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-07§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-07§.addChildAt(_loc2_,0);
         this.§_-R5§(this.§_-rV§);
      }
      
      private function §_-0e§() : void
      {
         this.§_-07§ = new §_-dg§();
         this.§_-A1§(this.§_-rV§);
      }
      
      public function §_-A1§(param1:String) : void
      {
         this.§_-rV§ = param1;
         if(§_-dg§)
         {
            this.§_-K5§(param1);
         }
         else
         {
            this.§_-R5§(param1);
         }
      }
      
      private function §_-K5§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-07§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-07§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-rV§;
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
      
      private function §_-R5§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-07§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-rV§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-07§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-RN§,-this.§_-RN§,_loc2_.width + 2 * this.§_-RN§,_loc2_.height + 2 * this.§_-RN§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-RN§ / 2,-(this.§_-RN§ / 2),_loc2_.width + 1 * this.§_-RN§,_loc2_.height + 1 * this.§_-RN§);
      }
      
      private function §_-jt§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-07§ || this.§_-rV§ == null || this.§_-rV§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-07§.y = _loc2_.y - this.§_-07§.height + this.§_-RN§;
            this.§_-07§.x = _loc2_.x + mClip.width / 2 - this.§_-07§.width / 2;
            _loc3_ = this.§_-07§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-RN§)
            {
               this.§_-07§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-RN§));
            }
            if(_loc3_.left < this.§_-RN§)
            {
               this.§_-07§.x += 1 + (this.§_-RN§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-RN§)
            {
               this.§_-07§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-RN§));
            }
            if(_loc3_.top < this.§_-RN§)
            {
               this.§_-07§.y += mClip.height + this.§_-07§.height;
            }
            this.§_-07§.visible = true;
         }
         else
         {
            this.§_-07§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-07§)
         {
            this.§_-rV§ = null;
            while(this.§_-07§.numChildren > 0)
            {
               this.§_-07§.removeChildAt(0);
            }
            if(this.§_-07§.parent)
            {
               this.§_-07§.parent.removeChild(this.§_-07§);
            }
            this.§_-07§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-Uv§ = param1;
         this.§_-i-§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-Ux§ = param1;
         this.§_-i-§();
      }
      
      public function §_-i-§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-Uv§ + "_" + this.§_-Ux§,this.§_-Uv§ + "_" + §_-KP§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§_-Ux§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §_-KP§);
         var _loc2_:int = 0;
         for(; _loc2_ < _loc1_.length; _loc2_++)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
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
         if(this.§_-Uv§ == §_-uX§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-7a§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-rC§);
         }
         if(param1 == §_-Gu§)
         {
            this.setComponentVisualState(§_-ns§);
         }
         if(param1 == §_-jw§)
         {
            this.setComponentVisualState(§_-rC§);
         }
         this.§_-jt§(param1 == §_-jw§);
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
         this.§_-i-§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-jt§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-jt§(false);
         }
      }
   }
}
