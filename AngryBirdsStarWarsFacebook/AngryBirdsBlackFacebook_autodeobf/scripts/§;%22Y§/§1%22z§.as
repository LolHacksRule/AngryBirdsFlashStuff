package §;"Y§
{
   import §+D§.§ #^§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §<w§.§6#'§;
   import com.rovio.assets.§5_§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §1"z§ extends §]#X§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §4"o§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §5,§:String = "Out";
      
      public static const §%!f§:String = "Over";
      
      public static const §##;§:String = "Up_Default";
      
      public static const §^%§:String = "Down";
      
      public static var §^"7§:Class;
      
      public static var §'#<§:Boolean = true;
      
      public static const §-b§:String = "Tooltip";
      
      public static var §1"o§:Boolean = true;
       
      
      public var §^'§:String;
      
      public var §2!B§:String;
      
      public var §#I§:String;
      
      public var §`#<§:MovieClip;
      
      public var §-"5§:int = 6;
      
      private var §2"-§:Boolean = false;
      
      private var §8!k§:String = "auto";
      
      private var §7!a§:§[#R§;
      
      public function §1"z§(param1:XML, param2:§ #^§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§^'§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§2!B§ = §##;§;
         this.§%#Q§();
         this.§=# §(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§2"-§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§8!k§ = _loc4_;
            }
         }
         § #A§(§;#V§,param1.@MouseOver);
         § #A§(§<!^§,param1.@MouseOut);
      }
      
      public static function §`"E§() : void
      {
         §^"7§ = §5_§.§`"G§(§-b§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§5,§);
         }
      }
      
      public function §=# §(param1:String) : void
      {
         this.§#I§ = param1;
         if(this.§#I§ && this.§#I§.length == 0)
         {
            this.§#I§ = null;
         }
         if(this.§#I§)
         {
            if(§'#<§)
            {
               §'#<§ = false;
               §`"E§();
            }
            this.§`#<§ = new MovieClip();
            if(§^"7§)
            {
               this.§,7§();
            }
            else
            {
               this.§9#2§();
            }
            this.§`#<§.mouseEnabled = false;
            this.§`#<§.mouseChildren = false;
            this.§`#<§.visible = false;
            getParentView().addChild(this.§`#<§);
         }
      }
      
      private function §9#2§() : void
      {
         this.§`#<§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§`#<§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§`#<§.addChildAt(_loc2_,0);
         this.§?"h§(this.§#I§);
      }
      
      private function §,7§() : void
      {
         this.§`#<§ = new §^"7§();
         this.§@q§(this.§#I§);
      }
      
      public function §@q§(param1:String) : void
      {
         this.§#I§ = param1;
         if(§^"7§)
         {
            this.§ !A§(param1);
         }
         else
         {
            this.§?"h§(param1);
         }
      }
      
      private function § !A§(param1:String) : void
      {
         var _loc2_:TextField = this.§`#<§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§`#<§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§#I§;
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
      
      private function §?"h§(param1:String) : void
      {
         var _loc2_:TextField = this.§`#<§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§#I§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§`#<§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§-"5§,-this.§-"5§,_loc2_.width + 2 * this.§-"5§,_loc2_.height + 2 * this.§-"5§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§-"5§ / 2,-(this.§-"5§ / 2),_loc2_.width + 1 * this.§-"5§,_loc2_.height + 1 * this.§-"5§);
      }
      
      private function §,j§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§`#<§ || this.§#I§ == null || this.§#I§.length == 0)
         {
            return;
         }
         if(param1 && §1"o§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§`#<§.y = _loc2_.y - this.§`#<§.height - this.§-"5§;
            this.§`#<§.x = _loc2_.x + mClip.width / 2 - this.§`#<§.width / 2;
            _loc3_ = this.§`#<§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§-"5§)
            {
               this.§`#<§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§-"5§));
            }
            if(_loc3_.left < this.§-"5§)
            {
               this.§`#<§.x += 1 + (this.§-"5§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§-"5§)
            {
               this.§`#<§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§-"5§));
            }
            if(_loc3_.top < this.§-"5§)
            {
               this.§`#<§.y += mClip.height + this.§`#<§.height + this.§-"5§ * 2;
            }
            this.§`#<§.visible = true;
         }
         else
         {
            this.§`#<§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§^'§ = COMPONENT_STATE_DISABLED;
         if(this.§`#<§)
         {
            this.§#I§ = null;
            while(this.§`#<§.numChildren > 0)
            {
               this.§`#<§.removeChildAt(0);
            }
            if(this.§`#<§.parent)
            {
               this.§`#<§.parent.removeChild(this.§`#<§);
            }
            this.§`#<§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§^'§ = param1;
         this.§%#Q§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§["U§ && §=#B§)
         {
            if(param1 == §%!f§)
            {
               if(this.§7!a§ != null)
               {
                  this.§7!a§.stop();
               }
               this.§7!a§ = §-#C§.§%!E§.§^!H§(mClip,{
                  "scaleX":§=#B§.scaleX + 0.1,
                  "scaleY":§=#B§.scaleY + 0.1
               },null,0.1);
               this.§7!a§.play();
            }
            else if(param1 == §5,§)
            {
               if(this.§7!a§ != null)
               {
                  this.§7!a§.stop();
               }
               this.§7!a§ = §-#C§.§%!E§.§^!H§(mClip,{
                  "scaleX":§=#B§.scaleX,
                  "scaleY":§=#B§.scaleY
               },null,0.1);
               this.§7!a§.play();
            }
         }
         this.§2!B§ = param1;
         this.§%#Q§();
      }
      
      public function §%#Q§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§^'§ + "_" + this.§2!B§,this.§^'§ + "_" + §##;§];
         if(this.§^'§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2!B§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §##;§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§>!"§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §>!"§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §6#'§
      {
         if(this.§^'§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§2"-§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§8!5§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§^%§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§%!f§);
         }
         if(param1 == §<!^§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§5,§);
         }
         if(param1 == §;#V§)
         {
            Mouse.cursor = this.§8!k§;
            this.setComponentVisualState(§%!f§);
         }
         this.§,j§(param1 == §;#V§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §8!5§() : void
      {
         if(this.§^'§ == §1"z§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§1"z§.§4"o§);
         }
         else if(this.§^'§ == §1"z§.§4"o§)
         {
            this.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§%#Q§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§,j§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§,j§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§7!a§)
         {
            this.§7!a§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
