package §8P§
{
   import §'!N§.§2O§;
   import §]!6§.§false§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §4!Y§ extends §&-§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §=?§:String = "Deactive";
      
      public static const §[&§:String = "Disabled";
      
      public static const §-j§:String = "Out";
      
      public static const §=w§:String = "Over";
      
      public static const §3!=§:String = "Up_Default";
      
      public static const §%!D§:String = "Down";
      
      public static var §1!e§:Class;
      
      public static var §`J§:Boolean = true;
      
      public static const §5!&§:String = "Tooltip";
      
      public static var §50§:Boolean = true;
       
      
      public var §,!L§:String;
      
      public var §`r§:String;
      
      public var §%!8§:String;
      
      public var §>!9§:MovieClip;
      
      public var §]c§:int = 6;
      
      private var §9T§:Boolean = false;
      
      private var §-!B§:String = "auto";
      
      public function §4!Y§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§,!L§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§`r§ = §3!=§;
         this.§&!6§();
         this.§'q§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§9T§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§-!B§ = _loc5_;
         }
      }
      
      public static function §#!e§() : void
      {
         §1!e§ = §false§.§5#§(§5!&§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§-j§);
         }
      }
      
      public function §'q§(param1:String) : void
      {
         this.§%!8§ = param1;
         if(this.§%!8§ && this.§%!8§.length == 0)
         {
            this.§%!8§ = null;
         }
         if(this.§%!8§)
         {
            if(§`J§)
            {
               §`J§ = false;
               §#!e§();
            }
            this.§>!9§ = new MovieClip();
            if(§1!e§)
            {
               this.§'L§();
            }
            else
            {
               this.§5R§();
            }
            this.§>!9§.mouseEnabled = false;
            this.§>!9§.mouseChildren = false;
            this.§>!9§.visible = false;
            getParentView().addChild(this.§>!9§);
         }
      }
      
      private function §5R§() : void
      {
         this.§>!9§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§>!9§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§>!9§.addChildAt(_loc2_,0);
         this.§=!G§(this.§%!8§);
      }
      
      private function §'L§() : void
      {
         this.§>!9§ = new §1!e§();
         this.§!P§(this.§%!8§);
      }
      
      public function §!P§(param1:String) : void
      {
         this.§%!8§ = param1;
         if(§1!e§)
         {
            this.§ a§(param1);
         }
         else
         {
            this.§=!G§(param1);
         }
      }
      
      private function § a§(param1:String) : void
      {
         var _loc2_:TextField = this.§>!9§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§>!9§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§%!8§;
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
      
      private function §=!G§(param1:String) : void
      {
         var _loc2_:TextField = this.§>!9§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§%!8§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§>!9§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§]c§,-this.§]c§,_loc2_.width + 2 * this.§]c§,_loc2_.height + 2 * this.§]c§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§]c§ / 2,-(this.§]c§ / 2),_loc2_.width + 1 * this.§]c§,_loc2_.height + 1 * this.§]c§);
      }
      
      private function §#+§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§>!9§ || this.§%!8§ == null || this.§%!8§.length == 0)
         {
            return;
         }
         if(param1 && §50§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§>!9§.y = _loc2_.y - this.§>!9§.height - this.§]c§;
            this.§>!9§.x = _loc2_.x + mClip.width / 2 - this.§>!9§.width / 2;
            _loc3_ = this.§>!9§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§]c§)
            {
               this.§>!9§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]c§));
            }
            if(_loc3_.left < this.§]c§)
            {
               this.§>!9§.x += 1 + (this.§]c§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§]c§)
            {
               this.§>!9§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]c§));
            }
            if(_loc3_.top < this.§]c§)
            {
               this.§>!9§.y += mClip.height + this.§>!9§.height + this.§]c§ * 2;
            }
            this.§>!9§.visible = true;
         }
         else
         {
            this.§>!9§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§>!9§)
         {
            this.§%!8§ = null;
            while(this.§>!9§.numChildren > 0)
            {
               this.§>!9§.removeChildAt(0);
            }
            if(this.§>!9§.parent)
            {
               this.§>!9§.parent.removeChild(this.§>!9§);
            }
            this.§>!9§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§,!L§ = param1;
         this.§&!6§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§`r§ = param1;
         this.§&!6§();
      }
      
      public function §&!6§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§,!L§ + "_" + this.§`r§,this.§,!L§ + "_" + §3!=§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§`r§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §3!=§);
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
         if(this.§,!L§ == §[&§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§9T§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§>+§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§%!D§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§=w§);
         }
         if(param1 == §#!C§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§-j§);
         }
         if(param1 == §3"§)
         {
            Mouse.cursor = this.§-!B§;
            this.setComponentVisualState(§=w§);
         }
         this.§#+§(param1 == §3"§);
      }
      
      public function §>+§() : void
      {
         if(this.§,!L§ == §4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§4!Y§.§=?§);
         }
         else if(this.§,!L§ == §4!Y§.§=?§)
         {
            this.setComponentState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§&!6§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§#+§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§#+§(false);
         }
      }
   }
}
