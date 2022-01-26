package §_-A§
{
   import §_-Eq§.§_-q§;
   import §_-ab§.§_-IP§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §_-YT§ extends §_-Hw§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §_-c7§:String = "Deactive";
      
      public static const §_-39§:String = "Disabled";
      
      public static const §_-MW§:String = "Out";
      
      public static const §_-dN§:String = "Over";
      
      public static const §_-lM§:String = "Up_Default";
      
      public static const §_-qv§:String = "Down";
      
      public static var §_-Mt§:Class;
      
      public static var §_-7X§:Boolean = true;
      
      public static const §_-8t§:String = "Tooltip";
       
      
      public var §_-6K§:String;
      
      public var §_-bd§:String;
      
      public var §_-F7§:String;
      
      public var §_-4K§:MovieClip;
      
      public var §_-eK§:int = 6;
      
      public function §_-YT§(param1:XML, param2:§_-IP§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§_-6K§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§_-bd§ = §_-lM§;
         this.§_-1w§();
         this.§_-WF§(param1.@Tooltip);
      }
      
      public static function §_-xG§() : void
      {
         §_-Mt§ = §_-q§.§_-Ti§(§_-8t§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§_-MW§);
         }
      }
      
      public function §_-WF§(param1:String) : void
      {
         this.§_-F7§ = param1;
         if(this.§_-F7§ && this.§_-F7§.length == 0)
         {
            this.§_-F7§ = null;
         }
         if(this.§_-F7§)
         {
            if(§_-7X§)
            {
               §_-7X§ = false;
               §_-xG§();
            }
            this.§_-4K§ = new MovieClip();
            if(§_-Mt§)
            {
               this.§_-SU§();
            }
            else
            {
               this.§_-yX§();
            }
            this.§_-4K§.mouseEnabled = false;
            this.§_-4K§.mouseChildren = false;
            this.§_-4K§.visible = false;
            getParentView().addChild(this.§_-4K§);
         }
      }
      
      private function §_-yX§() : void
      {
         this.§_-4K§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§_-4K§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§_-4K§.addChildAt(_loc2_,0);
         this.§_-b4§(this.§_-F7§);
      }
      
      private function §_-SU§() : void
      {
         this.§_-4K§ = new §_-Mt§();
         this.§_-ZV§(this.§_-F7§);
      }
      
      public function §_-ZV§(param1:String) : void
      {
         this.§_-F7§ = param1;
         if(§_-Mt§)
         {
            this.§_-Bq§(param1);
         }
         else
         {
            this.§_-b4§(param1);
         }
      }
      
      private function §_-Bq§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-4K§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§_-4K§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§_-F7§;
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
      
      private function §_-b4§(param1:String) : void
      {
         var _loc2_:TextField = this.§_-4K§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§_-F7§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§_-4K§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§_-eK§,-this.§_-eK§,_loc2_.width + 2 * this.§_-eK§,_loc2_.height + 2 * this.§_-eK§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§_-eK§ / 2,-(this.§_-eK§ / 2),_loc2_.width + 1 * this.§_-eK§,_loc2_.height + 1 * this.§_-eK§);
      }
      
      private function §_-Ss§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§_-4K§ || this.§_-F7§ == null || this.§_-F7§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§_-4K§.y = _loc2_.y - this.§_-4K§.height + this.§_-eK§;
            this.§_-4K§.x = _loc2_.x + mClip.width / 2 - this.§_-4K§.width / 2;
            _loc3_ = this.§_-4K§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§_-eK§)
            {
               this.§_-4K§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§_-eK§));
            }
            if(_loc3_.left < this.§_-eK§)
            {
               this.§_-4K§.x += 1 + (this.§_-eK§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§_-eK§)
            {
               this.§_-4K§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§_-eK§));
            }
            if(_loc3_.top < this.§_-eK§)
            {
               this.§_-4K§.y += mClip.height + this.§_-4K§.height;
            }
            this.§_-4K§.visible = true;
         }
         else
         {
            this.§_-4K§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§_-4K§)
         {
            this.§_-F7§ = null;
            while(this.§_-4K§.numChildren > 0)
            {
               this.§_-4K§.removeChildAt(0);
            }
            if(this.§_-4K§.parent)
            {
               this.§_-4K§.parent.removeChild(this.§_-4K§);
            }
            this.§_-4K§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§_-6K§ = param1;
         this.§_-1w§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§_-bd§ = param1;
         this.§_-1w§();
      }
      
      public function §_-1w§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§_-6K§ + "_" + this.§_-bd§,this.§_-6K§ + "_" + §_-lM§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§_-bd§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §_-lM§);
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
         if(this.§_-6K§ == §_-39§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§_-qv§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§_-dN§);
         }
         if(param1 == §_-xl§)
         {
            this.setComponentVisualState(§_-MW§);
         }
         if(param1 == §_-M7§)
         {
            this.setComponentVisualState(§_-dN§);
         }
         this.§_-Ss§(param1 == §_-M7§);
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
         this.§_-1w§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§_-Ss§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§_-Ss§(false);
         }
      }
   }
}
