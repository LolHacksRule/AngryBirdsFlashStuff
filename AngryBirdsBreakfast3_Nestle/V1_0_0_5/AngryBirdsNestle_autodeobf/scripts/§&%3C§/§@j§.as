package §&<§
{
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §8,§.§8!h§;
   import §[!F§.§3j§;
   import com.rovio.assets.§<U§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §@j§ extends §2!q§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §]P§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §?K§:String = "Out";
      
      public static const §%W§:String = "Over";
      
      public static const §^!;§:String = "Up_Default";
      
      public static const §7&§:String = "Down";
      
      public static var §6!F§:Class;
      
      public static var §%r§:Boolean = true;
      
      public static const §5!P§:String = "Tooltip";
      
      public static var §<P§:Boolean = true;
       
      
      public var §-`§:String;
      
      public var §[!G§:String;
      
      public var §]!c§:String;
      
      public var §]"$§:MovieClip;
      
      public var §`!T§:int = 6;
      
      private var §5!n§:Boolean = false;
      
      private var §1!^§:String = "auto";
      
      private var §1!g§:§<!'§;
      
      public function §@j§(param1:XML, param2:§3j§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§-`§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§[!G§ = §^!;§;
         this.§"!6§();
         this.§1!`§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§5!n§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§1!^§ = _loc4_;
            }
         }
         §0!0§(§^!2§,param1.@MouseOver);
         §0!0§(§+!b§,param1.@MouseOut);
      }
      
      public static function §1T§() : void
      {
         §6!F§ = §<U§.§5"0§(§5!P§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§?K§);
         }
      }
      
      public function §1!`§(param1:String) : void
      {
         this.§]!c§ = param1;
         if(this.§]!c§ && this.§]!c§.length == 0)
         {
            this.§]!c§ = null;
         }
         if(this.§]!c§)
         {
            if(§%r§)
            {
               §%r§ = false;
               §1T§();
            }
            this.§]"$§ = new MovieClip();
            if(§6!F§)
            {
               this.§1!f§();
            }
            else
            {
               this.§<"§();
            }
            this.§]"$§.mouseEnabled = false;
            this.§]"$§.mouseChildren = false;
            this.§]"$§.visible = false;
            getParentView().addChild(this.§]"$§);
         }
      }
      
      private function §<"§() : void
      {
         this.§]"$§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§]"$§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§]"$§.addChildAt(_loc2_,0);
         this.§6E§(this.§]!c§);
      }
      
      private function §1!f§() : void
      {
         this.§]"$§ = new §6!F§();
         this.§?Q§(this.§]!c§);
      }
      
      public function §?Q§(param1:String) : void
      {
         this.§]!c§ = param1;
         if(§6!F§)
         {
            this.§?'§(param1);
         }
         else
         {
            this.§6E§(param1);
         }
      }
      
      private function §?'§(param1:String) : void
      {
         var _loc2_:TextField = this.§]"$§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§]"$§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§]!c§;
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
      
      private function §6E§(param1:String) : void
      {
         var _loc2_:TextField = this.§]"$§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§]!c§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§]"$§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§`!T§,-this.§`!T§,_loc2_.width + 2 * this.§`!T§,_loc2_.height + 2 * this.§`!T§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§`!T§ / 2,-(this.§`!T§ / 2),_loc2_.width + 1 * this.§`!T§,_loc2_.height + 1 * this.§`!T§);
      }
      
      private function §5!^§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§]"$§ || this.§]!c§ == null || this.§]!c§.length == 0)
         {
            return;
         }
         if(param1 && §<P§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§]"$§.y = _loc2_.y - this.§]"$§.height - this.§`!T§;
            this.§]"$§.x = _loc2_.x + mClip.width / 2 - this.§]"$§.width / 2;
            _loc3_ = this.§]"$§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§`!T§)
            {
               this.§]"$§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§`!T§));
            }
            if(_loc3_.left < this.§`!T§)
            {
               this.§]"$§.x += 1 + (this.§`!T§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§`!T§)
            {
               this.§]"$§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§`!T§));
            }
            if(_loc3_.top < this.§`!T§)
            {
               this.§]"$§.y += mClip.height + this.§]"$§.height + this.§`!T§ * 2;
            }
            this.§]"$§.visible = true;
         }
         else
         {
            this.§]"$§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§-`§ = COMPONENT_STATE_DISABLED;
         if(this.§]"$§)
         {
            this.§]!c§ = null;
            while(this.§]"$§.numChildren > 0)
            {
               this.§]"$§.removeChildAt(0);
            }
            if(this.§]"$§.parent)
            {
               this.§]"$§.parent.removeChild(this.§]"$§);
            }
            this.§]"$§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§-`§ = param1;
         this.§"!6§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§!x§ && §,$§)
         {
            if(param1 == §%W§)
            {
               if(this.§1!g§ != null)
               {
                  this.§1!g§.stop();
               }
               this.§1!g§ = §3`§.§<"5§.§^g§(mClip,{
                  "scaleX":§,$§.scaleX + 0.1,
                  "scaleY":§,$§.scaleY + 0.1
               },null,0.1);
               this.§1!g§.play();
            }
            else if(param1 == §?K§)
            {
               if(this.§1!g§ != null)
               {
                  this.§1!g§.stop();
               }
               this.§1!g§ = §3`§.§<"5§.§^g§(mClip,{
                  "scaleX":§,$§.scaleX,
                  "scaleY":§,$§.scaleY
               },null,0.1);
               this.§1!g§.play();
            }
         }
         this.§[!G§ = param1;
         this.§"!6§();
      }
      
      public function §"!6§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§-`§ + "_" + this.§[!G§,this.§-`§ + "_" + §^!;§];
         if(this.§-`§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§[!G§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §^!;§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§6!Y§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §6!Y§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §8!h§
      {
         if(this.§-`§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§5!n§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§#v§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§7&§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§%W§);
         }
         if(param1 == §+!b§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§?K§);
         }
         if(param1 == §^!2§)
         {
            Mouse.cursor = this.§1!^§;
            this.setComponentVisualState(§%W§);
         }
         this.§5!^§(param1 == §^!2§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §#v§() : void
      {
         if(this.§-`§ == §@j§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§@j§.§]P§);
         }
         else if(this.§-`§ == §@j§.§]P§)
         {
            this.setComponentState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§"!6§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§5!^§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§5!^§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§1!g§)
         {
            this.§1!g§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§1!g§)
         {
            this.§1!g§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
