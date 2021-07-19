package §@R§
{
   import §0v§.§-'§;
   import §8!8§.§4!C§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flashx.textLayout.formats.TextAlign;
   
   public class §<d§ extends §']§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §^#§:String = "Deactive";
      
      public static const §%^§:String = "Disabled";
      
      public static const §^!'§:String = "Out";
      
      public static const §,]§:String = "Over";
      
      public static const §3j§:String = "Up_Default";
      
      public static const §8!7§:String = "Down";
      
      public static var §`7§:Class;
      
      public static var §,!X§:Boolean = true;
      
      public static const §5u§:String = "Tooltip";
       
      
      public var §0<§:String;
      
      public var §2!E§:String;
      
      public var §+3§:String;
      
      public var §5m§:MovieClip;
      
      public var §,,§:int = 6;
      
      public function §<d§(param1:XML, param2:§4!C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§0<§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§2!E§ = §3j§;
         this.§%C§();
         this.§8<§(param1.@Tooltip);
      }
      
      public static function §[u§() : void
      {
         §`7§ = §-'§.§]`§(§5u§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§^!'§);
         }
      }
      
      public function §8<§(param1:String) : void
      {
         this.§+3§ = param1;
         if(this.§+3§ && this.§+3§.length == 0)
         {
            this.§+3§ = null;
         }
         if(this.§+3§)
         {
            if(§,!X§)
            {
               §,!X§ = false;
               §[u§();
            }
            this.§5m§ = new MovieClip();
            if(§`7§)
            {
               this.§ !U§();
            }
            else
            {
               this.§7p§();
            }
            this.§5m§.mouseEnabled = false;
            this.§5m§.mouseChildren = false;
            this.§5m§.visible = false;
            getParentView().addChild(this.§5m§);
         }
      }
      
      private function §7p§() : void
      {
         this.§5m§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§5m§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§5m§.addChildAt(_loc2_,0);
         this.§6E§(this.§+3§);
      }
      
      private function § !U§() : void
      {
         this.§5m§ = new §`7§();
         this.§#N§(this.§+3§);
      }
      
      public function §#N§(param1:String) : void
      {
         this.§+3§ = param1;
         if(§`7§)
         {
            this.§'!6§(param1);
         }
         else
         {
            this.§6E§(param1);
         }
      }
      
      private function §'!6§(param1:String) : void
      {
         var _loc2_:TextField = this.§5m§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§5m§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§+3§;
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
      
      private function §6E§(param1:String) : void
      {
         var _loc2_:TextField = this.§5m§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§+3§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§5m§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§,,§,-this.§,,§,_loc2_.width + 2 * this.§,,§,_loc2_.height + 2 * this.§,,§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§,,§ / 2,-(this.§,,§ / 2),_loc2_.width + 1 * this.§,,§,_loc2_.height + 1 * this.§,,§);
      }
      
      private function §2i§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§5m§ || this.§+3§ == null || this.§+3§.length == 0)
         {
            return;
         }
         if(param1)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§5m§.y = _loc2_.y - this.§5m§.height + this.§,,§;
            this.§5m§.x = _loc2_.x + mClip.width / 2 - this.§5m§.width / 2;
            _loc3_ = this.§5m§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§,,§)
            {
               this.§5m§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§,,§));
            }
            if(_loc3_.left < this.§,,§)
            {
               this.§5m§.x += 1 + (this.§,,§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§,,§)
            {
               this.§5m§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§,,§));
            }
            if(_loc3_.top < this.§,,§)
            {
               this.§5m§.y += mClip.height + this.§5m§.height;
            }
            this.§5m§.visible = true;
         }
         else
         {
            this.§5m§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§5m§)
         {
            this.§+3§ = null;
            while(this.§5m§.numChildren > 0)
            {
               this.§5m§.removeChildAt(0);
            }
            if(this.§5m§.parent)
            {
               this.§5m§.parent.removeChild(this.§5m§);
            }
            this.§5m§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§0<§ = param1;
         this.§%C§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§2!E§ = param1;
         this.§%C§();
      }
      
      public function §%C§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§0<§ + "_" + this.§2!E§,this.§0<§ + "_" + §3j§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2!E§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §3j§);
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
         if(this.§0<§ == §%^§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§8!7§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§,]§);
         }
         if(param1 == §@!$§)
         {
            this.setComponentVisualState(§^!'§);
         }
         if(param1 == §'8§)
         {
            this.setComponentVisualState(§,]§);
         }
         this.§2i§(param1 == §'8§);
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
         this.§%C§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§2i§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§2i§(false);
         }
      }
   }
}
