package §-1§
{
   import §#Z§.§?R§;
   import §,![§.§[!S§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §>!6§ extends §3!%§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §?3§:String = "Deactive";
      
      public static const §5h§:String = "Disabled";
      
      public static const §+o§:String = "Out";
      
      public static const §?T§:String = "Over";
      
      public static const §&M§:String = "Up_Default";
      
      public static const §'N§:String = "Down";
      
      public static var §6,§:Class;
      
      public static var §']§:Boolean = true;
      
      public static const §"u§:String = "Tooltip";
      
      public static var §%l§:Boolean = true;
       
      
      public var §4!-§:String;
      
      public var §%!L§:String;
      
      public var §!D§:String;
      
      public var §;#§:MovieClip;
      
      public var §7Y§:int = 6;
      
      private var §`5§:Boolean = false;
      
      private var §7^§:String = "auto";
      
      public function §>!6§(param1:XML, param2:§[!S§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§4!-§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§%!L§ = §&M§;
         this.§=+§();
         this.§>!T§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§`5§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§7^§ = _loc5_;
         }
      }
      
      public static function §?!-§() : void
      {
         §6,§ = §?R§.§>e§(§"u§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§+o§);
         }
      }
      
      public function §>!T§(param1:String) : void
      {
         this.§!D§ = param1;
         if(this.§!D§ && this.§!D§.length == 0)
         {
            this.§!D§ = null;
         }
         if(this.§!D§)
         {
            if(§']§)
            {
               §']§ = false;
               §?!-§();
            }
            this.§;#§ = new MovieClip();
            if(§6,§)
            {
               this.§;<§();
            }
            else
            {
               this.§0v§();
            }
            this.§;#§.mouseEnabled = false;
            this.§;#§.mouseChildren = false;
            this.§;#§.visible = false;
            getParentView().addChild(this.§;#§);
         }
      }
      
      private function §0v§() : void
      {
         this.§;#§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§;#§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§;#§.addChildAt(_loc2_,0);
         this.§=S§(this.§!D§);
      }
      
      private function §;<§() : void
      {
         this.§;#§ = new §6,§();
         this.§@%§(this.§!D§);
      }
      
      public function §@%§(param1:String) : void
      {
         this.§!D§ = param1;
         if(§6,§)
         {
            this.§=?§(param1);
         }
         else
         {
            this.§=S§(param1);
         }
      }
      
      private function §=?§(param1:String) : void
      {
         var _loc2_:TextField = this.§;#§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§;#§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§!D§;
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
      
      private function §=S§(param1:String) : void
      {
         var _loc2_:TextField = this.§;#§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§!D§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§;#§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§7Y§,-this.§7Y§,_loc2_.width + 2 * this.§7Y§,_loc2_.height + 2 * this.§7Y§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§7Y§ / 2,-(this.§7Y§ / 2),_loc2_.width + 1 * this.§7Y§,_loc2_.height + 1 * this.§7Y§);
      }
      
      private function §=2§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§;#§ || this.§!D§ == null || this.§!D§.length == 0)
         {
            return;
         }
         if(param1 && §%l§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§;#§.y = _loc2_.y - this.§;#§.height - this.§7Y§;
            this.§;#§.x = _loc2_.x + mClip.width / 2 - this.§;#§.width / 2;
            _loc3_ = this.§;#§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§7Y§)
            {
               this.§;#§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§7Y§));
            }
            if(_loc3_.left < this.§7Y§)
            {
               this.§;#§.x += 1 + (this.§7Y§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§7Y§)
            {
               this.§;#§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§7Y§));
            }
            if(_loc3_.top < this.§7Y§)
            {
               this.§;#§.y += mClip.height + this.§;#§.height + this.§7Y§ * 2;
            }
            this.§;#§.visible = true;
         }
         else
         {
            this.§;#§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§;#§)
         {
            this.§!D§ = null;
            while(this.§;#§.numChildren > 0)
            {
               this.§;#§.removeChildAt(0);
            }
            if(this.§;#§.parent)
            {
               this.§;#§.parent.removeChild(this.§;#§);
            }
            this.§;#§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§4!-§ = param1;
         this.§=+§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§%!L§ = param1;
         this.§=+§();
      }
      
      public function §=+§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§4!-§ + "_" + this.§%!L§,this.§4!-§ + "_" + §&M§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%!L§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §&M§);
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
         if(this.§4!-§ == §5h§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§`5§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§4$§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§'N§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§?T§);
         }
         if(param1 == §,4§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§+o§);
         }
         if(param1 == §%'§)
         {
            Mouse.cursor = this.§7^§;
            this.setComponentVisualState(§?T§);
         }
         this.§=2§(param1 == §%'§);
      }
      
      public function §4$§() : void
      {
         if(this.§4!-§ == §>!6§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§>!6§.§?3§);
         }
         else if(this.§4!-§ == §>!6§.§?3§)
         {
            this.setComponentState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§=+§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§=2§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§=2§(false);
         }
      }
   }
}
