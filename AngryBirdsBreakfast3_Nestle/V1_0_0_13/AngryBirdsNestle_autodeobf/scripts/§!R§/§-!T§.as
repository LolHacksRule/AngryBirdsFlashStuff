package §!R§
{
   import §&!I§.§9!C§;
   import §4Y§.§%n§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import com.rovio.assets.§1!C§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §-!T§ extends §9!8§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,!H§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §9M§:String = "Out";
      
      public static const §;!P§:String = "Over";
      
      public static const §%]§:String = "Up_Default";
      
      public static const §"W§:String = "Down";
      
      public static var §[x§:Class;
      
      public static var §[=§:Boolean = true;
      
      public static const §1!j§:String = "Tooltip";
      
      public static var § X§:Boolean = true;
       
      
      public var §`+§:String;
      
      public var §6!e§:String;
      
      public var §<!'§:String;
      
      public var §0V§:MovieClip;
      
      public var §<6§:int = 6;
      
      private var §6W§:Boolean = false;
      
      private var §5!0§:String = "auto";
      
      private var §>l§:§^!T§;
      
      public function §-!T§(param1:XML, param2:§%n§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§`+§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§6!e§ = §%]§;
         this.§&!u§();
         this.§?L§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§6W§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§5!0§ = _loc4_;
            }
         }
         §0!U§(§<!>§,param1.@MouseOver);
         §0!U§(§!""§,param1.@MouseOut);
      }
      
      public static function §7!z§() : void
      {
         §[x§ = §1!C§.§"!&§(§1!j§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§9M§);
         }
      }
      
      public function §?L§(param1:String) : void
      {
         this.§<!'§ = param1;
         if(this.§<!'§ && this.§<!'§.length == 0)
         {
            this.§<!'§ = null;
         }
         if(this.§<!'§)
         {
            if(§[=§)
            {
               §[=§ = false;
               §7!z§();
            }
            this.§0V§ = new MovieClip();
            if(§[x§)
            {
               this.§ !U§();
            }
            else
            {
               this.§8!^§();
            }
            this.§0V§.mouseEnabled = false;
            this.§0V§.mouseChildren = false;
            this.§0V§.visible = false;
            getParentView().addChild(this.§0V§);
         }
      }
      
      private function §8!^§() : void
      {
         this.§0V§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§0V§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§0V§.addChildAt(_loc2_,0);
         this.§5!K§(this.§<!'§);
      }
      
      private function § !U§() : void
      {
         this.§0V§ = new §[x§();
         this.§;!A§(this.§<!'§);
      }
      
      public function §;!A§(param1:String) : void
      {
         this.§<!'§ = param1;
         if(§[x§)
         {
            this.§@!+§(param1);
         }
         else
         {
            this.§5!K§(param1);
         }
      }
      
      private function §@!+§(param1:String) : void
      {
         var _loc2_:TextField = this.§0V§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§0V§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§<!'§;
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
      
      private function §5!K§(param1:String) : void
      {
         var _loc2_:TextField = this.§0V§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§<!'§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§0V§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§<6§,-this.§<6§,_loc2_.width + 2 * this.§<6§,_loc2_.height + 2 * this.§<6§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§<6§ / 2,-(this.§<6§ / 2),_loc2_.width + 1 * this.§<6§,_loc2_.height + 1 * this.§<6§);
      }
      
      private function §0m§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§0V§ || this.§<!'§ == null || this.§<!'§.length == 0)
         {
            return;
         }
         if(param1 && § X§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§0V§.y = _loc2_.y - this.§0V§.height - this.§<6§;
            this.§0V§.x = _loc2_.x + mClip.width / 2 - this.§0V§.width / 2;
            _loc3_ = this.§0V§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§<6§)
            {
               this.§0V§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§<6§));
            }
            if(_loc3_.left < this.§<6§)
            {
               this.§0V§.x += 1 + (this.§<6§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§<6§)
            {
               this.§0V§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§<6§));
            }
            if(_loc3_.top < this.§<6§)
            {
               this.§0V§.y += mClip.height + this.§0V§.height + this.§<6§ * 2;
            }
            this.§0V§.visible = true;
         }
         else
         {
            this.§0V§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§`+§ = COMPONENT_STATE_DISABLED;
         if(this.§0V§)
         {
            this.§<!'§ = null;
            while(this.§0V§.numChildren > 0)
            {
               this.§0V§.removeChildAt(0);
            }
            if(this.§0V§.parent)
            {
               this.§0V§.parent.removeChild(this.§0V§);
            }
            this.§0V§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§`+§ = param1;
         this.§&!u§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§0!@§ && §5W§)
         {
            if(param1 == §;!P§)
            {
               if(this.§>l§ != null)
               {
                  this.§>l§.stop();
               }
               this.§>l§ = §%"!§.§&!;§.§"!]§(mClip,{
                  "scaleX":§5W§.scaleX + 0.1,
                  "scaleY":§5W§.scaleY + 0.1
               },null,0.1);
               this.§>l§.play();
            }
            else if(param1 == §9M§)
            {
               if(this.§>l§ != null)
               {
                  this.§>l§.stop();
               }
               this.§>l§ = §%"!§.§&!;§.§"!]§(mClip,{
                  "scaleX":§5W§.scaleX,
                  "scaleY":§5W§.scaleY
               },null,0.1);
               this.§>l§.play();
            }
         }
         this.§6!e§ = param1;
         this.§&!u§();
      }
      
      public function §&!u§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§`+§ + "_" + this.§6!e§,this.§`+§ + "_" + §%]§];
         if(this.§`+§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§6!e§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §%]§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§+"0§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §+"0§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §9!C§
      {
         if(this.§`+§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§6W§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§3O§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§"W§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§;!P§);
         }
         if(param1 == §!""§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§9M§);
         }
         if(param1 == §<!>§)
         {
            Mouse.cursor = this.§5!0§;
            this.setComponentVisualState(§;!P§);
         }
         this.§0m§(param1 == §<!>§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §3O§() : void
      {
         if(this.§`+§ == §-!T§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§-!T§.§,!H§);
         }
         else if(this.§`+§ == §-!T§.§,!H§)
         {
            this.setComponentState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§&!u§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§0m§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§0m§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§>l§)
         {
            this.§>l§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§>l§)
         {
            this.§>l§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
