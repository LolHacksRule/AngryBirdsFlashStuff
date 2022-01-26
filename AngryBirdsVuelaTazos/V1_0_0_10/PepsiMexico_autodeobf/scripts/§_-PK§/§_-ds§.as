package §_-PK§
{
   import §_-E-§.§_-hw§;
   import §_-ec§.§_-GK§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-ds§ extends §_-ZR§
   {
      
      public static const §_-IX§:String = "Active";
      
      public static const §_-Wl§:String = "Deactive";
      
      public static const §_-Kv§:String = "Disabled";
      
      public static const §_-kx§:String = "Out";
      
      public static const §_-Tu§:String = "Over";
      
      public static const §_-TU§:String = "Up_Default";
      
      public static const §_-ww§:String = "Down";
      
      public static var §_-jW§:Class;
      
      public static var §else §:Boolean = true;
      
      public static const §_-Tp§:String = "Tooltip";
       
      
      public var §_-3b§:String;
      
      public var §_-BX§:String;
      
      public var §_-KZ§:String;
      
      public var §_-p6§:MovieClip;
      
      public var §_-0c§:int = 6;
      
      public function §_-ds§(param1:XML, param2:§_-hw§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-3b§ = §_-IX§;
         this.§_-BX§ = §_-TU§;
         this.§_-AD§();
         this.§_-Sj§(param1.@Tooltip);
      }
      
      public static function §_-CI§() : void
      {
         §_-jW§ = §_-GK§.§_-dR§(§_-Tp§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-kx§);
         }
      }
      
      public function §_-Sj§(param1:String) : void
      {
         this.§_-KZ§ = param1;
         if(this.§_-KZ§ && this.§_-KZ§.length == 0)
         {
            this.§_-KZ§ = null;
         }
         if(this.§_-KZ§)
         {
            if(§else §)
            {
               §else § = false;
               §_-CI§();
            }
            this.§_-p6§ = new MovieClip();
            if(§_-jW§)
            {
               this.§_-nv§();
            }
            else
            {
               this.§_-Uv§();
            }
            this.§_-p6§.mouseEnabled = false;
            this.§_-p6§.mouseChildren = false;
            this.§_-p6§.visible = false;
            getParentView().addChild(this.§_-p6§);
         }
      }
      
      private function §_-Uv§() : void
      {
         this.§_-p6§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-p6§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-p6§.addChildAt(_loc2_,0);
         this.§_-bM§(this.§_-KZ§);
      }
      
      private function §_-nv§() : void
      {
         this.§_-p6§ = new §_-jW§();
         this.§_-rP§(this.§_-KZ§);
      }
      
      public function §_-rP§(param1:String) : void
      {
         this.§_-KZ§ = param1;
         if(§_-jW§)
         {
            this.§_-EI§(param1);
         }
         else
         {
            this.§_-bM§(param1);
         }
      }
      
      private function §_-EI§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-p6§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-p6§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-KZ§;
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
      
      private function §_-bM§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-p6§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-KZ§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-p6§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-0c§,-this.§_-0c§,_loc2_.width + 2 * this.§_-0c§,_loc2_.height + 2 * this.§_-0c§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-0c§ / 2,-(this.§_-0c§ / 2),_loc2_.width + 1 * this.§_-0c§,_loc2_.height + 1 * this.§_-0c§);
      }
      
      private function §_-Y-§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-p6§ || this.§_-KZ§ == null || this.§_-KZ§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-p6§.y = _loc2_.y - this.§_-p6§.height + this.§_-0c§;
            this.§_-p6§.x = _loc2_.x + mClip.width / 2 - this.§_-p6§.width / 2;
            _loc3_ = this.§_-p6§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-0c§)
            {
               this.§_-p6§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-0c§));
            }
            if(_loc3_.left < this.§_-0c§)
            {
               this.§_-p6§.x += 1 + (this.§_-0c§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-0c§)
            {
               this.§_-p6§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-0c§));
            }
            if(_loc3_.top < this.§_-0c§)
            {
               this.§_-p6§.y += mClip.height + this.§_-p6§.height;
            }
            this.§_-p6§.visible = true;
         }
         else
         {
            this.§_-p6§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-p6§)
         {
            this.§_-KZ§ = null;
            while(this.§_-p6§.numChildren > 0)
            {
               this.§_-p6§.removeChildAt(0);
            }
            if(this.§_-p6§.parent)
            {
               this.§_-p6§.parent.removeChild(this.§_-p6§);
            }
            this.§_-p6§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-3b§ = param1;
         this.§_-AD§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-BX§ = param1;
         this.§_-AD§();
      }
      
      public function §_-AD§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-3b§ + "_" + this.§_-BX§,this.§_-3b§ + "_" + §_-TU§,§_-IX§ + "_" + this.§_-BX§,§_-IX§ + "_" + §_-TU§);
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
         if(this.§_-3b§ == §_-Kv§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-ww§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-Tu§);
         }
         if(param1 == §_-07§)
         {
            this.setComponentVisualState(§_-kx§);
         }
         if(param1 == §_-jr§)
         {
            this.setComponentVisualState(§_-Tu§);
         }
         this.§_-Y-§(param1 == §_-jr§);
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
         this.§_-AD§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-Y-§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-Y-§(false);
         }
      }
   }
}
