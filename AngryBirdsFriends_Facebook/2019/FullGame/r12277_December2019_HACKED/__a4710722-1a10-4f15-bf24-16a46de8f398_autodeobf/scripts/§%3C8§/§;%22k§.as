package §<8§
{
   import § null§.§5"<§;
   import § null§.§@§;
   import §2$;§.§!"e§;
   import §=X§.§3§;
   import com.rovio.assets.§=@§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §;"k§ extends §6!1§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §`"2§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §'"!§:String = "Out";
      
      public static const §9B§:String = "Over";
      
      public static const §^!B§:String = "Up_Default";
      
      public static const §2!R§:String = "Down";
      
      public static var §]#M§:Class;
      
      public static var § #z§:Boolean = true;
      
      public static const §%%§:String = "Tooltip";
      
      public static var §="w§:Boolean = true;
       
      
      public var §?"@§:String;
      
      public var §^"p§:String;
      
      public var §&#;§:String;
      
      public var §4#0§:MovieClip;
      
      public var §2D§:int = 6;
      
      private var §6"a§:Boolean = false;
      
      private var §;"I§:String = "auto";
      
      private var §'!D§:§@#5§;
      
      public function §;"k§(param1:XML, param2:§!"e§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§?"@§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§^"p§ = §^!B§;
         this.§]"#§();
         this.§'A§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§6"a§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if([MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM].indexOf(_loc4_) > -1)
            {
               this.§;"I§ = _loc4_;
            }
         }
         §!#=§(§="?§,param1.@MouseOver);
         §!#=§(§7[§,param1.@MouseOut);
      }
      
      public static function §9<§() : void
      {
         §]#M§ = §=@§.§9!x§(§%%§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§'"!§);
         }
      }
      
      public function §'A§(param1:String) : void
      {
         this.§&#;§ = param1;
         if(this.§&#;§ && this.§&#;§.length == 0)
         {
            this.§&#;§ = null;
         }
         if(this.§&#;§)
         {
            if(§ #z§)
            {
               § #z§ = false;
               §9<§();
            }
            this.§4#0§ = new MovieClip();
            if(§]#M§)
            {
               this.§"M§();
            }
            else
            {
               this.§`$>§();
            }
            this.§4#0§.mouseEnabled = false;
            this.§4#0§.mouseChildren = false;
            this.§4#0§.visible = false;
            getParentView().addChild(this.§4#0§);
         }
      }
      
      private function §`$>§() : void
      {
         this.§4#0§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§4#0§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§4#0§.addChildAt(_loc2_,0);
         this.§<j§(this.§&#;§);
      }
      
      private function §"M§() : void
      {
         this.§4#0§ = new §]#M§();
         this.§"#"§(this.§&#;§);
      }
      
      public function §"#"§(param1:String) : void
      {
         this.§&#;§ = param1;
         if(§]#M§)
         {
            this.§,!Q§(param1);
         }
         else
         {
            this.§<j§(param1);
         }
      }
      
      private function §,!Q§(param1:String) : void
      {
         var _loc2_:TextField = this.§4#0§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§4#0§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§&#;§;
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
      
      private function §<j§(param1:String) : void
      {
         var _loc2_:TextField = this.§4#0§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§&#;§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§4#0§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§2D§,-this.§2D§,_loc2_.width + 2 * this.§2D§,_loc2_.height + 2 * this.§2D§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§2D§ / 2,-(this.§2D§ / 2),_loc2_.width + 1 * this.§2D§,_loc2_.height + 1 * this.§2D§);
      }
      
      private function §0#2§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§4#0§ || this.§&#;§ == null || this.§&#;§.length == 0)
         {
            return;
         }
         if(param1 && §="w§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§4#0§.y = _loc2_.y - this.§4#0§.height - this.§2D§;
            this.§4#0§.x = _loc2_.x + mClip.width / 2 - this.§4#0§.width / 2;
            _loc3_ = this.§4#0§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§2D§)
            {
               this.§4#0§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§2D§));
            }
            if(_loc3_.left < this.§2D§)
            {
               this.§4#0§.x += 1 + (this.§2D§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§2D§)
            {
               this.§4#0§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§2D§));
            }
            if(_loc3_.top < this.§2D§)
            {
               this.§4#0§.y += mClip.height + this.§4#0§.height + this.§2D§ * 2;
            }
            this.§4#0§.visible = true;
         }
         else
         {
            this.§4#0§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§?"@§ = COMPONENT_STATE_DISABLED;
         if(this.§4#0§)
         {
            this.§&#;§ = null;
            while(this.§4#0§.numChildren > 0)
            {
               this.§4#0§.removeChildAt(0);
            }
            if(this.§4#0§.parent)
            {
               this.§4#0§.parent.removeChild(this.§4#0§);
            }
            this.§4#0§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§?"@§ = param1;
         this.§]"#§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§^"u§ && §^#k§)
         {
            if(param1 == §9B§)
            {
               if(this.§'!D§ != null)
               {
                  this.§'!D§.stop();
               }
               this.§'!D§ = §5"<§.§3"1§.§3#§(mClip,{
                  "scaleX":§^#k§.scaleX + 0.1,
                  "scaleY":§^#k§.scaleY + 0.1
               },null,0.1);
               this.§'!D§.play();
            }
            else if(param1 == §'"!§)
            {
               if(this.§'!D§ != null)
               {
                  this.§'!D§.stop();
               }
               this.§'!D§ = §5"<§.§3"1§.§3#§(mClip,{
                  "scaleX":§^#k§.scaleX,
                  "scaleY":§^#k§.scaleY
               },null,0.1);
               this.§'!D§.play();
            }
         }
         this.§^"p§ = param1;
         this.§]"#§();
      }
      
      public function §]"#§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§?"@§ + "_" + this.§^"p§,this.§?"@§ + "_" + §^!B§];
         if(this.§?"@§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§^"p§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §^!B§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§?#3§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §?#3§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3#6§
      {
         if(this.§?"@§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§6"a§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§>"s§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§2!R§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§9B§);
         }
         if(param1 == §7[§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§'"!§);
         }
         if(param1 == §="?§)
         {
            Mouse.cursor = this.§;"I§;
            this.setComponentVisualState(§9B§);
         }
         this.§0#2§(param1 == §="?§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §>"s§() : void
      {
         if(this.§?"@§ == §;"k§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§;"k§.§`"2§);
         }
         else if(this.§?"@§ == §;"k§.§`"2§)
         {
            this.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§]"#§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§0#2§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§0#2§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§'!D§)
         {
            this.§'!D§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§'!D§)
         {
            this.§'!D§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
