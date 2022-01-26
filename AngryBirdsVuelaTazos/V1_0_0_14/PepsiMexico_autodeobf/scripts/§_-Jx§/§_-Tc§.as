package §_-Jx§
{
   import §_-W7§.§_-jT§;
   import §_-hf§.§_-WL§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-Tc§ extends §_-dI§
   {
      
      public static const §_-WJ§:String = "Active";
      
      public static const §_-SQ§:String = "Deactive";
      
      public static const §_-9Z§:String = "Disabled";
      
      public static const §_-bG§:String = "Out";
      
      public static const §_-dg§:String = "Over";
      
      public static const §_-bI§:String = "Up_Default";
      
      public static const §_-zA§:String = "Down";
      
      public static var §_-f§:Class;
      
      public static var §_-87§:Boolean = true;
      
      public static const §_-tp§:String = "Tooltip";
       
      
      public var §_-hB§:String;
      
      public var §_-qZ§:String;
      
      public var §_-4v§:String;
      
      public var §_-qu§:MovieClip;
      
      public var §_-YB§:int = 6;
      
      public function §_-Tc§(param1:XML, param2:§_-WL§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-hB§ = §_-WJ§;
         this.§_-qZ§ = §_-bI§;
         this.§_-2E§();
         this.§_-Wg§(param1.@Tooltip);
      }
      
      public static function §_-7Y§() : void
      {
         §_-f§ = §_-jT§.§_-kv§(§_-tp§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-bG§);
         }
      }
      
      public function §_-Wg§(param1:String) : void
      {
         this.§_-4v§ = param1;
         if(this.§_-4v§ && this.§_-4v§.length == 0)
         {
            this.§_-4v§ = null;
         }
         if(this.§_-4v§)
         {
            if(§_-87§)
            {
               §_-87§ = false;
               §_-7Y§();
            }
            this.§_-qu§ = new MovieClip();
            if(§_-f§)
            {
               this.§_-j3§();
            }
            else
            {
               this.§_-Cw§();
            }
            this.§_-qu§.mouseEnabled = false;
            this.§_-qu§.mouseChildren = false;
            this.§_-qu§.visible = false;
            getParentView().addChild(this.§_-qu§);
         }
      }
      
      private function §_-Cw§() : void
      {
         this.§_-qu§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-qu§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-qu§.addChildAt(_loc2_,0);
         this.§_-YK§(this.§_-4v§);
      }
      
      private function §_-j3§() : void
      {
         this.§_-qu§ = new §_-f§();
         this.§_-AS§(this.§_-4v§);
      }
      
      public function §_-AS§(param1:String) : void
      {
         this.§_-4v§ = param1;
         if(§_-f§)
         {
            this.§_-YJ§(param1);
         }
         else
         {
            this.§_-YK§(param1);
         }
      }
      
      private function §_-YJ§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-qu§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-qu§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-4v§;
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
      
      private function §_-YK§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-qu§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-4v§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-qu§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-YB§,-this.§_-YB§,_loc2_.width + 2 * this.§_-YB§,_loc2_.height + 2 * this.§_-YB§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-YB§ / 2,-(this.§_-YB§ / 2),_loc2_.width + 1 * this.§_-YB§,_loc2_.height + 1 * this.§_-YB§);
      }
      
      private function §_-Nr§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-qu§ || this.§_-4v§ == null || this.§_-4v§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-qu§.y = _loc2_.y - this.§_-qu§.height + this.§_-YB§;
            this.§_-qu§.x = _loc2_.x + mClip.width / 2 - this.§_-qu§.width / 2;
            _loc3_ = this.§_-qu§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-YB§)
            {
               this.§_-qu§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-YB§));
            }
            if(_loc3_.left < this.§_-YB§)
            {
               this.§_-qu§.x += 1 + (this.§_-YB§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-YB§)
            {
               this.§_-qu§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-YB§));
            }
            if(_loc3_.top < this.§_-YB§)
            {
               this.§_-qu§.y += mClip.height + this.§_-qu§.height;
            }
            this.§_-qu§.visible = true;
         }
         else
         {
            this.§_-qu§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-qu§)
         {
            this.§_-4v§ = null;
            while(this.§_-qu§.numChildren > 0)
            {
               this.§_-qu§.removeChildAt(0);
            }
            if(this.§_-qu§.parent)
            {
               this.§_-qu§.parent.removeChild(this.§_-qu§);
            }
            this.§_-qu§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-hB§ = param1;
         this.§_-2E§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-qZ§ = param1;
         this.§_-2E§();
      }
      
      public function §_-2E§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-hB§ + "_" + this.§_-qZ§,this.§_-hB§ + "_" + §_-bI§,§_-WJ§ + "_" + this.§_-qZ§,§_-WJ§ + "_" + §_-bI§);
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
         if(this.§_-hB§ == §_-9Z§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-zA§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-dg§);
         }
         if(param1 == §_-S8§)
         {
            this.setComponentVisualState(§_-bG§);
         }
         if(param1 == §_-Qy§)
         {
            this.setComponentVisualState(§_-dg§);
         }
         this.§_-Nr§(param1 == §_-Qy§);
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
         this.§_-2E§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-Nr§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-Nr§(false);
         }
      }
   }
}
