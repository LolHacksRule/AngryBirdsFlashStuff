package §_-MN§
{
   import §_-6C§.§_-gt§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-rR§ extends §_-rD§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §_-5L§:String = "Deactive";
      
      public static const §_-K1§:String = "Disabled";
      
      public static const §_-k0§:String = "Out";
      
      public static const §_-01m§:String = "Over";
      
      public static const §_-vu§:String = "Up_Default";
      
      public static const §_-ai§:String = "Down";
      
      public static var §_-0A6§:Class;
      
      public static var §_-JR§:Boolean = true;
      
      public static const §_-RI§:String = "Tooltip";
      
      public static var §_-ls§:Boolean = true;
       
      
      public var §_-0-k§:String;
      
      public var §_-QH§:String;
      
      public var §_-Bc§:String;
      
      public var §_-BD§:MovieClip;
      
      public var §_-7V§:int = 6;
      
      private var §_-fF§:Boolean = false;
      
      private var §_-Sn§:String = "auto";
      
      public function §_-rR§(param1:XML, param2:§_-gt§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-0-k§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§_-QH§ = §_-vu§;
         this.§_-4b§();
         this.§_-0Br§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§_-fF§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§_-Sn§ = _loc5_;
         }
      }
      
      public static function §_-GT§() : void
      {
         §_-0A6§ = §_-Fc§.§_-YE§(§_-RI§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-k0§);
         }
      }
      
      public function §_-0Br§(param1:String) : void
      {
         this.§_-Bc§ = param1;
         if(this.§_-Bc§ && this.§_-Bc§.length == 0)
         {
            this.§_-Bc§ = null;
         }
         if(this.§_-Bc§)
         {
            if(§_-JR§)
            {
               §_-JR§ = false;
               §_-GT§();
            }
            this.§_-BD§ = new MovieClip();
            if(§_-0A6§)
            {
               this.§_-jo§();
            }
            else
            {
               this.§_-pC§();
            }
            this.§_-BD§.mouseEnabled = false;
            this.§_-BD§.mouseChildren = false;
            this.§_-BD§.visible = false;
            getParentView().addChild(this.§_-BD§);
         }
      }
      
      private function §_-pC§() : void
      {
         this.§_-BD§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-BD§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-BD§.addChildAt(_loc2_,0);
         this.§_-03U§(this.§_-Bc§);
      }
      
      private function §_-jo§() : void
      {
         this.§_-BD§ = new §_-0A6§();
         this.§_-rr§(this.§_-Bc§);
      }
      
      public function §_-rr§(param1:String) : void
      {
         this.§_-Bc§ = param1;
         if(§_-0A6§)
         {
            this.§_-cO§(param1);
         }
         else
         {
            this.§_-03U§(param1);
         }
      }
      
      private function §_-cO§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-BD§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-BD§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-Bc§;
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
      
      private function §_-03U§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-BD§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-Bc§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-BD§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-7V§,-this.§_-7V§,_loc2_.width + 2 * this.§_-7V§,_loc2_.height + 2 * this.§_-7V§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-7V§ / 2,-(this.§_-7V§ / 2),_loc2_.width + 1 * this.§_-7V§,_loc2_.height + 1 * this.§_-7V§);
      }
      
      private function §_-VS§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-BD§ || this.§_-Bc§ == null || this.§_-Bc§.length == 0)
         {
            return;
         }
         if(param1 && §_-ls§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-BD§.y = _loc2_.y - this.§_-BD§.height - this.§_-7V§;
            this.§_-BD§.x = _loc2_.x + mClip.width / 2 - this.§_-BD§.width / 2;
            _loc3_ = this.§_-BD§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-7V§)
            {
               this.§_-BD§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-7V§));
            }
            if(_loc3_.left < this.§_-7V§)
            {
               this.§_-BD§.x += 1 + (this.§_-7V§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-7V§)
            {
               this.§_-BD§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-7V§));
            }
            if(_loc3_.top < this.§_-7V§)
            {
               this.§_-BD§.y += mClip.height + this.§_-BD§.height + this.§_-7V§ * 2;
            }
            this.§_-BD§.visible = true;
         }
         else
         {
            this.§_-BD§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-BD§)
         {
            this.§_-Bc§ = null;
            while(this.§_-BD§.numChildren > 0)
            {
               this.§_-BD§.removeChildAt(0);
            }
            if(this.§_-BD§.parent)
            {
               this.§_-BD§.parent.removeChild(this.§_-BD§);
            }
            this.§_-BD§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-0-k§ = param1;
         this.§_-4b§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-QH§ = param1;
         this.§_-4b§();
      }
      
      public function §_-4b§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-0-k§ + "_" + this.§_-QH§,this.§_-0-k§ + "_" + §_-vu§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§_-QH§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §_-vu§);
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
         if(this.§_-0-k§ == §_-K1§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§_-fF§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§_-01v§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-ai§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-01m§);
         }
         if(param1 == §_-09A§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§_-k0§);
         }
         if(param1 == §_-0-Q§)
         {
            Mouse.cursor = this.§_-Sn§;
            this.setComponentVisualState(§_-01m§);
         }
         this.§_-VS§(param1 == §_-0-Q§);
      }
      
      public function §_-01v§() : void
      {
         if(this.§_-0-k§ == §_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§_-rR§.§_-5L§);
         }
         else if(this.§_-0-k§ == §_-rR§.§_-5L§)
         {
            this.setComponentState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
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
         this.§_-4b§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-VS§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-VS§(false);
         }
      }
   }
}
