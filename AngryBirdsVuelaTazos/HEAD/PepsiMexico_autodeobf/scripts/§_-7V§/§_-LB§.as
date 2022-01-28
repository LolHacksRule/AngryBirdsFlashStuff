package §_-7V§
{
   import §_-9k§.§_-X7§;
   import §_-Ll§.§_-4G§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-LB§ extends §_-C§
   {
      
      public static const §_-z6§:String = "Active";
      
      public static const §_-bI§:String = "Deactive";
      
      public static const §_-BL§:String = "Disabled";
      
      public static const §_-S7§:String = "Out";
      
      public static const §_-6G§:String = "Over";
      
      public static const §_-j3§:String = "Up_Default";
      
      public static const §_-J§:String = "Down";
      
      public static var §_-lh§:Class;
      
      public static var §_-7n§:Boolean = true;
      
      public static const §_-8j§:String = "Tooltip";
       
      
      public var §_-x-§:String;
      
      public var §_-WR§:String;
      
      public var §_-6f§:String;
      
      public var §_-0-0§:MovieClip;
      
      public var §_-SZ§:int = 6;
      
      public function §_-LB§(param1:XML, param2:§_-4G§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-x-§ = §_-z6§;
         this.§_-WR§ = §_-j3§;
         this.§_-2P§();
         this.§_-hZ§(param1.@Tooltip);
      }
      
      public static function §_-Li§() : void
      {
         §_-lh§ = §_-X7§.§_-IA§(§_-8j§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-S7§);
         }
      }
      
      public function §_-hZ§(param1:String) : void
      {
         this.§_-6f§ = param1;
         if(this.§_-6f§ && this.§_-6f§.length == 0)
         {
            this.§_-6f§ = null;
         }
         if(this.§_-6f§)
         {
            if(§_-7n§)
            {
               §_-7n§ = false;
               §_-Li§();
            }
            this.§_-0-0§ = new MovieClip();
            if(§_-lh§)
            {
               this.§_-OV§();
            }
            else
            {
               this.§_-Ww§();
            }
            this.§_-0-0§.mouseEnabled = false;
            this.§_-0-0§.mouseChildren = false;
            this.§_-0-0§.visible = false;
            getParentView().addChild(this.§_-0-0§);
         }
      }
      
      private function §_-Ww§() : void
      {
         this.§_-0-0§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-0-0§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-0-0§.addChildAt(_loc2_,0);
         this.§_-LY§(this.§_-6f§);
      }
      
      private function §_-OV§() : void
      {
         this.§_-0-0§ = new §_-lh§();
         this.§_-PC§(this.§_-6f§);
      }
      
      public function §_-PC§(param1:String) : void
      {
         this.§_-6f§ = param1;
         if(§_-lh§)
         {
            this.§_-7t§(param1);
         }
         else
         {
            this.§_-LY§(param1);
         }
      }
      
      private function §_-7t§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-0-0§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-0-0§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-6f§;
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
      
      private function §_-LY§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-0-0§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-6f§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-0-0§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-SZ§,-this.§_-SZ§,_loc2_.width + 2 * this.§_-SZ§,_loc2_.height + 2 * this.§_-SZ§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-SZ§ / 2,-(this.§_-SZ§ / 2),_loc2_.width + 1 * this.§_-SZ§,_loc2_.height + 1 * this.§_-SZ§);
      }
      
      private function §_-Ij§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-0-0§ || this.§_-6f§ == null || this.§_-6f§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-0-0§.y = _loc2_.y - this.§_-0-0§.height + this.§_-SZ§;
            this.§_-0-0§.x = _loc2_.x + mClip.width / 2 - this.§_-0-0§.width / 2;
            _loc3_ = this.§_-0-0§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-SZ§)
            {
               this.§_-0-0§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-SZ§));
            }
            if(_loc3_.left < this.§_-SZ§)
            {
               this.§_-0-0§.x += 1 + (this.§_-SZ§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-SZ§)
            {
               this.§_-0-0§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-SZ§));
            }
            if(_loc3_.top < this.§_-SZ§)
            {
               this.§_-0-0§.y += mClip.height + this.§_-0-0§.height;
            }
            this.§_-0-0§.visible = true;
         }
         else
         {
            this.§_-0-0§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-0-0§)
         {
            this.§_-6f§ = null;
            while(this.§_-0-0§.numChildren > 0)
            {
               this.§_-0-0§.removeChildAt(0);
            }
            if(this.§_-0-0§.parent)
            {
               this.§_-0-0§.parent.removeChild(this.§_-0-0§);
            }
            this.§_-0-0§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-x-§ = param1;
         this.§_-2P§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-WR§ = param1;
         this.§_-2P§();
      }
      
      public function §_-2P§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-x-§ + "_" + this.§_-WR§,this.§_-x-§ + "_" + §_-j3§,§_-z6§ + "_" + this.§_-WR§,§_-z6§ + "_" + §_-j3§);
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
         if(this.§_-x-§ == §_-BL§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-J§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-6G§);
         }
         if(param1 == §_-ya§)
         {
            this.setComponentVisualState(§_-S7§);
         }
         if(param1 == §_-V4§)
         {
            this.setComponentVisualState(§_-6G§);
         }
         this.§_-Ij§(param1 == §_-V4§);
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
         this.§_-2P§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-Ij§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-Ij§(false);
         }
      }
   }
}
