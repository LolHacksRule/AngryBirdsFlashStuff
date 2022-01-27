package §8!h§
{
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §=!4§.§8"U§;
   import §=Z§.§@!8§;
   import com.rovio.assets.§%!Z§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §%"z§ extends §[Z§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §30§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §5#5§:String = "Out";
      
      public static const §!8§:String = "Over";
      
      public static const §7!?§:String = "Up_Default";
      
      public static const §09§:String = "Down";
      
      public static var §,+§:Class;
      
      public static var §2"Q§:Boolean = true;
      
      public static const §@"q§:String = "Tooltip";
      
      public static var §?"K§:Boolean = true;
       
      
      public var §9"6§:String;
      
      public var §8![§:String;
      
      public var §=!I§:String;
      
      public var §[!>§:MovieClip;
      
      public var §2_§:int = 6;
      
      private var §!"D§:Boolean = false;
      
      private var §7!y§:String = "auto";
      
      private var §9""§:§%b§;
      
      public function §%"z§(param1:XML, param2:§@!8§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§9"6§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§8![§ = §7!?§;
         this.§'"n§();
         this.§>!0§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§!"D§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§7!y§ = _loc4_;
            }
         }
         §="B§(§7!j§,param1.@MouseOver);
         §="B§(§?"N§,param1.@MouseOut);
      }
      
      public static function §<"u§() : void
      {
         §,+§ = §%!Z§.§;",§(§@"q§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§5#5§);
         }
      }
      
      public function §>!0§(param1:String) : void
      {
         this.§=!I§ = param1;
         if(this.§=!I§ && this.§=!I§.length == 0)
         {
            this.§=!I§ = null;
         }
         if(this.§=!I§)
         {
            if(§2"Q§)
            {
               §2"Q§ = false;
               §<"u§();
            }
            this.§[!>§ = new MovieClip();
            if(§,+§)
            {
               this.§-f§();
            }
            else
            {
               this.§&"t§();
            }
            this.§[!>§.mouseEnabled = false;
            this.§[!>§.mouseChildren = false;
            this.§[!>§.visible = false;
            getParentView().addChild(this.§[!>§);
         }
      }
      
      private function §&"t§() : void
      {
         this.§[!>§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§[!>§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§[!>§.addChildAt(_loc2_,0);
         this.§%"1§(this.§=!I§);
      }
      
      private function §-f§() : void
      {
         this.§[!>§ = new §,+§();
         this.§[!5§(this.§=!I§);
      }
      
      public function §[!5§(param1:String) : void
      {
         this.§=!I§ = param1;
         if(§,+§)
         {
            this.§2!H§(param1);
         }
         else
         {
            this.§%"1§(param1);
         }
      }
      
      private function §2!H§(param1:String) : void
      {
         var _loc2_:TextField = this.§[!>§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§[!>§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§=!I§;
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
      
      private function §%"1§(param1:String) : void
      {
         var _loc2_:TextField = this.§[!>§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§=!I§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§[!>§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§2_§,-this.§2_§,_loc2_.width + 2 * this.§2_§,_loc2_.height + 2 * this.§2_§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§2_§ / 2,-(this.§2_§ / 2),_loc2_.width + 1 * this.§2_§,_loc2_.height + 1 * this.§2_§);
      }
      
      private function §>N§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§[!>§ || this.§=!I§ == null || this.§=!I§.length == 0)
         {
            return;
         }
         if(param1 && §?"K§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§[!>§.y = _loc2_.y - this.§[!>§.height - this.§2_§;
            this.§[!>§.x = _loc2_.x + mClip.width / 2 - this.§[!>§.width / 2;
            _loc3_ = this.§[!>§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§2_§)
            {
               this.§[!>§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§2_§));
            }
            if(_loc3_.left < this.§2_§)
            {
               this.§[!>§.x += 1 + (this.§2_§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§2_§)
            {
               this.§[!>§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§2_§));
            }
            if(_loc3_.top < this.§2_§)
            {
               this.§[!>§.y += mClip.height + this.§[!>§.height + this.§2_§ * 2;
            }
            this.§[!>§.visible = true;
         }
         else
         {
            this.§[!>§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§9"6§ = COMPONENT_STATE_DISABLED;
         if(this.§[!>§)
         {
            this.§=!I§ = null;
            while(this.§[!>§.numChildren > 0)
            {
               this.§[!>§.removeChildAt(0);
            }
            if(this.§[!>§.parent)
            {
               this.§[!>§.parent.removeChild(this.§[!>§);
            }
            this.§[!>§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§9"6§ = param1;
         this.§'"n§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§@!a§ && §""e§)
         {
            if(param1 == §!8§)
            {
               if(this.§9""§ != null)
               {
                  this.§9""§.stop();
               }
               this.§9""§ = §5!%§.§!6§.§4!M§(mClip,{
                  "scaleX":§""e§.scaleX + 0.1,
                  "scaleY":§""e§.scaleY + 0.1
               },null,0.1);
               this.§9""§.play();
            }
            else if(param1 == §5#5§)
            {
               if(this.§9""§ != null)
               {
                  this.§9""§.stop();
               }
               this.§9""§ = §5!%§.§!6§.§4!M§(mClip,{
                  "scaleX":§""e§.scaleX,
                  "scaleY":§""e§.scaleY
               },null,0.1);
               this.§9""§.play();
            }
         }
         this.§8![§ = param1;
         this.§'"n§();
      }
      
      public function §'"n§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§9"6§ + "_" + this.§8![§,this.§9"6§ + "_" + §7!?§];
         if(this.§9"6§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§8![§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §7!?§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§2"l§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §2"l§(param1:String) : Boolean
      {
         var _loc2_:FrameLabel = null;
         for each(_loc2_ in mClip.currentLabels)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8"U§
      {
         if(this.§9"6§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§!"D§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§%!O§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§09§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§!8§);
         }
         if(param1 == §?"N§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§5#5§);
         }
         if(param1 == §7!j§)
         {
            Mouse.cursor = this.§7!y§;
            this.setComponentVisualState(§!8§);
         }
         this.§>N§(param1 == §7!j§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §%!O§() : void
      {
         if(this.§9"6§ == §%"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§%"z§.§30§);
         }
         else if(this.§9"6§ == §%"z§.§30§)
         {
            this.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
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
         this.§'"n§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§>N§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§>N§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§9""§)
         {
            this.§9""§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
