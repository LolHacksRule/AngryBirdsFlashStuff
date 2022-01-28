package §@y§
{
   import §=!7§.§6W§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §>!D§ extends §0"4§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §;!M§:String = "Deactive";
      
      public static const §&!j§:String = "Disabled";
      
      public static const §3!"§:String = "Out";
      
      public static const §64§:String = "Over";
      
      public static const §<U§:String = "Up_Default";
      
      public static const §;H§:String = "Down";
      
      public static var §;@§:Class;
      
      public static var §@!7§:Boolean = true;
      
      public static const §&!y§:String = "Tooltip";
      
      public static var §7!U§:Boolean = true;
       
      
      public var §-!2§:String;
      
      public var §0@§:String;
      
      public var §`X§:String;
      
      public var §?N§:MovieClip;
      
      public var §3!R§:int = 6;
      
      private var §[!?§:Boolean = false;
      
      private var §`o§:String = "auto";
      
      public function §>!D§(param1:XML, param2:§6W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§-!2§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§0@§ = §<U§;
         this.§#!5§();
         this.§%!4§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§[!?§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§`o§ = _loc5_;
         }
      }
      
      public static function §0T§() : void
      {
         §;@§ = §69§.§ 0§(§&!y§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§3!"§);
         }
      }
      
      public function §%!4§(param1:String) : void
      {
         this.§`X§ = param1;
         if(this.§`X§ && this.§`X§.length == 0)
         {
            this.§`X§ = null;
         }
         if(this.§`X§)
         {
            if(§@!7§)
            {
               §@!7§ = false;
               §0T§();
            }
            this.§?N§ = new MovieClip();
            if(§;@§)
            {
               this.§]Y§();
            }
            else
            {
               this.§8!Z§();
            }
            this.§?N§.mouseEnabled = false;
            this.§?N§.mouseChildren = false;
            this.§?N§.visible = false;
            getParentView().addChild(this.§?N§);
         }
      }
      
      private function §8!Z§() : void
      {
         this.§?N§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§?N§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§?N§.addChildAt(_loc2_,0);
         this.§ !G§(this.§`X§);
      }
      
      private function §]Y§() : void
      {
         this.§?N§ = new §;@§();
         this.§8&§(this.§`X§);
      }
      
      public function §8&§(param1:String) : void
      {
         this.§`X§ = param1;
         if(§;@§)
         {
            this.§?!@§(param1);
         }
         else
         {
            this.§ !G§(param1);
         }
      }
      
      private function §?!@§(param1:String) : void
      {
         var _loc2_:TextField = this.§?N§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§?N§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§`X§;
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
      
      private function § !G§(param1:String) : void
      {
         var _loc2_:TextField = this.§?N§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§`X§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§?N§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§3!R§,-this.§3!R§,_loc2_.width + 2 * this.§3!R§,_loc2_.height + 2 * this.§3!R§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§3!R§ / 2,-(this.§3!R§ / 2),_loc2_.width + 1 * this.§3!R§,_loc2_.height + 1 * this.§3!R§);
      }
      
      private function §4!<§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§?N§ || this.§`X§ == null || this.§`X§.length == 0)
         {
            return;
         }
         if(param1 && §7!U§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§?N§.y = _loc2_.y - this.§?N§.height - this.§3!R§;
            this.§?N§.x = _loc2_.x + mClip.width / 2 - this.§?N§.width / 2;
            _loc3_ = this.§?N§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§3!R§)
            {
               this.§?N§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§3!R§));
            }
            if(_loc3_.left < this.§3!R§)
            {
               this.§?N§.x += 1 + (this.§3!R§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§3!R§)
            {
               this.§?N§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§3!R§));
            }
            if(_loc3_.top < this.§3!R§)
            {
               this.§?N§.y += mClip.height + this.§?N§.height + this.§3!R§ * 2;
            }
            this.§?N§.visible = true;
         }
         else
         {
            this.§?N§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§?N§)
         {
            this.§`X§ = null;
            while(this.§?N§.numChildren > 0)
            {
               this.§?N§.removeChildAt(0);
            }
            if(this.§?N§.parent)
            {
               this.§?N§.parent.removeChild(this.§?N§);
            }
            this.§?N§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§-!2§ = param1;
         this.§#!5§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§0@§ = param1;
         this.§#!5§();
      }
      
      public function §#!5§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§-!2§ + "_" + this.§0@§,this.§-!2§ + "_" + §<U§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0@§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §<U§);
         var _loc2_:int = 0;
         for(; _loc2_ < _loc1_.length; _loc2_++)
         {
            try
            {
               mClip.gotoAndStop(_loc1_[_loc2_] as String);
               if(mClip.numChildren > 0)
               {
                  return;
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         if(this.§-!2§ == §&!j§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§[!?§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§@o§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§;H§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§64§);
         }
         if(param1 == §6!;§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§3!"§);
         }
         if(param1 == §2!-§)
         {
            Mouse.cursor = this.§`o§;
            this.setComponentVisualState(§64§);
         }
         this.§4!<§(param1 == §2!-§);
      }
      
      public function §@o§() : void
      {
         if(this.§-!2§ == §>!D§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§>!D§.§;!M§);
         }
         else if(this.§-!2§ == §>!D§.§;!M§)
         {
            this.setComponentState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§#!5§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§4!<§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§4!<§(false);
         }
      }
   }
}
