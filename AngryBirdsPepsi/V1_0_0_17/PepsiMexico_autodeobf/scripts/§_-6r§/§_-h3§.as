package §_-6r§
{
   import §_-0S§.§_-z1§;
   import §_-F1§.§_-k4§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-h3§ extends §_-Tk§
   {
      
      public static const §_-1M§:String = "Active";
      
      public static const §_-sp§:String = "Deactive";
      
      public static const §_-By§:String = "Disabled";
      
      public static const §_-Wy§:String = "Out";
      
      public static const §_-pm§:String = "Over";
      
      public static const §_-ro§:String = "Up_Default";
      
      public static const §_-zQ§:String = "Down";
      
      public static var §_-7b§:Class;
      
      public static var §_-lk§:Boolean = true;
      
      public static const §_-e§:String = "Tooltip";
       
      
      public var §_-OG§:String;
      
      public var §_-SJ§:String;
      
      public var §_-Ls§:String;
      
      public var §_-VT§:MovieClip;
      
      public var §_-dt§:int = 6;
      
      public function §_-h3§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-OG§ = §_-1M§;
         this.§_-SJ§ = §_-ro§;
         this.§_-t8§();
         this.§_-xS§(param1.@Tooltip);
      }
      
      public static function §_-vr§() : void
      {
         §_-7b§ = §_-z1§.§_-tn§(§_-e§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-Wy§);
         }
      }
      
      public function §_-xS§(param1:String) : void
      {
         this.§_-Ls§ = param1;
         if(this.§_-Ls§ && this.§_-Ls§.length == 0)
         {
            this.§_-Ls§ = null;
         }
         if(this.§_-Ls§)
         {
            if(§_-lk§)
            {
               §_-lk§ = false;
               §_-vr§();
            }
            this.§_-VT§ = new MovieClip();
            if(§_-7b§)
            {
               this.§_-dp§();
            }
            else
            {
               this.§_-WC§();
            }
            this.§_-VT§.mouseEnabled = false;
            this.§_-VT§.mouseChildren = false;
            this.§_-VT§.visible = false;
            getParentView().addChild(this.§_-VT§);
         }
      }
      
      private function §_-WC§() : void
      {
         this.§_-VT§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-VT§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-VT§.addChildAt(_loc2_,0);
         this.§_-Z5§(this.§_-Ls§);
      }
      
      private function §_-dp§() : void
      {
         this.§_-VT§ = new §_-7b§();
         this.§_-GX§(this.§_-Ls§);
      }
      
      public function §_-GX§(param1:String) : void
      {
         this.§_-Ls§ = param1;
         if(§_-7b§)
         {
            this.§_-sI§(param1);
         }
         else
         {
            this.§_-Z5§(param1);
         }
      }
      
      private function §_-sI§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-VT§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-VT§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-Ls§;
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
      
      private function §_-Z5§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-VT§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-Ls§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-VT§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-dt§,-this.§_-dt§,_loc2_.width + 2 * this.§_-dt§,_loc2_.height + 2 * this.§_-dt§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-dt§ / 2,-(this.§_-dt§ / 2),_loc2_.width + 1 * this.§_-dt§,_loc2_.height + 1 * this.§_-dt§);
      }
      
      private function §_-3P§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-VT§ || this.§_-Ls§ == null || this.§_-Ls§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-VT§.y = _loc2_.y - this.§_-VT§.height + this.§_-dt§;
            this.§_-VT§.x = _loc2_.x + mClip.width / 2 - this.§_-VT§.width / 2;
            _loc3_ = this.§_-VT§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-dt§)
            {
               this.§_-VT§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-dt§));
            }
            if(_loc3_.left < this.§_-dt§)
            {
               this.§_-VT§.x += 1 + (this.§_-dt§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-dt§)
            {
               this.§_-VT§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-dt§));
            }
            if(_loc3_.top < this.§_-dt§)
            {
               this.§_-VT§.y += mClip.height + this.§_-VT§.height;
            }
            this.§_-VT§.visible = true;
         }
         else
         {
            this.§_-VT§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-VT§)
         {
            this.§_-Ls§ = null;
            while(this.§_-VT§.numChildren > 0)
            {
               this.§_-VT§.removeChildAt(0);
            }
            if(this.§_-VT§.parent)
            {
               this.§_-VT§.parent.removeChild(this.§_-VT§);
            }
            this.§_-VT§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-OG§ = param1;
         this.§_-t8§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-SJ§ = param1;
         this.§_-t8§();
      }
      
      public function §_-t8§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-OG§ + "_" + this.§_-SJ§,this.§_-OG§ + "_" + §_-ro§,§_-1M§ + "_" + this.§_-SJ§,§_-1M§ + "_" + §_-ro§);
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
         if(this.§_-OG§ == §_-By§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-zQ§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-pm§);
         }
         if(param1 == §_-6q§)
         {
            this.setComponentVisualState(§_-Wy§);
         }
         if(param1 == §_-Ek§)
         {
            this.setComponentVisualState(§_-pm§);
         }
         this.§_-3P§(param1 == §_-Ek§);
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
         this.§_-t8§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-3P§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-3P§(false);
         }
      }
   }
}
