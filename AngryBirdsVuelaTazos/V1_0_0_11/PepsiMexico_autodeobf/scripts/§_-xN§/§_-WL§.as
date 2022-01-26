package §_-xN§
{
   import §_-TW§.§_-qq§;
   import §_-p7§.§_-WY§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-WL§ extends §_-fA§
   {
      
      public static const §_-1M§:String = "Active";
      
      public static const §_-t0§:String = "Deactive";
      
      public static const §_-Jv§:String = "Disabled";
      
      public static const §_-GA§:String = "Out";
      
      public static const §_-r5§:String = "Over";
      
      public static const §_-R7§:String = "Up_Default";
      
      public static const §_-As§:String = "Down";
      
      public static var §_-ks§:Class;
      
      public static var §_-T3§:Boolean = true;
      
      public static const §_-FE§:String = "Tooltip";
       
      
      public var §_-9k§:String;
      
      public var §_-u5§:String;
      
      public var §_-Bi§:String;
      
      public var §_-sE§:MovieClip;
      
      public var §_-BZ§:int = 6;
      
      public function §_-WL§(param1:XML, param2:§_-qq§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-9k§ = §_-1M§;
         this.§_-u5§ = §_-R7§;
         this.§_-jU§();
         this.§_-Zp§(param1.@Tooltip);
      }
      
      public static function §_-wj§() : void
      {
         §_-ks§ = §_-WY§.§_-fs§(§_-FE§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-GA§);
         }
      }
      
      public function §_-Zp§(param1:String) : void
      {
         this.§_-Bi§ = param1;
         if(this.§_-Bi§ && this.§_-Bi§.length == 0)
         {
            this.§_-Bi§ = null;
         }
         if(this.§_-Bi§)
         {
            if(§_-T3§)
            {
               §_-T3§ = false;
               §_-wj§();
            }
            this.§_-sE§ = new MovieClip();
            if(§_-ks§)
            {
               this.§_-Nt§();
            }
            else
            {
               this.§_-uB§();
            }
            this.§_-sE§.mouseEnabled = false;
            this.§_-sE§.mouseChildren = false;
            this.§_-sE§.visible = false;
            getParentView().addChild(this.§_-sE§);
         }
      }
      
      private function §_-uB§() : void
      {
         this.§_-sE§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-sE§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-sE§.addChildAt(_loc2_,0);
         this.§_-AC§(this.§_-Bi§);
      }
      
      private function §_-Nt§() : void
      {
         this.§_-sE§ = new §_-ks§();
         this.§_-u8§(this.§_-Bi§);
      }
      
      public function §_-u8§(param1:String) : void
      {
         this.§_-Bi§ = param1;
         if(§_-ks§)
         {
            this.§_-Lm§(param1);
         }
         else
         {
            this.§_-AC§(param1);
         }
      }
      
      private function §_-Lm§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-sE§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-sE§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-Bi§;
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
      
      private function §_-AC§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-sE§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-Bi§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-sE§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-BZ§,-this.§_-BZ§,_loc2_.width + 2 * this.§_-BZ§,_loc2_.height + 2 * this.§_-BZ§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-BZ§ / 2,-(this.§_-BZ§ / 2),_loc2_.width + 1 * this.§_-BZ§,_loc2_.height + 1 * this.§_-BZ§);
      }
      
      private function §_-u7§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-sE§ || this.§_-Bi§ == null || this.§_-Bi§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-sE§.y = _loc2_.y - this.§_-sE§.height + this.§_-BZ§;
            this.§_-sE§.x = _loc2_.x + mClip.width / 2 - this.§_-sE§.width / 2;
            _loc3_ = this.§_-sE§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-BZ§)
            {
               this.§_-sE§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-BZ§));
            }
            if(_loc3_.left < this.§_-BZ§)
            {
               this.§_-sE§.x += 1 + (this.§_-BZ§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-BZ§)
            {
               this.§_-sE§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-BZ§));
            }
            if(_loc3_.top < this.§_-BZ§)
            {
               this.§_-sE§.y += mClip.height + this.§_-sE§.height;
            }
            this.§_-sE§.visible = true;
         }
         else
         {
            this.§_-sE§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-sE§)
         {
            this.§_-Bi§ = null;
            while(this.§_-sE§.numChildren > 0)
            {
               this.§_-sE§.removeChildAt(0);
            }
            if(this.§_-sE§.parent)
            {
               this.§_-sE§.parent.removeChild(this.§_-sE§);
            }
            this.§_-sE§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-9k§ = param1;
         this.§_-jU§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-u5§ = param1;
         this.§_-jU§();
      }
      
      public function §_-jU§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-9k§ + "_" + this.§_-u5§,this.§_-9k§ + "_" + §_-R7§,§_-1M§ + "_" + this.§_-u5§,§_-1M§ + "_" + §_-R7§);
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
         if(this.§_-9k§ == §_-Jv§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-As§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-r5§);
         }
         if(param1 == §_-Yg§)
         {
            this.setComponentVisualState(§_-GA§);
         }
         if(param1 == §_-DH§)
         {
            this.setComponentVisualState(§_-r5§);
         }
         this.§_-u7§(param1 == §_-DH§);
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
         this.§_-jU§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-u7§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-u7§(false);
         }
      }
   }
}
