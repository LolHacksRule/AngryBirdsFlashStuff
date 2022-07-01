package §>P§
{
   import §53§.§6!u§;
   import §53§.§["$§;
   import §;"+§.§^!i§;
   import §<" §.§]!g§;
   import com.rovio.assets.§2"&§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §-U§ extends §3!Z§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §;!G§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §'"-§:String = "Out";
      
      public static const §-"0§:String = "Over";
      
      public static const §7!P§:String = "Up_Default";
      
      public static const §>!K§:String = "Down";
      
      public static var §4!B§:Class;
      
      public static var §`C§:Boolean = true;
      
      public static const §=#§:String = "Tooltip";
      
      public static var §+5§:Boolean = true;
       
      
      public var §]!,§:String;
      
      public var §!!;§:String;
      
      public var §@P§:String;
      
      public var §68§:MovieClip;
      
      public var §3!U§:int = 6;
      
      private var §4!z§:Boolean = false;
      
      private var §9n§:String = "auto";
      
      private var § else§:§["$§;
      
      public function §-U§(param1:XML, param2:§^!i§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§]!,§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§!!;§ = §7!P§;
         this.§%Q§();
         this.§;@§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§4!z§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§9n§ = _loc4_;
            }
         }
         §[!"§(§%"+§,param1.@MouseOver);
         §[!"§(§-!^§,param1.@MouseOut);
      }
      
      public static function §4p§() : void
      {
         §4!B§ = §2"&§.§<$§(§=#§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§'"-§);
         }
      }
      
      public function §;@§(param1:String) : void
      {
         this.§@P§ = param1;
         if(this.§@P§ && this.§@P§.length == 0)
         {
            this.§@P§ = null;
         }
         if(this.§@P§)
         {
            if(§`C§)
            {
               §`C§ = false;
               §4p§();
            }
            this.§68§ = new MovieClip();
            if(§4!B§)
            {
               this.§3!G§();
            }
            else
            {
               this.§4!s§();
            }
            this.§68§.mouseEnabled = false;
            this.§68§.mouseChildren = false;
            this.§68§.visible = false;
            getParentView().addChild(this.§68§);
         }
      }
      
      private function §4!s§() : void
      {
         this.§68§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§68§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§68§.addChildAt(_loc2_,0);
         this.§!!T§(this.§@P§);
      }
      
      private function §3!G§() : void
      {
         this.§68§ = new §4!B§();
         this.§;q§(this.§@P§);
      }
      
      public function §;q§(param1:String) : void
      {
         this.§@P§ = param1;
         if(§4!B§)
         {
            this.§"!S§(param1);
         }
         else
         {
            this.§!!T§(param1);
         }
      }
      
      private function §"!S§(param1:String) : void
      {
         var _loc2_:TextField = this.§68§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§68§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§@P§;
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
      
      private function §!!T§(param1:String) : void
      {
         var _loc2_:TextField = this.§68§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§@P§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§68§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§3!U§,-this.§3!U§,_loc2_.width + 2 * this.§3!U§,_loc2_.height + 2 * this.§3!U§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§3!U§ / 2,-(this.§3!U§ / 2),_loc2_.width + 1 * this.§3!U§,_loc2_.height + 1 * this.§3!U§);
      }
      
      private function §>!U§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§68§ || this.§@P§ == null || this.§@P§.length == 0)
         {
            return;
         }
         if(param1 && §+5§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§68§.y = _loc2_.y - this.§68§.height - this.§3!U§;
            this.§68§.x = _loc2_.x + mClip.width / 2 - this.§68§.width / 2;
            _loc3_ = this.§68§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§3!U§)
            {
               this.§68§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§3!U§));
            }
            if(_loc3_.left < this.§3!U§)
            {
               this.§68§.x += 1 + (this.§3!U§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§3!U§)
            {
               this.§68§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§3!U§));
            }
            if(_loc3_.top < this.§3!U§)
            {
               this.§68§.y += mClip.height + this.§68§.height + this.§3!U§ * 2;
            }
            this.§68§.visible = true;
         }
         else
         {
            this.§68§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§]!,§ = COMPONENT_STATE_DISABLED;
         if(this.§68§)
         {
            this.§@P§ = null;
            while(this.§68§.numChildren > 0)
            {
               this.§68§.removeChildAt(0);
            }
            if(this.§68§.parent)
            {
               this.§68§.parent.removeChild(this.§68§);
            }
            this.§68§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§]!,§ = param1;
         this.§%Q§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§7"6§ && §72§)
         {
            if(param1 == §-"0§)
            {
               if(this.§ else§ != null)
               {
                  this.§ else§.stop();
               }
               this.§ else§ = §6!u§.§"e§.§0!O§(mClip,{
                  "scaleX":§72§.scaleX + 0.1,
                  "scaleY":§72§.scaleY + 0.1
               },null,0.1);
               this.§ else§.play();
            }
            else if(param1 == §'"-§)
            {
               if(this.§ else§ != null)
               {
                  this.§ else§.stop();
               }
               this.§ else§ = §6!u§.§"e§.§0!O§(mClip,{
                  "scaleX":§72§.scaleX,
                  "scaleY":§72§.scaleY
               },null,0.1);
               this.§ else§.play();
            }
         }
         this.§!!;§ = param1;
         this.§%Q§();
      }
      
      public function §%Q§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§]!,§ + "_" + this.§!!;§,this.§]!,§ + "_" + §7!P§];
         if(this.§]!,§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§!!;§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §7!P§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§1!#§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §1!#§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]!g§
      {
         if(this.§]!,§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§4!z§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§>!d§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§>!K§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§-"0§);
         }
         if(param1 == §-!^§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§'"-§);
         }
         if(param1 == §%"+§)
         {
            Mouse.cursor = this.§9n§;
            this.setComponentVisualState(§-"0§);
         }
         this.§>!U§(param1 == §%"+§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §>!d§() : void
      {
         if(this.§]!,§ == §-U§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§-U§.§;!G§);
         }
         else if(this.§]!,§ == §-U§.§;!G§)
         {
            this.setComponentState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§%Q§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§>!U§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§>!U§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§ else§)
         {
            this.§ else§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§ else§)
         {
            this.§ else§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
