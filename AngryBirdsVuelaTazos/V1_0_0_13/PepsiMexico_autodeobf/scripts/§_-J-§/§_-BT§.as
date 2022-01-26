package §_-J-§
{
   import §_-58§.§_-WC§;
   import §_-Ay§.§_-nw§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-BT§ extends §_-9C§
   {
      
      public static const §_-Gc§:String = "Active";
      
      public static const §_-Oe§:String = "Deactive";
      
      public static const §_-aM§:String = "Disabled";
      
      public static const §_-si§:String = "Out";
      
      public static const §_-vB§:String = "Over";
      
      public static const §_-bT§:String = "Up_Default";
      
      public static const §_-gO§:String = "Down";
      
      public static var §_-Vj§:Class;
      
      public static var §_-Z0§:Boolean = true;
      
      public static const §_-62§:String = "Tooltip";
       
      
      public var §_-rZ§:String;
      
      public var §_-Ad§:String;
      
      public var §_-cy§:String;
      
      public var §_-X4§:MovieClip;
      
      public var §_-Pn§:int = 6;
      
      public function §_-BT§(param1:XML, param2:§_-WC§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-rZ§ = §_-Gc§;
         this.§_-Ad§ = §_-bT§;
         this.§_-o1§();
         this.§_-X0§(param1.@Tooltip);
      }
      
      public static function §_-Cg§() : void
      {
         §_-Vj§ = §_-nw§.§_-Xm§(§_-62§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-si§);
         }
      }
      
      public function §_-X0§(param1:String) : void
      {
         this.§_-cy§ = param1;
         if(this.§_-cy§ && this.§_-cy§.length == 0)
         {
            this.§_-cy§ = null;
         }
         if(this.§_-cy§)
         {
            if(§_-Z0§)
            {
               §_-Z0§ = false;
               §_-Cg§();
            }
            this.§_-X4§ = new MovieClip();
            if(§_-Vj§)
            {
               this.§_-tX§();
            }
            else
            {
               this.§_-rD§();
            }
            this.§_-X4§.mouseEnabled = false;
            this.§_-X4§.mouseChildren = false;
            this.§_-X4§.visible = false;
            getParentView().addChild(this.§_-X4§);
         }
      }
      
      private function §_-rD§() : void
      {
         this.§_-X4§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-X4§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-X4§.addChildAt(_loc2_,0);
         this.§_-cW§(this.§_-cy§);
      }
      
      private function §_-tX§() : void
      {
         this.§_-X4§ = new §_-Vj§();
         this.§_-Gp§(this.§_-cy§);
      }
      
      public function §_-Gp§(param1:String) : void
      {
         this.§_-cy§ = param1;
         if(§_-Vj§)
         {
            this.§_-5C§(param1);
         }
         else
         {
            this.§_-cW§(param1);
         }
      }
      
      private function §_-5C§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-X4§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-X4§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-cy§;
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
      
      private function §_-cW§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-X4§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-cy§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-X4§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-Pn§,-this.§_-Pn§,_loc2_.width + 2 * this.§_-Pn§,_loc2_.height + 2 * this.§_-Pn§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-Pn§ / 2,-(this.§_-Pn§ / 2),_loc2_.width + 1 * this.§_-Pn§,_loc2_.height + 1 * this.§_-Pn§);
      }
      
      private function §_-06§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-X4§ || this.§_-cy§ == null || this.§_-cy§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-X4§.y = _loc2_.y - this.§_-X4§.height + this.§_-Pn§;
            this.§_-X4§.x = _loc2_.x + mClip.width / 2 - this.§_-X4§.width / 2;
            _loc3_ = this.§_-X4§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-Pn§)
            {
               this.§_-X4§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-Pn§));
            }
            if(_loc3_.left < this.§_-Pn§)
            {
               this.§_-X4§.x += 1 + (this.§_-Pn§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-Pn§)
            {
               this.§_-X4§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-Pn§));
            }
            if(_loc3_.top < this.§_-Pn§)
            {
               this.§_-X4§.y += mClip.height + this.§_-X4§.height;
            }
            this.§_-X4§.visible = true;
         }
         else
         {
            this.§_-X4§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-X4§)
         {
            this.§_-cy§ = null;
            while(this.§_-X4§.numChildren > 0)
            {
               this.§_-X4§.removeChildAt(0);
            }
            if(this.§_-X4§.parent)
            {
               this.§_-X4§.parent.removeChild(this.§_-X4§);
            }
            this.§_-X4§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-rZ§ = param1;
         this.§_-o1§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-Ad§ = param1;
         this.§_-o1§();
      }
      
      public function §_-o1§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-rZ§ + "_" + this.§_-Ad§,this.§_-rZ§ + "_" + §_-bT§,§_-Gc§ + "_" + this.§_-Ad§,§_-Gc§ + "_" + §_-bT§);
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
         if(this.§_-rZ§ == §_-aM§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-gO§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-vB§);
         }
         if(param1 == §_-CK§)
         {
            this.setComponentVisualState(§_-si§);
         }
         if(param1 == §_-ZE§)
         {
            this.setComponentVisualState(§_-vB§);
         }
         this.§_-06§(param1 == §_-ZE§);
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
         this.§_-o1§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-06§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-06§(false);
         }
      }
   }
}
