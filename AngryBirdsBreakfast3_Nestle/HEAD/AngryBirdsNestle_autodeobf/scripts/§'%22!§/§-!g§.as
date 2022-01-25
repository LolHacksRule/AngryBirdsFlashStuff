package §'"!§
{
   import §!""§.§]H§;
   import §2u§.§,6§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import com.rovio.assets.§=!V§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §-!g§ extends §<!7§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §+O§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §'!F§:String = "Out";
      
      public static const §@!+§:String = "Over";
      
      public static const §>!U§:String = "Up_Default";
      
      public static const §&j§:String = "Down";
      
      public static var §1Y§:Class;
      
      public static var §6!^§:Boolean = true;
      
      public static const §8-§:String = "Tooltip";
      
      public static var §,!c§:Boolean = true;
       
      
      public var §@!x§:String;
      
      public var §<!m§:String;
      
      public var §[!O§:String;
      
      public var §"i§:MovieClip;
      
      public var §]!W§:int = 6;
      
      private var §`" §:Boolean = false;
      
      private var §=B§:String = "auto";
      
      private var §9s§:§]W§;
      
      public function §-!g§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§@!x§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§<!m§ = §>!U§;
         this.§ !Q§();
         this.§3!§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§`" § = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§=B§ = _loc4_;
            }
         }
         §^1§(§]'§,param1.@MouseOver);
         §^1§(§<!H§,param1.@MouseOut);
      }
      
      public static function §2!F§() : void
      {
         §1Y§ = §=!V§.§?!O§(§8-§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§'!F§);
         }
      }
      
      public function §3!§(param1:String) : void
      {
         this.§[!O§ = param1;
         if(this.§[!O§ && this.§[!O§.length == 0)
         {
            this.§[!O§ = null;
         }
         if(this.§[!O§)
         {
            if(§6!^§)
            {
               §6!^§ = false;
               §2!F§();
            }
            this.§"i§ = new MovieClip();
            if(§1Y§)
            {
               this.§-9§();
            }
            else
            {
               this.§#-§();
            }
            this.§"i§.mouseEnabled = false;
            this.§"i§.mouseChildren = false;
            this.§"i§.visible = false;
            getParentView().addChild(this.§"i§);
         }
      }
      
      private function §#-§() : void
      {
         this.§"i§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§"i§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§"i§.addChildAt(_loc2_,0);
         this.§3!'§(this.§[!O§);
      }
      
      private function §-9§() : void
      {
         this.§"i§ = new §1Y§();
         this.§4!o§(this.§[!O§);
      }
      
      public function §4!o§(param1:String) : void
      {
         this.§[!O§ = param1;
         if(§1Y§)
         {
            this.§,O§(param1);
         }
         else
         {
            this.§3!'§(param1);
         }
      }
      
      private function §,O§(param1:String) : void
      {
         var _loc2_:TextField = this.§"i§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"i§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§[!O§;
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
      
      private function §3!'§(param1:String) : void
      {
         var _loc2_:TextField = this.§"i§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§[!O§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§"i§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§]!W§,-this.§]!W§,_loc2_.width + 2 * this.§]!W§,_loc2_.height + 2 * this.§]!W§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§]!W§ / 2,-(this.§]!W§ / 2),_loc2_.width + 1 * this.§]!W§,_loc2_.height + 1 * this.§]!W§);
      }
      
      private function §^k§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§"i§ || this.§[!O§ == null || this.§[!O§.length == 0)
         {
            return;
         }
         if(param1 && §,!c§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§"i§.y = _loc2_.y - this.§"i§.height - this.§]!W§;
            this.§"i§.x = _loc2_.x + mClip.width / 2 - this.§"i§.width / 2;
            _loc3_ = this.§"i§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§]!W§)
            {
               this.§"i§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]!W§));
            }
            if(_loc3_.left < this.§]!W§)
            {
               this.§"i§.x += 1 + (this.§]!W§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§]!W§)
            {
               this.§"i§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]!W§));
            }
            if(_loc3_.top < this.§]!W§)
            {
               this.§"i§.y += mClip.height + this.§"i§.height + this.§]!W§ * 2;
            }
            this.§"i§.visible = true;
         }
         else
         {
            this.§"i§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§@!x§ = COMPONENT_STATE_DISABLED;
         if(this.§"i§)
         {
            this.§[!O§ = null;
            while(this.§"i§.numChildren > 0)
            {
               this.§"i§.removeChildAt(0);
            }
            if(this.§"i§.parent)
            {
               this.§"i§.parent.removeChild(this.§"i§);
            }
            this.§"i§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§@!x§ = param1;
         this.§ !Q§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§5!+§ && §'!9§)
         {
            if(param1 == §@!+§)
            {
               if(this.§9s§ != null)
               {
                  this.§9s§.stop();
               }
               this.§9s§ = §0!o§.§,2§.§4!t§(mClip,{
                  "scaleX":§'!9§.scaleX + 0.1,
                  "scaleY":§'!9§.scaleY + 0.1
               },null,0.1);
               this.§9s§.play();
            }
            else if(param1 == §'!F§)
            {
               if(this.§9s§ != null)
               {
                  this.§9s§.stop();
               }
               this.§9s§ = §0!o§.§,2§.§4!t§(mClip,{
                  "scaleX":§'!9§.scaleX,
                  "scaleY":§'!9§.scaleY
               },null,0.1);
               this.§9s§.play();
            }
         }
         this.§<!m§ = param1;
         this.§ !Q§();
      }
      
      public function § !Q§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§@!x§ + "_" + this.§<!m§,this.§@!x§ + "_" + §>!U§];
         if(this.§@!x§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§<!m§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>!U§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§=M§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §=M§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         if(this.§@!x§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§`" § && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[!h§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§&j§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§@!+§);
         }
         if(param1 == §<!H§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§'!F§);
         }
         if(param1 == §]'§)
         {
            Mouse.cursor = this.§=B§;
            this.setComponentVisualState(§@!+§);
         }
         this.§^k§(param1 == §]'§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §[!h§() : void
      {
         if(this.§@!x§ == §-!g§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§-!g§.§+O§);
         }
         else if(this.§@!x§ == §-!g§.§+O§)
         {
            this.setComponentState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§ !Q§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§^k§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§^k§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§9s§)
         {
            this.§9s§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§9s§)
         {
            this.§9s§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
