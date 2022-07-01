package §<!0§
{
   import §"V§.§]j§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §>P§.§]"4§;
   import com.rovio.assets.§[O§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §3!W§ extends § !B§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §9k§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §+!T§:String = "Out";
      
      public static const §6!s§:String = "Over";
      
      public static const §7!1§:String = "Up_Default";
      
      public static const §6!<§:String = "Down";
      
      public static var §8!5§:Class;
      
      public static var §?a§:Boolean = true;
      
      public static const §7b§:String = "Tooltip";
      
      public static var §&1§:Boolean = true;
       
      
      public var §!!C§:String;
      
      public var §[c§:String;
      
      public var §9-§:String;
      
      public var §["2§:MovieClip;
      
      public var §@"#§:int = 6;
      
      private var §6@§:Boolean = false;
      
      private var §7!B§:String = "auto";
      
      private var §9!0§:§4`§;
      
      public function §3!W§(param1:XML, param2:§]"4§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§!!C§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§[c§ = §7!1§;
         this.§1!e§();
         this.§0!Q§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§6@§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§7!B§ = _loc4_;
            }
         }
         §&!4§(§+!1§,param1.@MouseOver);
         §&!4§(§?!_§,param1.@MouseOut);
      }
      
      public static function §8!6§() : void
      {
         §8!5§ = §[O§.§1s§(§7b§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§+!T§);
         }
      }
      
      public function §0!Q§(param1:String) : void
      {
         this.§9-§ = param1;
         if(this.§9-§ && this.§9-§.length == 0)
         {
            this.§9-§ = null;
         }
         if(this.§9-§)
         {
            if(§?a§)
            {
               §?a§ = false;
               §8!6§();
            }
            this.§["2§ = new MovieClip();
            if(§8!5§)
            {
               this.§'"#§();
            }
            else
            {
               this.§>!b§();
            }
            this.§["2§.mouseEnabled = false;
            this.§["2§.mouseChildren = false;
            this.§["2§.visible = false;
            getParentView().addChild(this.§["2§);
         }
      }
      
      private function §>!b§() : void
      {
         this.§["2§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§["2§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§["2§.addChildAt(_loc2_,0);
         this.§;!e§(this.§9-§);
      }
      
      private function §'"#§() : void
      {
         this.§["2§ = new §8!5§();
         this.§[z§(this.§9-§);
      }
      
      public function §[z§(param1:String) : void
      {
         this.§9-§ = param1;
         if(§8!5§)
         {
            this.§]0§(param1);
         }
         else
         {
            this.§;!e§(param1);
         }
      }
      
      private function §]0§(param1:String) : void
      {
         var _loc2_:TextField = this.§["2§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§["2§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§9-§;
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
      
      private function §;!e§(param1:String) : void
      {
         var _loc2_:TextField = this.§["2§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§9-§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§["2§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§@"#§,-this.§@"#§,_loc2_.width + 2 * this.§@"#§,_loc2_.height + 2 * this.§@"#§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§@"#§ / 2,-(this.§@"#§ / 2),_loc2_.width + 1 * this.§@"#§,_loc2_.height + 1 * this.§@"#§);
      }
      
      private function §@1§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§["2§ || this.§9-§ == null || this.§9-§.length == 0)
         {
            return;
         }
         if(param1 && §&1§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§["2§.y = _loc2_.y - this.§["2§.height - this.§@"#§;
            this.§["2§.x = _loc2_.x + mClip.width / 2 - this.§["2§.width / 2;
            _loc3_ = this.§["2§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§@"#§)
            {
               this.§["2§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§@"#§));
            }
            if(_loc3_.left < this.§@"#§)
            {
               this.§["2§.x += 1 + (this.§@"#§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§@"#§)
            {
               this.§["2§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§@"#§));
            }
            if(_loc3_.top < this.§@"#§)
            {
               this.§["2§.y += mClip.height + this.§["2§.height + this.§@"#§ * 2;
            }
            this.§["2§.visible = true;
         }
         else
         {
            this.§["2§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§!!C§ = COMPONENT_STATE_DISABLED;
         if(this.§["2§)
         {
            this.§9-§ = null;
            while(this.§["2§.numChildren > 0)
            {
               this.§["2§.removeChildAt(0);
            }
            if(this.§["2§.parent)
            {
               this.§["2§.parent.removeChild(this.§["2§);
            }
            this.§["2§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§!!C§ = param1;
         this.§1!e§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§[!T§ && §7!a§)
         {
            if(param1 == §6!s§)
            {
               if(this.§9!0§ != null)
               {
                  this.§9!0§.stop();
               }
               this.§9!0§ = §"!d§.§>!P§.§7R§(mClip,{
                  "scaleX":§7!a§.scaleX + 0.1,
                  "scaleY":§7!a§.scaleY + 0.1
               },null,0.1);
               this.§9!0§.play();
            }
            else if(param1 == §+!T§)
            {
               if(this.§9!0§ != null)
               {
                  this.§9!0§.stop();
               }
               this.§9!0§ = §"!d§.§>!P§.§7R§(mClip,{
                  "scaleX":§7!a§.scaleX,
                  "scaleY":§7!a§.scaleY
               },null,0.1);
               this.§9!0§.play();
            }
         }
         this.§[c§ = param1;
         this.§1!e§();
      }
      
      public function §1!e§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§!!C§ + "_" + this.§[c§,this.§!!C§ + "_" + §7!1§];
         if(this.§!!C§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§[c§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §7!1§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§&!7§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §&!7§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]j§
      {
         if(this.§!!C§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§6@§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§"!a§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§6!<§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§6!s§);
         }
         if(param1 == §?!_§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§+!T§);
         }
         if(param1 == §+!1§)
         {
            Mouse.cursor = this.§7!B§;
            this.setComponentVisualState(§6!s§);
         }
         this.§@1§(param1 == §+!1§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §"!a§() : void
      {
         if(this.§!!C§ == §3!W§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§3!W§.§9k§);
         }
         else if(this.§!!C§ == §3!W§.§9k§)
         {
            this.setComponentState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§1!e§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§@1§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§@1§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§9!0§)
         {
            this.§9!0§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§9!0§)
         {
            this.§9!0§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
