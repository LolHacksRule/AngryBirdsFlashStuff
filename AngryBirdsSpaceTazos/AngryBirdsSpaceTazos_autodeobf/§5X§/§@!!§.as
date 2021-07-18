package §5X§
{
   import §77§.§ ",§;
   import §<W§.§]"+§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import com.rovio.assets.§ !h§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §@!!§ extends §8n§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §else §:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §;!<§:String = "Out";
      
      public static const §[a§:String = "Over";
      
      public static const §%!B§:String = "Up_Default";
      
      public static const §!"2§:String = "Down";
      
      public static var §["<§:Class;
      
      public static var §!!-§:Boolean = true;
      
      public static const §@X§:String = "Tooltip";
      
      public static var §+!'§:Boolean = true;
       
      
      public var §3w§:String;
      
      public var §2!N§:String;
      
      public var §8"G§:String;
      
      public var §%1§:MovieClip;
      
      public var §#!?§:int = 6;
      
      private var §!%§:Boolean = false;
      
      private var §2W§:String = "auto";
      
      private var §&W§:§5!9§;
      
      public function §@!!§(param1:XML, param2:§ ",§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§3w§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§2!N§ = §%!B§;
         this.§8"D§();
         this.§=! §(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§!%§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§2W§ = _loc4_;
            }
         }
         §]!d§(§3!R§,param1.@MouseOver);
         §]!d§(§ h§,param1.@MouseOut);
      }
      
      public static function §1@§() : void
      {
         §["<§ = § !h§.§["3§(§@X§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§;!<§);
         }
      }
      
      public function §=! §(param1:String) : void
      {
         this.§8"G§ = param1;
         if(this.§8"G§ && this.§8"G§.length == 0)
         {
            this.§8"G§ = null;
         }
         if(this.§8"G§)
         {
            if(§!!-§)
            {
               §!!-§ = false;
               §1@§();
            }
            this.§%1§ = new MovieClip();
            if(§["<§)
            {
               this.§9U§();
            }
            else
            {
               this.§1!b§();
            }
            this.§%1§.mouseEnabled = false;
            this.§%1§.mouseChildren = false;
            this.§%1§.visible = false;
            getParentView().addChild(this.§%1§);
         }
      }
      
      private function §1!b§() : void
      {
         this.§%1§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§%1§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§%1§.addChildAt(_loc2_,0);
         this.§,!n§(this.§8"G§);
      }
      
      private function §9U§() : void
      {
         this.§%1§ = new §["<§();
         this.§0F§(this.§8"G§);
      }
      
      public function §0F§(param1:String) : void
      {
         this.§8"G§ = param1;
         if(§["<§)
         {
            this.§#!z§(param1);
         }
         else
         {
            this.§,!n§(param1);
         }
      }
      
      private function §#!z§(param1:String) : void
      {
         var _loc2_:TextField = this.§%1§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§%1§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§8"G§;
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
      
      private function §,!n§(param1:String) : void
      {
         var _loc2_:TextField = this.§%1§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§8"G§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§%1§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§#!?§,-this.§#!?§,_loc2_.width + 2 * this.§#!?§,_loc2_.height + 2 * this.§#!?§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§#!?§ / 2,-(this.§#!?§ / 2),_loc2_.width + 1 * this.§#!?§,_loc2_.height + 1 * this.§#!?§);
      }
      
      private function §3"0§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§%1§ || this.§8"G§ == null || this.§8"G§.length == 0)
         {
            return;
         }
         if(param1 && §+!'§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§%1§.y = _loc2_.y - this.§%1§.height - this.§#!?§;
            this.§%1§.x = _loc2_.x + mClip.width / 2 - this.§%1§.width / 2;
            _loc3_ = this.§%1§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§#!?§)
            {
               this.§%1§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§#!?§));
            }
            if(_loc3_.left < this.§#!?§)
            {
               this.§%1§.x += 1 + (this.§#!?§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§#!?§)
            {
               this.§%1§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§#!?§));
            }
            if(_loc3_.top < this.§#!?§)
            {
               this.§%1§.y += mClip.height + this.§%1§.height + this.§#!?§ * 2;
            }
            this.§%1§.visible = true;
         }
         else
         {
            this.§%1§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§3w§ = COMPONENT_STATE_DISABLED;
         if(this.§%1§)
         {
            this.§8"G§ = null;
            while(this.§%1§.numChildren > 0)
            {
               this.§%1§.removeChildAt(0);
            }
            if(this.§%1§.parent)
            {
               this.§%1§.parent.removeChild(this.§%1§);
            }
            this.§%1§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§3w§ = param1;
         this.§8"D§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§-O§)
         {
            if(param1 == §[a§)
            {
               if(this.§&W§ != null)
               {
                  this.§&W§.stop();
               }
               this.§&W§ = §!D§.§[!1§.§1"<§(mClip,{
                  "scaleX":§3!M§.scaleX + 0.1,
                  "scaleY":§3!M§.scaleY + 0.1
               },null,0.1);
               this.§&W§.play();
            }
            else if(param1 == §;!<§)
            {
               if(this.§&W§ != null)
               {
                  this.§&W§.stop();
               }
               this.§&W§ = §!D§.§[!1§.§1"<§(mClip,{
                  "scaleX":§3!M§.scaleX,
                  "scaleY":§3!M§.scaleY
               },null,0.1);
               this.§&W§.play();
            }
         }
         this.§2!N§ = param1;
         this.§8"D§();
      }
      
      public function §8"D§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§3w§ + "_" + this.§2!N§,this.§3w§ + "_" + §%!B§];
         if(this.§3w§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§2!N§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §%!B§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§#!E§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §#!E§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]"+§
      {
         if(this.§3w§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§!%§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§#!,§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§!"2§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§[a§);
         }
         if(param1 == § h§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§;!<§);
         }
         if(param1 == §3!R§)
         {
            Mouse.cursor = this.§2W§;
            this.setComponentVisualState(§[a§);
         }
         this.§3"0§(param1 == §3!R§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §#!,§() : void
      {
         if(this.§3w§ == §@!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§@!!§.§else §);
         }
         else if(this.§3w§ == §@!!§.§else §)
         {
            this.setComponentState(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§8"D§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§3"0§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§3"0§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§&W§)
         {
            this.§&W§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§&W§)
         {
            this.§&W§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
