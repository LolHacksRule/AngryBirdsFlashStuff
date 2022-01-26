package §_-Ys§
{
   import §_-of§.§_-H4§;
   import §_-vA§.§_-XO§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-TM§ extends §_-7o§
   {
      
      public static const §_-Y2§:String = "Active";
      
      public static const §_-vF§:String = "Deactive";
      
      public static const §_-wD§:String = "Disabled";
      
      public static const §_-VJ§:String = "Out";
      
      public static const §_-9b§:String = "Over";
      
      public static const §_-az§:String = "Up_Default";
      
      public static const §_-9Z§:String = "Down";
      
      public static var §_-kP§:Class;
      
      public static var §_-2O§:Boolean = true;
      
      public static const §_-AJ§:String = "Tooltip";
       
      
      public var §_-RY§:String;
      
      public var §_-EC§:String;
      
      public var §_-50§:String;
      
      public var §_-A5§:MovieClip;
      
      public var §_-w9§:int = 6;
      
      public function §_-TM§(param1:XML, param2:§_-H4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-RY§ = §_-Y2§;
         this.§_-EC§ = §_-az§;
         this.§_-vx§();
         this.§_-BR§(param1.@Tooltip);
      }
      
      public static function §_-IO§() : void
      {
         §_-kP§ = §_-XO§.§_-O3§(§_-AJ§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-VJ§);
         }
      }
      
      public function §_-BR§(param1:String) : void
      {
         this.§_-50§ = param1;
         if(this.§_-50§ && this.§_-50§.length == 0)
         {
            this.§_-50§ = null;
         }
         if(this.§_-50§)
         {
            if(§_-2O§)
            {
               §_-2O§ = false;
               §_-IO§();
            }
            this.§_-A5§ = new MovieClip();
            if(§_-kP§)
            {
               this.§_-5o§();
            }
            else
            {
               this.§_-fD§();
            }
            this.§_-A5§.mouseEnabled = false;
            this.§_-A5§.mouseChildren = false;
            this.§_-A5§.visible = false;
            getParentView().addChild(this.§_-A5§);
         }
      }
      
      private function §_-fD§() : void
      {
         this.§_-A5§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-A5§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-A5§.addChildAt(_loc2_,0);
         this.§_-ul§(this.§_-50§);
      }
      
      private function §_-5o§() : void
      {
         this.§_-A5§ = new §_-kP§();
         this.§_-l1§(this.§_-50§);
      }
      
      public function §_-l1§(param1:String) : void
      {
         this.§_-50§ = param1;
         if(§_-kP§)
         {
            this.§_-D7§(param1);
         }
         else
         {
            this.§_-ul§(param1);
         }
      }
      
      private function §_-D7§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-A5§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-A5§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-50§;
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
      
      private function §_-ul§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-A5§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-50§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-A5§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-w9§,-this.§_-w9§,_loc2_.width + 2 * this.§_-w9§,_loc2_.height + 2 * this.§_-w9§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-w9§ / 2,-(this.§_-w9§ / 2),_loc2_.width + 1 * this.§_-w9§,_loc2_.height + 1 * this.§_-w9§);
      }
      
      private function §_-PG§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-A5§ || this.§_-50§ == null || this.§_-50§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-A5§.y = _loc2_.y - this.§_-A5§.height + this.§_-w9§;
            this.§_-A5§.x = _loc2_.x + mClip.width / 2 - this.§_-A5§.width / 2;
            _loc3_ = this.§_-A5§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-w9§)
            {
               this.§_-A5§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-w9§));
            }
            if(_loc3_.left < this.§_-w9§)
            {
               this.§_-A5§.x += 1 + (this.§_-w9§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-w9§)
            {
               this.§_-A5§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-w9§));
            }
            if(_loc3_.top < this.§_-w9§)
            {
               this.§_-A5§.y += mClip.height + this.§_-A5§.height;
            }
            this.§_-A5§.visible = true;
         }
         else
         {
            this.§_-A5§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-A5§)
         {
            this.§_-50§ = null;
            while(this.§_-A5§.numChildren > 0)
            {
               this.§_-A5§.removeChildAt(0);
            }
            if(this.§_-A5§.parent)
            {
               this.§_-A5§.parent.removeChild(this.§_-A5§);
            }
            this.§_-A5§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-RY§ = param1;
         this.§_-vx§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-EC§ = param1;
         this.§_-vx§();
      }
      
      public function §_-vx§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-RY§ + "_" + this.§_-EC§,this.§_-RY§ + "_" + §_-az§,§_-Y2§ + "_" + this.§_-EC§,§_-Y2§ + "_" + §_-az§);
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
         if(this.§_-RY§ == §_-wD§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-9Z§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-9b§);
         }
         if(param1 == §_-UA§)
         {
            this.setComponentVisualState(§_-VJ§);
         }
         if(param1 == §_-GB§)
         {
            this.setComponentVisualState(§_-9b§);
         }
         this.§_-PG§(param1 == §_-GB§);
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
         this.§_-vx§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-PG§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-PG§(false);
         }
      }
   }
}
