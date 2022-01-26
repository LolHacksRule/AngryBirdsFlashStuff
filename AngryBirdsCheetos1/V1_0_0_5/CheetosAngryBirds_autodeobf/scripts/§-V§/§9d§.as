package §-V§
{
   import §'G§.§%!%§;
   import §-0§.§^a§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §9d§ extends §@!$§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §%C§:String = "Deactive";
      
      public static const §^#§:String = "Disabled";
      
      public static const §%^§:String = "Out";
      
      public static const §^!'§:String = "Over";
      
      public static const §,]§:String = "Up_Default";
      
      public static const §3j§:String = "Down";
      
      public static var §8!7§:Class;
      
      public static var §`7§:Boolean = true;
      
      public static const §,!X§:String = "Tooltip";
       
      
      public var §<d§:String;
      
      public var §0<§:String;
      
      public var §2!E§:String;
      
      public var §+3§:MovieClip;
      
      public var §5m§:int = 6;
      
      public function §9d§(param1:XML, param2:§%!%§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§<d§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§0<§ = §,]§;
         this.§2i§();
         this.§,,§(param1.@Tooltip);
      }
      
      public static function §5u§() : void
      {
         §8!7§ = §^a§.§;x§(§,!X§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§%^§);
         }
      }
      
      public function §,,§(param1:String) : void
      {
         this.§2!E§ = param1;
         if(this.§2!E§ && this.§2!E§.length == 0)
         {
            this.§2!E§ = null;
         }
         if(this.§2!E§)
         {
            if(§`7§)
            {
               §`7§ = false;
               §5u§();
            }
            this.§+3§ = new MovieClip();
            if(§8!7§)
            {
               this.§7p§();
            }
            else
            {
               this.§8<§();
            }
            this.§+3§.mouseEnabled = false;
            this.§+3§.mouseChildren = false;
            this.§+3§.visible = false;
            getParentView().addChild(this.§+3§);
         }
      }
      
      private function §8<§() : void
      {
         this.§+3§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§+3§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§+3§.addChildAt(_loc2_,0);
         this.§'!6§(this.§2!E§);
      }
      
      private function §7p§() : void
      {
         this.§+3§ = new §8!7§();
         this.§ !U§(this.§2!E§);
      }
      
      public function § !U§(param1:String) : void
      {
         this.§2!E§ = param1;
         if(§8!7§)
         {
            this.§#N§(param1);
         }
         else
         {
            this.§'!6§(param1);
         }
      }
      
      private function §#N§(param1:String) : void
      {
         var _loc2_:TextField = this.§+3§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§+3§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§2!E§;
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
      
      private function §'!6§(param1:String) : void
      {
         var _loc2_:TextField = this.§+3§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§2!E§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§+3§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§5m§,-this.§5m§,_loc2_.width + 2 * this.§5m§,_loc2_.height + 2 * this.§5m§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§5m§ / 2,-(this.§5m§ / 2),_loc2_.width + 1 * this.§5m§,_loc2_.height + 1 * this.§5m§);
      }
      
      private function §6E§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§+3§ || this.§2!E§ == null || this.§2!E§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§+3§.y = _loc2_.y - this.§+3§.height + this.§5m§;
            this.§+3§.x = _loc2_.x + mClip.width / 2 - this.§+3§.width / 2;
            _loc3_ = this.§+3§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§5m§)
            {
               this.§+3§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§5m§));
            }
            if(_loc3_.left < this.§5m§)
            {
               this.§+3§.x += 1 + (this.§5m§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§5m§)
            {
               this.§+3§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§5m§));
            }
            if(_loc3_.top < this.§5m§)
            {
               this.§+3§.y += mClip.height + this.§+3§.height;
            }
            this.§+3§.visible = true;
         }
         else
         {
            this.§+3§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§+3§)
         {
            this.§2!E§ = null;
            while(this.§+3§.numChildren > 0)
            {
               this.§+3§.removeChildAt(0);
            }
            if(this.§+3§.parent)
            {
               this.§+3§.parent.removeChild(this.§+3§);
            }
            this.§+3§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§<d§ = param1;
         this.§2i§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§0<§ = param1;
         this.§2i§();
      }
      
      public function §2i§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§<d§ + "_" + this.§0<§,this.§<d§ + "_" + §,]§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0<§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §,]§);
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
         if(this.§<d§ == §^#§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§3j§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§^!'§);
         }
         if(param1 == §'8§)
         {
            this.setComponentVisualState(§%^§);
         }
         if(param1 == §91§)
         {
            this.setComponentVisualState(§^!'§);
         }
         this.§6E§(param1 == §91§);
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
         this.§2i§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§6E§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§6E§(false);
         }
      }
   }
}
