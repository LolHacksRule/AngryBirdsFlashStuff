package §+n§
{
   import §3'§.§8I§;
   import com.rovio.assets.§53§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §3P§ extends §&+§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §92§:String = "Deactive";
      
      public static const §;_§:String = "Disabled";
      
      public static const §%!H§:String = "Out";
      
      public static const §?k§:String = "Over";
      
      public static const §"!6§:String = "Up_Default";
      
      public static const §^C§:String = "Down";
      
      public static var §2P§:Class;
      
      public static var §>_§:Boolean = true;
      
      public static const §%b§:String = "Tooltip";
      
      public static var §5C§:Boolean = true;
       
      
      public var §&!%§:String;
      
      public var §1!?§:String;
      
      public var §!N§:String;
      
      public var §>=§:MovieClip;
      
      public var §7X§:int = 6;
      
      private var §-!"§:Boolean = false;
      
      private var §9%§:String = "auto";
      
      public function §3P§(param1:XML, param2:§8I§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§&!%§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§1!?§ = §"!6§;
         this.§-!!§();
         this.§1Y§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§-!"§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§9%§ = _loc5_;
         }
      }
      
      public static function §>&§() : void
      {
         §2P§ = §53§.§[N§(§%b§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§%!H§);
         }
      }
      
      public function §1Y§(param1:String) : void
      {
         this.§!N§ = param1;
         if(this.§!N§ && this.§!N§.length == 0)
         {
            this.§!N§ = null;
         }
         if(this.§!N§)
         {
            if(§>_§)
            {
               §>_§ = false;
               §>&§();
            }
            this.§>=§ = new MovieClip();
            if(§2P§)
            {
               this.§%!I§();
            }
            else
            {
               this.§5p§();
            }
            this.§>=§.mouseEnabled = false;
            this.§>=§.mouseChildren = false;
            this.§>=§.visible = false;
            getParentView().addChild(this.§>=§);
         }
      }
      
      private function §5p§() : void
      {
         this.§>=§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§>=§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§>=§.addChildAt(_loc2_,0);
         this.§3J§(this.§!N§);
      }
      
      private function §%!I§() : void
      {
         this.§>=§ = new §2P§();
         this.§'!@§(this.§!N§);
      }
      
      public function §'!@§(param1:String) : void
      {
         this.§!N§ = param1;
         if(§2P§)
         {
            this.§8&§(param1);
         }
         else
         {
            this.§3J§(param1);
         }
      }
      
      private function §8&§(param1:String) : void
      {
         var _loc2_:TextField = this.§>=§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§>=§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§!N§;
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
      
      private function §3J§(param1:String) : void
      {
         var _loc2_:TextField = this.§>=§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§!N§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§>=§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§7X§,-this.§7X§,_loc2_.width + 2 * this.§7X§,_loc2_.height + 2 * this.§7X§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§7X§ / 2,-(this.§7X§ / 2),_loc2_.width + 1 * this.§7X§,_loc2_.height + 1 * this.§7X§);
      }
      
      private function §1v§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§>=§ || this.§!N§ == null || this.§!N§.length == 0)
         {
            return;
         }
         if(param1 && §5C§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§>=§.y = _loc2_.y - this.§>=§.height - this.§7X§;
            this.§>=§.x = _loc2_.x + mClip.width / 2 - this.§>=§.width / 2;
            _loc3_ = this.§>=§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§7X§)
            {
               this.§>=§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§7X§));
            }
            if(_loc3_.left < this.§7X§)
            {
               this.§>=§.x += 1 + (this.§7X§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§7X§)
            {
               this.§>=§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§7X§));
            }
            if(_loc3_.top < this.§7X§)
            {
               this.§>=§.y += mClip.height + this.§>=§.height + this.§7X§ * 2;
            }
            this.§>=§.visible = true;
         }
         else
         {
            this.§>=§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§>=§)
         {
            this.§!N§ = null;
            while(this.§>=§.numChildren > 0)
            {
               this.§>=§.removeChildAt(0);
            }
            if(this.§>=§.parent)
            {
               this.§>=§.parent.removeChild(this.§>=§);
            }
            this.§>=§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§&!%§ = param1;
         this.§-!!§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§1!?§ = param1;
         this.§-!!§();
      }
      
      public function §-!!§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§&!%§ + "_" + this.§1!?§,this.§&!%§ + "_" + §"!6§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§1!?§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §"!6§);
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
         if(this.§&!%§ == §;_§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§-!"§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[Z§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§^C§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§?k§);
         }
         if(param1 == §`T§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§%!H§);
         }
         if(param1 == §#X§)
         {
            Mouse.cursor = this.§9%§;
            this.setComponentVisualState(§?k§);
         }
         this.§1v§(param1 == §#X§);
      }
      
      public function §[Z§() : void
      {
         if(this.§&!%§ == §3P§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§3P§.§92§);
         }
         else if(this.§&!%§ == §3P§.§92§)
         {
            this.setComponentState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§-!!§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§1v§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§1v§(false);
         }
      }
   }
}
