package §4!t§
{
   import §!i§.§1s§;
   import §<!#§.§""§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import com.rovio.assets.§2!3§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §>r§ extends §?i§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §""7§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §+!p§:String = "Out";
      
      public static const §[!7§:String = "Over";
      
      public static const §3!§:String = "Up_Default";
      
      public static const §;!F§:String = "Down";
      
      public static var §!W§:Class;
      
      public static var §2";§:Boolean = true;
      
      public static const §7"%§:String = "Tooltip";
      
      public static var §<!H§:Boolean = true;
       
      
      public var §5!P§:String;
      
      public var § @§:String;
      
      public var §!!y§:String;
      
      public var §4!d§:MovieClip;
      
      public var §^"A§:int = 6;
      
      private var §-"#§:Boolean = false;
      
      private var §3b§:String = "auto";
      
      private var §6!m§:§8"+§;
      
      public function §>r§(param1:XML, param2:§1s§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§5!P§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§ @§ = §3!§;
         this.§!!v§();
         this.§-!l§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§-"#§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§3b§ = _loc4_;
            }
         }
         §^7§(§!!M§,param1.@MouseOver);
         §^7§(§1>§,param1.@MouseOut);
      }
      
      public static function §3+§() : void
      {
         §!W§ = §2!3§.dynamic(§7"%§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§+!p§);
         }
      }
      
      public function §-!l§(param1:String) : void
      {
         this.§!!y§ = param1;
         if(this.§!!y§ && this.§!!y§.length == 0)
         {
            this.§!!y§ = null;
         }
         if(this.§!!y§)
         {
            if(§2";§)
            {
               §2";§ = false;
               §3+§();
            }
            this.§4!d§ = new MovieClip();
            if(§!W§)
            {
               this.§>!d§();
            }
            else
            {
               this.§5§();
            }
            this.§4!d§.mouseEnabled = false;
            this.§4!d§.mouseChildren = false;
            this.§4!d§.visible = false;
            getParentView().addChild(this.§4!d§);
         }
      }
      
      private function §5§() : void
      {
         this.§4!d§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§4!d§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§4!d§.addChildAt(_loc2_,0);
         this.§?!^§(this.§!!y§);
      }
      
      private function §>!d§() : void
      {
         this.§4!d§ = new §!W§();
         this.§@!=§(this.§!!y§);
      }
      
      public function §@!=§(param1:String) : void
      {
         this.§!!y§ = param1;
         if(§!W§)
         {
            this.§-!I§(param1);
         }
         else
         {
            this.§?!^§(param1);
         }
      }
      
      private function §-!I§(param1:String) : void
      {
         var _loc2_:TextField = this.§4!d§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§4!d§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§!!y§;
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
      
      private function §?!^§(param1:String) : void
      {
         var _loc2_:TextField = this.§4!d§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§!!y§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§4!d§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§^"A§,-this.§^"A§,_loc2_.width + 2 * this.§^"A§,_loc2_.height + 2 * this.§^"A§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§^"A§ / 2,-(this.§^"A§ / 2),_loc2_.width + 1 * this.§^"A§,_loc2_.height + 1 * this.§^"A§);
      }
      
      private function §]!C§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§4!d§ || this.§!!y§ == null || this.§!!y§.length == 0)
         {
            return;
         }
         if(param1 && §<!H§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§4!d§.y = _loc2_.y - this.§4!d§.height - this.§^"A§;
            this.§4!d§.x = _loc2_.x + mClip.width / 2 - this.§4!d§.width / 2;
            _loc3_ = this.§4!d§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§^"A§)
            {
               this.§4!d§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^"A§));
            }
            if(_loc3_.left < this.§^"A§)
            {
               this.§4!d§.x += 1 + (this.§^"A§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§^"A§)
            {
               this.§4!d§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^"A§));
            }
            if(_loc3_.top < this.§^"A§)
            {
               this.§4!d§.y += mClip.height + this.§4!d§.height + this.§^"A§ * 2;
            }
            this.§4!d§.visible = true;
         }
         else
         {
            this.§4!d§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§5!P§ = COMPONENT_STATE_DISABLED;
         if(this.§4!d§)
         {
            this.§!!y§ = null;
            while(this.§4!d§.numChildren > 0)
            {
               this.§4!d§.removeChildAt(0);
            }
            if(this.§4!d§.parent)
            {
               this.§4!d§.parent.removeChild(this.§4!d§);
            }
            this.§4!d§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§5!P§ = param1;
         this.§!!v§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§5!#§)
         {
            if(param1 == §[!7§)
            {
               if(this.§6!m§ != null)
               {
                  this.§6!m§.stop();
               }
               this.§6!m§ = §<K§.§<"B§.§`!c§(mClip,{
                  "scaleX":§#"E§.scaleX + 0.1,
                  "scaleY":§#"E§.scaleY + 0.1
               },null,0.1);
               this.§6!m§.play();
            }
            else if(param1 == §+!p§)
            {
               if(this.§6!m§ != null)
               {
                  this.§6!m§.stop();
               }
               this.§6!m§ = §<K§.§<"B§.§`!c§(mClip,{
                  "scaleX":§#"E§.scaleX,
                  "scaleY":§#"E§.scaleY
               },null,0.1);
               this.§6!m§.play();
            }
         }
         this.§ @§ = param1;
         this.§!!v§();
      }
      
      public function §!!v§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§5!P§ + "_" + this.§ @§,this.§5!P§ + "_" + §3!§];
         if(this.§5!P§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§ @§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §3!§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§[G§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §[G§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §""§
      {
         if(this.§5!P§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§-"#§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§6N§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§;!F§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§[!7§);
         }
         if(param1 == §1>§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§+!p§);
         }
         if(param1 == §!!M§)
         {
            Mouse.cursor = this.§3b§;
            this.setComponentVisualState(§[!7§);
         }
         this.§]!C§(param1 == §!!M§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §6N§() : void
      {
         if(this.§5!P§ == §>r§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§>r§.§""7§);
         }
         else if(this.§5!P§ == §>r§.§""7§)
         {
            this.setComponentState(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§!!v§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§]!C§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§]!C§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§6!m§)
         {
            this.§6!m§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§6!m§)
         {
            this.§6!m§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
