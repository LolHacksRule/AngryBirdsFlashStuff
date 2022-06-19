package §_-9J§
{
   import §_-3-§.§_-ki§;
   import §_-ES§.§_-L8§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-DA§ extends §_-mr§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §_-MR§:String = "Deactive";
      
      public static const §_-La§:String = "Disabled";
      
      public static const §_-mf§:String = "Out";
      
      public static const §_-2k§:String = "Over";
      
      public static const §_-AS§:String = "Up_Default";
      
      public static const §_-tt§:String = "Down";
      
      public static var §_-zK§:Class;
      
      public static var §_-vH§:Boolean = true;
      
      public static const §_-NQ§:String = "Tooltip";
       
      
      public var §_-Mt§:String;
      
      public var §_-SO§:String;
      
      public var §_-Ys§:String;
      
      public var §_-RV§:MovieClip;
      
      public var §_-n1§:int = 6;
      
      public function §_-DA§(param1:XML, param2:§_-L8§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-Mt§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§_-SO§ = §_-AS§;
         this.§_-f6§();
         this.§_-uE§(param1.@Tooltip);
      }
      
      public static function §_-004§() : void
      {
         §_-zK§ = §_-ki§.§_-pB§(§_-NQ§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-mf§);
         }
      }
      
      public function §_-uE§(param1:String) : void
      {
         this.§_-Ys§ = param1;
         if(this.§_-Ys§ && this.§_-Ys§.length == 0)
         {
            this.§_-Ys§ = null;
         }
         if(this.§_-Ys§)
         {
            if(§_-vH§)
            {
               §_-vH§ = false;
               §_-004§();
            }
            this.§_-RV§ = new MovieClip();
            if(§_-zK§)
            {
               this.§_-Fr§();
            }
            else
            {
               this.§_-9v§();
            }
            this.§_-RV§.mouseEnabled = false;
            this.§_-RV§.mouseChildren = false;
            this.§_-RV§.visible = false;
            getParentView().addChild(this.§_-RV§);
         }
      }
      
      private function §_-9v§() : void
      {
         this.§_-RV§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-RV§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-RV§.addChildAt(_loc2_,0);
         this.§_-Fl§(this.§_-Ys§);
      }
      
      private function §_-Fr§() : void
      {
         this.§_-RV§ = new §_-zK§();
         this.§_-qC§(this.§_-Ys§);
      }
      
      public function §_-qC§(param1:String) : void
      {
         this.§_-Ys§ = param1;
         if(§_-zK§)
         {
            this.§_-0-M§(param1);
         }
         else
         {
            this.§_-Fl§(param1);
         }
      }
      
      private function §_-0-M§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-RV§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-RV§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-Ys§;
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
      
      private function §_-Fl§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-RV§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-Ys§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-RV§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-n1§,-this.§_-n1§,_loc2_.width + 2 * this.§_-n1§,_loc2_.height + 2 * this.§_-n1§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-n1§ / 2,-(this.§_-n1§ / 2),_loc2_.width + 1 * this.§_-n1§,_loc2_.height + 1 * this.§_-n1§);
      }
      
      private function §_-9Y§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-RV§ || this.§_-Ys§ == null || this.§_-Ys§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-RV§.y = _loc2_.y - this.§_-RV§.height + this.§_-n1§;
            this.§_-RV§.x = _loc2_.x + mClip.width / 2 - this.§_-RV§.width / 2;
            _loc3_ = this.§_-RV§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-n1§)
            {
               this.§_-RV§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-n1§));
            }
            if(_loc3_.left < this.§_-n1§)
            {
               this.§_-RV§.x += 1 + (this.§_-n1§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-n1§)
            {
               this.§_-RV§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-n1§));
            }
            if(_loc3_.top < this.§_-n1§)
            {
               this.§_-RV§.y += mClip.height + this.§_-RV§.height;
            }
            this.§_-RV§.visible = true;
         }
         else
         {
            this.§_-RV§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-RV§)
         {
            this.§_-Ys§ = null;
            while(this.§_-RV§.numChildren > 0)
            {
               this.§_-RV§.removeChildAt(0);
            }
            if(this.§_-RV§.parent)
            {
               this.§_-RV§.parent.removeChild(this.§_-RV§);
            }
            this.§_-RV§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-Mt§ = param1;
         this.§_-f6§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-SO§ = param1;
         this.§_-f6§();
      }
      
      public function §_-f6§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-Mt§ + "_" + this.§_-SO§,this.§_-Mt§ + "_" + §_-AS§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§_-SO§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §_-AS§);
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
         if(this.§_-Mt§ == §_-La§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-tt§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-2k§);
         }
         if(param1 == §_-md§)
         {
            this.setComponentVisualState(§_-mf§);
         }
         if(param1 == §_-QP§)
         {
            this.setComponentVisualState(§_-2k§);
         }
         this.§_-9Y§(param1 == §_-QP§);
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
         this.§_-f6§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-9Y§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-9Y§(false);
         }
      }
   }
}
