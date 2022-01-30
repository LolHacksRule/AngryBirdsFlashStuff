package §@f§
{
   import §3!!§.§5" §;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!L§.§?!d§;
   import com.rovio.assets.§^1§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §4d§ extends §7h§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §&!i§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §'!x§:String = "Out";
      
      public static const §,!m§:String = "Over";
      
      public static const §^!1§:String = "Up_Default";
      
      public static const §9!U§:String = "Down";
      
      public static var §2[§:Class;
      
      public static var §5%§:Boolean = true;
      
      public static const §^g§:String = "Tooltip";
      
      public static var §9!'§:Boolean = true;
       
      
      public var §`O§:String;
      
      public var §#""§:String;
      
      public var §5x§:String;
      
      public var §3!A§:MovieClip;
      
      public var §!!r§:int = 6;
      
      private var §#Z§:Boolean = false;
      
      private var §+!+§:String = "auto";
      
      private var §1]§:§]!X§;
      
      public function §4d§(param1:XML, param2:§5" §, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§`O§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§#""§ = §^!1§;
         this.§`!R§();
         this.§#$§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§#Z§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§+!+§ = _loc4_;
            }
         }
         §8y§(§ !@§,param1.@MouseOver);
         §8y§(§<![§,param1.@MouseOut);
      }
      
      public static function §=8§() : void
      {
         §2[§ = §^1§.§+!I§(§^g§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§'!x§);
         }
      }
      
      public function §#$§(param1:String) : void
      {
         this.§5x§ = param1;
         if(this.§5x§ && this.§5x§.length == 0)
         {
            this.§5x§ = null;
         }
         if(this.§5x§)
         {
            if(§5%§)
            {
               §5%§ = false;
               §=8§();
            }
            this.§3!A§ = new MovieClip();
            if(§2[§)
            {
               this.§+J§();
            }
            else
            {
               this.§"+§();
            }
            this.§3!A§.mouseEnabled = false;
            this.§3!A§.mouseChildren = false;
            this.§3!A§.visible = false;
            getParentView().addChild(this.§3!A§);
         }
      }
      
      private function §"+§() : void
      {
         this.§3!A§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§3!A§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§3!A§.addChildAt(_loc2_,0);
         this.§3!H§(this.§5x§);
      }
      
      private function §+J§() : void
      {
         this.§3!A§ = new §2[§();
         this.§^!v§(this.§5x§);
      }
      
      public function §^!v§(param1:String) : void
      {
         this.§5x§ = param1;
         if(§2[§)
         {
            this.§?!-§(param1);
         }
         else
         {
            this.§3!H§(param1);
         }
      }
      
      private function §?!-§(param1:String) : void
      {
         var _loc2_:TextField = this.§3!A§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§3!A§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§5x§;
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
      
      private function §3!H§(param1:String) : void
      {
         var _loc2_:TextField = this.§3!A§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§5x§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§3!A§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§!!r§,-this.§!!r§,_loc2_.width + 2 * this.§!!r§,_loc2_.height + 2 * this.§!!r§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§!!r§ / 2,-(this.§!!r§ / 2),_loc2_.width + 1 * this.§!!r§,_loc2_.height + 1 * this.§!!r§);
      }
      
      private function §9<§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§3!A§ || this.§5x§ == null || this.§5x§.length == 0)
         {
            return;
         }
         if(param1 && §9!'§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§3!A§.y = _loc2_.y - this.§3!A§.height - this.§!!r§;
            this.§3!A§.x = _loc2_.x + mClip.width / 2 - this.§3!A§.width / 2;
            _loc3_ = this.§3!A§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§!!r§)
            {
               this.§3!A§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§!!r§));
            }
            if(_loc3_.left < this.§!!r§)
            {
               this.§3!A§.x += 1 + (this.§!!r§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§!!r§)
            {
               this.§3!A§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§!!r§));
            }
            if(_loc3_.top < this.§!!r§)
            {
               this.§3!A§.y += mClip.height + this.§3!A§.height + this.§!!r§ * 2;
            }
            this.§3!A§.visible = true;
         }
         else
         {
            this.§3!A§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§`O§ = COMPONENT_STATE_DISABLED;
         if(this.§3!A§)
         {
            this.§5x§ = null;
            while(this.§3!A§.numChildren > 0)
            {
               this.§3!A§.removeChildAt(0);
            }
            if(this.§3!A§.parent)
            {
               this.§3!A§.parent.removeChild(this.§3!A§);
            }
            this.§3!A§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§`O§ = param1;
         this.§`!R§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§8f§ && §'!b§)
         {
            if(param1 == §,!m§)
            {
               if(this.§1]§ != null)
               {
                  this.§1]§.stop();
               }
               this.§1]§ = §`!F§.§=J§.§-r§(mClip,{
                  "scaleX":§'!b§.scaleX + 0.1,
                  "scaleY":§'!b§.scaleY + 0.1
               },null,0.1);
               this.§1]§.play();
            }
            else if(param1 == §'!x§)
            {
               if(this.§1]§ != null)
               {
                  this.§1]§.stop();
               }
               this.§1]§ = §`!F§.§=J§.§-r§(mClip,{
                  "scaleX":§'!b§.scaleX,
                  "scaleY":§'!b§.scaleY
               },null,0.1);
               this.§1]§.play();
            }
         }
         this.§#""§ = param1;
         this.§`!R§();
      }
      
      public function §`!R§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§`O§ + "_" + this.§#""§,this.§`O§ + "_" + §^!1§];
         if(this.§`O§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§#""§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §^!1§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§8!l§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §8!l§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §?!d§
      {
         if(this.§`O§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§#Z§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§0!u§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§9!U§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§,!m§);
         }
         if(param1 == §<![§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§'!x§);
         }
         if(param1 == § !@§)
         {
            Mouse.cursor = this.§+!+§;
            this.setComponentVisualState(§,!m§);
         }
         this.§9<§(param1 == § !@§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §0!u§() : void
      {
         if(this.§`O§ == §4d§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§4d§.§&!i§);
         }
         else if(this.§`O§ == §4d§.§&!i§)
         {
            this.setComponentState(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§`!R§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§9<§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§9<§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§1]§)
         {
            this.§1]§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§1]§)
         {
            this.§1]§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
