package §,L§
{
   import §-!;§.§>!B§;
   import §0"$§.§"!a§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.rovio.assets.§<V§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §%J§ extends §;[§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §2!r§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §%!N§:String = "Out";
      
      public static const §;!t§:String = "Over";
      
      public static const §6!y§:String = "Up_Default";
      
      public static const §%!$§:String = "Down";
      
      public static var §=!I§:Class;
      
      public static var §-K§:Boolean = true;
      
      public static const §]n§:String = "Tooltip";
      
      public static var §+;§:Boolean = true;
       
      
      public var §<6§:String;
      
      public var §%N§:String;
      
      public var §>G§:String;
      
      public var §42§:MovieClip;
      
      public var §>B§:int = 6;
      
      private var §0v§:Boolean = false;
      
      private var §3V§:String = "auto";
      
      private var §4!+§:§0]§;
      
      public function §%J§(param1:XML, param2:§"!a§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§<6§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§%N§ = §6!y§;
         this.§^!%§();
         this.§&!+§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§0v§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§3V§ = _loc4_;
            }
         }
         §9E§(§,!y§,param1.@MouseOver);
         §9E§(§-g§,param1.@MouseOut);
      }
      
      public static function §3!J§() : void
      {
         §=!I§ = §<V§.§"!,§(§]n§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§%!N§);
         }
      }
      
      public function §&!+§(param1:String) : void
      {
         this.§>G§ = param1;
         if(this.§>G§ && this.§>G§.length == 0)
         {
            this.§>G§ = null;
         }
         if(this.§>G§)
         {
            if(§-K§)
            {
               §-K§ = false;
               §3!J§();
            }
            this.§42§ = new MovieClip();
            if(§=!I§)
            {
               this.§=l§();
            }
            else
            {
               this.§'" §();
            }
            this.§42§.mouseEnabled = false;
            this.§42§.mouseChildren = false;
            this.§42§.visible = false;
            getParentView().addChild(this.§42§);
         }
      }
      
      private function §'" §() : void
      {
         this.§42§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§42§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§42§.addChildAt(_loc2_,0);
         this.§0!W§(this.§>G§);
      }
      
      private function §=l§() : void
      {
         this.§42§ = new §=!I§();
         this.§1!X§(this.§>G§);
      }
      
      public function §1!X§(param1:String) : void
      {
         this.§>G§ = param1;
         if(§=!I§)
         {
            this.§>!U§(param1);
         }
         else
         {
            this.§0!W§(param1);
         }
      }
      
      private function §>!U§(param1:String) : void
      {
         var _loc2_:TextField = this.§42§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§42§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§>G§;
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
      
      private function §0!W§(param1:String) : void
      {
         var _loc2_:TextField = this.§42§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§>G§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§42§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§>B§,-this.§>B§,_loc2_.width + 2 * this.§>B§,_loc2_.height + 2 * this.§>B§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§>B§ / 2,-(this.§>B§ / 2),_loc2_.width + 1 * this.§>B§,_loc2_.height + 1 * this.§>B§);
      }
      
      private function §2" §(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§42§ || this.§>G§ == null || this.§>G§.length == 0)
         {
            return;
         }
         if(param1 && §+;§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§42§.y = _loc2_.y - this.§42§.height - this.§>B§;
            this.§42§.x = _loc2_.x + mClip.width / 2 - this.§42§.width / 2;
            _loc3_ = this.§42§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§>B§)
            {
               this.§42§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§>B§));
            }
            if(_loc3_.left < this.§>B§)
            {
               this.§42§.x += 1 + (this.§>B§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§>B§)
            {
               this.§42§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§>B§));
            }
            if(_loc3_.top < this.§>B§)
            {
               this.§42§.y += mClip.height + this.§42§.height + this.§>B§ * 2;
            }
            this.§42§.visible = true;
         }
         else
         {
            this.§42§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§<6§ = COMPONENT_STATE_DISABLED;
         if(this.§42§)
         {
            this.§>G§ = null;
            while(this.§42§.numChildren > 0)
            {
               this.§42§.removeChildAt(0);
            }
            if(this.§42§.parent)
            {
               this.§42§.parent.removeChild(this.§42§);
            }
            this.§42§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§<6§ = param1;
         this.§^!%§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§^!D§ && §+!>§)
         {
            if(param1 == §;!t§)
            {
               if(this.§4!+§ != null)
               {
                  this.§4!+§.stop();
               }
               this.§4!+§ = §'^§.§2Z§.§!!f§(mClip,{
                  "scaleX":§+!>§.scaleX + 0.1,
                  "scaleY":§+!>§.scaleY + 0.1
               },null,0.1);
               this.§4!+§.play();
            }
            else if(param1 == §%!N§)
            {
               if(this.§4!+§ != null)
               {
                  this.§4!+§.stop();
               }
               this.§4!+§ = §'^§.§2Z§.§!!f§(mClip,{
                  "scaleX":§+!>§.scaleX,
                  "scaleY":§+!>§.scaleY
               },null,0.1);
               this.§4!+§.play();
            }
         }
         this.§%N§ = param1;
         this.§^!%§();
      }
      
      public function §^!%§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§<6§ + "_" + this.§%N§,this.§<6§ + "_" + §6!y§];
         if(this.§<6§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%N§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §6!y§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§1!]§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §1!]§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §>!B§
      {
         if(this.§<6§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§0v§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§^!$§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§%!$§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§;!t§);
         }
         if(param1 == §-g§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§%!N§);
         }
         if(param1 == §,!y§)
         {
            Mouse.cursor = this.§3V§;
            this.setComponentVisualState(§;!t§);
         }
         this.§2" §(param1 == §,!y§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §^!$§() : void
      {
         if(this.§<6§ == §%J§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§%J§.§2!r§);
         }
         else if(this.§<6§ == §%J§.§2!r§)
         {
            this.setComponentState(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§^!%§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§2" §(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§2" §(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§4!+§)
         {
            this.§4!+§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§4!+§)
         {
            this.§4!+§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
