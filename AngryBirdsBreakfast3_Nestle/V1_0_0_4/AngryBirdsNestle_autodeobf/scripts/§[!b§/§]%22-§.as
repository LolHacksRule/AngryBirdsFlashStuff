package §[!b§
{
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §?!4§.§^!S§;
   import §@#§.§9!'§;
   import com.rovio.assets.§&!2§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §]"-§ extends §2!O§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §2"0§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §#"§:String = "Out";
      
      public static const §+!>§:String = "Over";
      
      public static const §^C§:String = "Up_Default";
      
      public static const §9!z§:String = "Down";
      
      public static var §?!n§:Class;
      
      public static var §#,§:Boolean = true;
      
      public static const §6]§:String = "Tooltip";
      
      public static var §78§:Boolean = true;
       
      
      public var §3![§:String;
      
      public var §^§:String;
      
      public var §;R§:String;
      
      public var §'!l§:MovieClip;
      
      public var §;"#§:int = 6;
      
      private var § !^§:Boolean = false;
      
      private var §5o§:String = "auto";
      
      private var §6!U§:§4!N§;
      
      public function §]"-§(param1:XML, param2:§9!'§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§3![§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§^§ = §^C§;
         this.§<B§();
         this.§^]§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§ !^§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§5o§ = _loc4_;
            }
         }
         §1!@§(§9y§,param1.@MouseOver);
         §1!@§(§3!W§,param1.@MouseOut);
      }
      
      public static function §73§() : void
      {
         §?!n§ = §&!2§.§0!O§(§6]§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§#"§);
         }
      }
      
      public function §^]§(param1:String) : void
      {
         this.§;R§ = param1;
         if(this.§;R§ && this.§;R§.length == 0)
         {
            this.§;R§ = null;
         }
         if(this.§;R§)
         {
            if(§#,§)
            {
               §#,§ = false;
               §73§();
            }
            this.§'!l§ = new MovieClip();
            if(§?!n§)
            {
               this.§&!7§();
            }
            else
            {
               this.§9!#§();
            }
            this.§'!l§.mouseEnabled = false;
            this.§'!l§.mouseChildren = false;
            this.§'!l§.visible = false;
            getParentView().addChild(this.§'!l§);
         }
      }
      
      private function §9!#§() : void
      {
         this.§'!l§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§'!l§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§'!l§.addChildAt(_loc2_,0);
         this.§'!8§(this.§;R§);
      }
      
      private function §&!7§() : void
      {
         this.§'!l§ = new §?!n§();
         this.§?!u§(this.§;R§);
      }
      
      public function §?!u§(param1:String) : void
      {
         this.§;R§ = param1;
         if(§?!n§)
         {
            this.§"!O§(param1);
         }
         else
         {
            this.§'!8§(param1);
         }
      }
      
      private function §"!O§(param1:String) : void
      {
         var _loc2_:TextField = this.§'!l§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§'!l§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§;R§;
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
      
      private function §'!8§(param1:String) : void
      {
         var _loc2_:TextField = this.§'!l§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§;R§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§'!l§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§;"#§,-this.§;"#§,_loc2_.width + 2 * this.§;"#§,_loc2_.height + 2 * this.§;"#§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§;"#§ / 2,-(this.§;"#§ / 2),_loc2_.width + 1 * this.§;"#§,_loc2_.height + 1 * this.§;"#§);
      }
      
      private function §%&§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§'!l§ || this.§;R§ == null || this.§;R§.length == 0)
         {
            return;
         }
         if(param1 && §78§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§'!l§.y = _loc2_.y - this.§'!l§.height - this.§;"#§;
            this.§'!l§.x = _loc2_.x + mClip.width / 2 - this.§'!l§.width / 2;
            _loc3_ = this.§'!l§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§;"#§)
            {
               this.§'!l§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§;"#§));
            }
            if(_loc3_.left < this.§;"#§)
            {
               this.§'!l§.x += 1 + (this.§;"#§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§;"#§)
            {
               this.§'!l§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§;"#§));
            }
            if(_loc3_.top < this.§;"#§)
            {
               this.§'!l§.y += mClip.height + this.§'!l§.height + this.§;"#§ * 2;
            }
            this.§'!l§.visible = true;
         }
         else
         {
            this.§'!l§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§3![§ = COMPONENT_STATE_DISABLED;
         if(this.§'!l§)
         {
            this.§;R§ = null;
            while(this.§'!l§.numChildren > 0)
            {
               this.§'!l§.removeChildAt(0);
            }
            if(this.§'!l§.parent)
            {
               this.§'!l§.parent.removeChild(this.§'!l§);
            }
            this.§'!l§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§3![§ = param1;
         this.§<B§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§]!m§ && §2f§)
         {
            if(param1 == §+!>§)
            {
               if(this.§6!U§ != null)
               {
                  this.§6!U§.stop();
               }
               this.§6!U§ = §0!M§.§?!+§.§3d§(mClip,{
                  "scaleX":§2f§.scaleX + 0.1,
                  "scaleY":§2f§.scaleY + 0.1
               },null,0.1);
               this.§6!U§.play();
            }
            else if(param1 == §#"§)
            {
               if(this.§6!U§ != null)
               {
                  this.§6!U§.stop();
               }
               this.§6!U§ = §0!M§.§?!+§.§3d§(mClip,{
                  "scaleX":§2f§.scaleX,
                  "scaleY":§2f§.scaleY
               },null,0.1);
               this.§6!U§.play();
            }
         }
         this.§^§ = param1;
         this.§<B§();
      }
      
      public function §<B§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§3![§ + "_" + this.§^§,this.§3![§ + "_" + §^C§];
         if(this.§3![§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§^§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §^C§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§[!u§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §[!u§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §^!S§
      {
         if(this.§3![§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§ !^§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[! §();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§9!z§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§+!>§);
         }
         if(param1 == §3!W§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§#"§);
         }
         if(param1 == §9y§)
         {
            Mouse.cursor = this.§5o§;
            this.setComponentVisualState(§+!>§);
         }
         this.§%&§(param1 == §9y§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §[! §() : void
      {
         if(this.§3![§ == §]"-§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§]"-§.§2"0§);
         }
         else if(this.§3![§ == §]"-§.§2"0§)
         {
            this.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§<B§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§%&§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§%&§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§6!U§)
         {
            this.§6!U§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§6!U§)
         {
            this.§6!U§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
