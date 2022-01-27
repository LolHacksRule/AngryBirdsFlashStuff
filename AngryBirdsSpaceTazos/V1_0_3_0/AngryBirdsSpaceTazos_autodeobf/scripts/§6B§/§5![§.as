package §6B§
{
   import §+=§.§?!Q§;
   import §,!7§.§5!k§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import com.rovio.assets.§>!;§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §5![§ extends §&9§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §`=§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const § E§:String = "Out";
      
      public static const §>!"§:String = "Over";
      
      public static const §=u§:String = "Up_Default";
      
      public static const §-"2§:String = "Down";
      
      public static var §3N§:Class;
      
      public static var §'!T§:Boolean = true;
      
      public static const §0"5§:String = "Tooltip";
      
      public static var §&L§:Boolean = true;
       
      
      public var §3"§:String;
      
      public var §;K§:String;
      
      public var §^9§:String;
      
      public var §=w§:MovieClip;
      
      public var §;]§:int = 6;
      
      private var §8!v§:Boolean = false;
      
      private var §in§:String = "auto";
      
      private var §"!;§:§15§;
      
      public function §5![§(param1:XML, param2:§5!k§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§3"§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§;K§ = §=u§;
         this.§&!a§();
         this.§&u§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§8!v§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§in§ = _loc4_;
            }
         }
         §7!B§(§21§,param1.@MouseOver);
         §7!B§(§=!^§,param1.@MouseOut);
      }
      
      public static function §#!l§() : void
      {
         §3N§ = §>!;§.§+!u§(§0"5§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§ E§);
         }
      }
      
      public function §&u§(param1:String) : void
      {
         this.§^9§ = param1;
         if(this.§^9§ && this.§^9§.length == 0)
         {
            this.§^9§ = null;
         }
         if(this.§^9§)
         {
            if(§'!T§)
            {
               §'!T§ = false;
               §#!l§();
            }
            this.§=w§ = new MovieClip();
            if(§3N§)
            {
               this.§2e§();
            }
            else
            {
               this.§5!>§();
            }
            this.§=w§.mouseEnabled = false;
            this.§=w§.mouseChildren = false;
            this.§=w§.visible = false;
            getParentView().addChild(this.§=w§);
         }
      }
      
      private function §5!>§() : void
      {
         this.§=w§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§=w§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§=w§.addChildAt(_loc2_,0);
         this.§6"F§(this.§^9§);
      }
      
      private function §2e§() : void
      {
         this.§=w§ = new §3N§();
         this.§4!G§(this.§^9§);
      }
      
      public function §4!G§(param1:String) : void
      {
         this.§^9§ = param1;
         if(§3N§)
         {
            this.§6!_§(param1);
         }
         else
         {
            this.§6"F§(param1);
         }
      }
      
      private function §6!_§(param1:String) : void
      {
         var _loc2_:TextField = this.§=w§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§=w§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§^9§;
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
      
      private function §6"F§(param1:String) : void
      {
         var _loc2_:TextField = this.§=w§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§^9§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§=w§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§;]§,-this.§;]§,_loc2_.width + 2 * this.§;]§,_loc2_.height + 2 * this.§;]§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§;]§ / 2,-(this.§;]§ / 2),_loc2_.width + 1 * this.§;]§,_loc2_.height + 1 * this.§;]§);
      }
      
      private function §!",§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§=w§ || this.§^9§ == null || this.§^9§.length == 0)
         {
            return;
         }
         if(param1 && §&L§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§=w§.y = _loc2_.y - this.§=w§.height - this.§;]§;
            this.§=w§.x = _loc2_.x + mClip.width / 2 - this.§=w§.width / 2;
            _loc3_ = this.§=w§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§;]§)
            {
               this.§=w§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§;]§));
            }
            if(_loc3_.left < this.§;]§)
            {
               this.§=w§.x += 1 + (this.§;]§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§;]§)
            {
               this.§=w§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§;]§));
            }
            if(_loc3_.top < this.§;]§)
            {
               this.§=w§.y += mClip.height + this.§=w§.height + this.§;]§ * 2;
            }
            this.§=w§.visible = true;
         }
         else
         {
            this.§=w§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§3"§ = COMPONENT_STATE_DISABLED;
         if(this.§=w§)
         {
            this.§^9§ = null;
            while(this.§=w§.numChildren > 0)
            {
               this.§=w§.removeChildAt(0);
            }
            if(this.§=w§.parent)
            {
               this.§=w§.parent.removeChild(this.§=w§);
            }
            this.§=w§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§3"§ = param1;
         this.§&!a§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§`"B§ && §`!_§)
         {
            if(param1 == §>!"§)
            {
               if(this.§"!;§ != null)
               {
                  this.§"!;§.stop();
               }
               this.§"!;§ = §@F§.§8!J§.§&6§(mClip,{
                  "scaleX":§`!_§.scaleX + 0.1,
                  "scaleY":§`!_§.scaleY + 0.1
               },null,0.1);
               this.§"!;§.play();
            }
            else if(param1 == § E§)
            {
               if(this.§"!;§ != null)
               {
                  this.§"!;§.stop();
               }
               this.§"!;§ = §@F§.§8!J§.§&6§(mClip,{
                  "scaleX":§`!_§.scaleX,
                  "scaleY":§`!_§.scaleY
               },null,0.1);
               this.§"!;§.play();
            }
         }
         this.§;K§ = param1;
         this.§&!a§();
      }
      
      public function §&!a§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§3"§ + "_" + this.§;K§,this.§3"§ + "_" + §=u§];
         if(this.§3"§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§;K§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §=u§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§?"?§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §?"?§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!Q§
      {
         if(this.§3"§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§8!v§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§["3§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§-"2§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§>!"§);
         }
         if(param1 == §=!^§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§ E§);
         }
         if(param1 == §21§)
         {
            Mouse.cursor = this.§in§;
            this.setComponentVisualState(§>!"§);
         }
         this.§!",§(param1 == §21§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §["3§() : void
      {
         if(this.§3"§ == §5![§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§5![§.§`=§);
         }
         else if(this.§3"§ == §5![§.§`=§)
         {
            this.setComponentState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§&!a§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§!",§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§!",§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§"!;§)
         {
            this.§"!;§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§"!;§)
         {
            this.§"!;§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
