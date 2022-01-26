package §^r§
{
   import §1q§.§-!+§;
   import §7f§.§?i§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §%%§ extends § ^§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §'$§:String = "Deactive";
      
      public static const §@!]§:String = "Disabled";
      
      public static const §0!§:String = "Out";
      
      public static const §,<§:String = "Over";
      
      public static const §]u§:String = "Up_Default";
      
      public static const § P§:String = "Down";
      
      public static var §@!"§:Class;
      
      public static var §>e§:Boolean = true;
      
      public static const §;!&§:String = "Tooltip";
      
      public static var §=F§:Boolean = true;
       
      
      public var §6f§:String;
      
      public var §if§:String;
      
      public var §0!6§:String;
      
      public var §?>§:MovieClip;
      
      public var §"m§:int = 6;
      
      private var §6o§:Boolean = false;
      
      private var §?R§:String = "auto";
      
      public function §%%§(param1:XML, param2:§?i§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§6f§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§if§ = §]u§;
         this.§;-§();
         this.§0J§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§6o§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§?R§ = _loc5_;
         }
      }
      
      public static function §%I§() : void
      {
         §@!"§ = §-!+§.§"x§(§;!&§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§0!§);
         }
      }
      
      public function §0J§(param1:String) : void
      {
         this.§0!6§ = param1;
         if(this.§0!6§ && this.§0!6§.length == 0)
         {
            this.§0!6§ = null;
         }
         if(this.§0!6§)
         {
            if(§>e§)
            {
               §>e§ = false;
               §%I§();
            }
            this.§?>§ = new MovieClip();
            if(§@!"§)
            {
               this.§ >§();
            }
            else
            {
               this.§ D§();
            }
            this.§?>§.mouseEnabled = false;
            this.§?>§.mouseChildren = false;
            this.§?>§.visible = false;
            getParentView().addChild(this.§?>§);
         }
      }
      
      private function § D§() : void
      {
         this.§?>§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§?>§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§?>§.addChildAt(_loc2_,0);
         this.§,m§(this.§0!6§);
      }
      
      private function § >§() : void
      {
         this.§?>§ = new §@!"§();
         this.§`!F§(this.§0!6§);
      }
      
      public function §`!F§(param1:String) : void
      {
         this.§0!6§ = param1;
         if(§@!"§)
         {
            this.§<!3§(param1);
         }
         else
         {
            this.§,m§(param1);
         }
      }
      
      private function §<!3§(param1:String) : void
      {
         var _loc2_:TextField = this.§?>§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§?>§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§0!6§;
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
      
      private function §,m§(param1:String) : void
      {
         var _loc2_:TextField = this.§?>§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§0!6§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§?>§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§"m§,-this.§"m§,_loc2_.width + 2 * this.§"m§,_loc2_.height + 2 * this.§"m§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§"m§ / 2,-(this.§"m§ / 2),_loc2_.width + 1 * this.§"m§,_loc2_.height + 1 * this.§"m§);
      }
      
      private function §5!K§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§?>§ || this.§0!6§ == null || this.§0!6§.length == 0)
         {
            return;
         }
         if(param1 && §=F§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§?>§.y = _loc2_.y - this.§?>§.height - this.§"m§;
            this.§?>§.x = _loc2_.x + mClip.width / 2 - this.§?>§.width / 2;
            _loc3_ = this.§?>§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§"m§)
            {
               this.§?>§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§"m§));
            }
            if(_loc3_.left < this.§"m§)
            {
               this.§?>§.x += 1 + (this.§"m§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§"m§)
            {
               this.§?>§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§"m§));
            }
            if(_loc3_.top < this.§"m§)
            {
               this.§?>§.y += mClip.height + this.§?>§.height + this.§"m§ * 2;
            }
            this.§?>§.visible = true;
         }
         else
         {
            this.§?>§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§?>§)
         {
            this.§0!6§ = null;
            while(this.§?>§.numChildren > 0)
            {
               this.§?>§.removeChildAt(0);
            }
            if(this.§?>§.parent)
            {
               this.§?>§.parent.removeChild(this.§?>§);
            }
            this.§?>§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§6f§ = param1;
         this.§;-§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§if§ = param1;
         this.§;-§();
      }
      
      public function §;-§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§6f§ + "_" + this.§if§,this.§6f§ + "_" + §]u§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§if§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §]u§);
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
         if(this.§6f§ == §@!]§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§6o§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§4i§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§ P§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§,<§);
         }
         if(param1 == §@'§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§0!§);
         }
         if(param1 == §<8§)
         {
            Mouse.cursor = this.§?R§;
            this.setComponentVisualState(§,<§);
         }
         this.§5!K§(param1 == §<8§);
      }
      
      public function §4i§() : void
      {
         if(this.§6f§ == §%%§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§%%§.§'$§);
         }
         else if(this.§6f§ == §%%§.§'$§)
         {
            this.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§;-§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§5!K§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§5!K§(false);
         }
      }
   }
}
