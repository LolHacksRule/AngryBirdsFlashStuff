package §^x§
{
   import §5!8§.§+!?§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §;_§ extends §3!r§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const § "2§:String = "Deactive";
      
      public static const §<!v§:String = "Disabled";
      
      public static const §8;§:String = "Out";
      
      public static const §42§:String = "Over";
      
      public static const §%x§:String = "Up_Default";
      
      public static const §@!K§:String = "Down";
      
      public static var §2!a§:Class;
      
      public static var §7!?§:Boolean = true;
      
      public static const §-!a§:String = "Tooltip";
      
      public static var §?Z§:Boolean = true;
       
      
      public var §8"!§:String;
      
      public var §0G§:String;
      
      public var § !W§:String;
      
      public var §?A§:MovieClip;
      
      public var §8M§:int = 6;
      
      private var §0";§:Boolean = false;
      
      private var §[! §:String = "auto";
      
      public function §;_§(param1:XML, param2:§+!?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§8"!§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§0G§ = §%x§;
         this.§?!2§();
         this.§=!F§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§0";§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§[! § = _loc5_;
         }
      }
      
      public static function §2e§() : void
      {
         §2!a§ = §!"'§.§%!Q§(§-!a§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§8;§);
         }
      }
      
      public function §=!F§(param1:String) : void
      {
         this.§ !W§ = param1;
         if(this.§ !W§ && this.§ !W§.length == 0)
         {
            this.§ !W§ = null;
         }
         if(this.§ !W§)
         {
            if(§7!?§)
            {
               §7!?§ = false;
               §2e§();
            }
            this.§?A§ = new MovieClip();
            if(§2!a§)
            {
               this.§'!8§();
            }
            else
            {
               this.§`!w§();
            }
            this.§?A§.mouseEnabled = false;
            this.§?A§.mouseChildren = false;
            this.§?A§.visible = false;
            getParentView().addChild(this.§?A§);
         }
      }
      
      private function §`!w§() : void
      {
         this.§?A§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§?A§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§?A§.addChildAt(_loc2_,0);
         this.§^]§(this.§ !W§);
      }
      
      private function §'!8§() : void
      {
         this.§?A§ = new §2!a§();
         this.§%!i§(this.§ !W§);
      }
      
      public function §%!i§(param1:String) : void
      {
         this.§ !W§ = param1;
         if(§2!a§)
         {
            this.§"A§(param1);
         }
         else
         {
            this.§^]§(param1);
         }
      }
      
      private function §"A§(param1:String) : void
      {
         var _loc2_:TextField = this.§?A§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§?A§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§ !W§;
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
      
      private function §^]§(param1:String) : void
      {
         var _loc2_:TextField = this.§?A§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§ !W§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§?A§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§8M§,-this.§8M§,_loc2_.width + 2 * this.§8M§,_loc2_.height + 2 * this.§8M§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§8M§ / 2,-(this.§8M§ / 2),_loc2_.width + 1 * this.§8M§,_loc2_.height + 1 * this.§8M§);
      }
      
      private function §?!m§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§?A§ || this.§ !W§ == null || this.§ !W§.length == 0)
         {
            return;
         }
         if(param1 && §?Z§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§?A§.y = _loc2_.y - this.§?A§.height - this.§8M§;
            this.§?A§.x = _loc2_.x + mClip.width / 2 - this.§?A§.width / 2;
            _loc3_ = this.§?A§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§8M§)
            {
               this.§?A§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§8M§));
            }
            if(_loc3_.left < this.§8M§)
            {
               this.§?A§.x += 1 + (this.§8M§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§8M§)
            {
               this.§?A§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§8M§));
            }
            if(_loc3_.top < this.§8M§)
            {
               this.§?A§.y += mClip.height + this.§?A§.height + this.§8M§ * 2;
            }
            this.§?A§.visible = true;
         }
         else
         {
            this.§?A§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§?A§)
         {
            this.§ !W§ = null;
            while(this.§?A§.numChildren > 0)
            {
               this.§?A§.removeChildAt(0);
            }
            if(this.§?A§.parent)
            {
               this.§?A§.parent.removeChild(this.§?A§);
            }
            this.§?A§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§8"!§ = param1;
         this.§?!2§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§0G§ = param1;
         this.§?!2§();
      }
      
      public function §?!2§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§8"!§ + "_" + this.§0G§,this.§8"!§ + "_" + §%x§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0G§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §%x§);
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
         if(this.§8"!§ == §<!v§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§0";§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§<!_§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§@!K§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§42§);
         }
         if(param1 == §^!K§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§8;§);
         }
         if(param1 == §^!H§)
         {
            Mouse.cursor = this.§[! §;
            this.setComponentVisualState(§42§);
         }
         this.§?!m§(param1 == §^!H§);
      }
      
      public function §<!_§() : void
      {
         if(this.§8"!§ == §;_§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§;_§.§ "2§);
         }
         else if(this.§8"!§ == §;_§.§ "2§)
         {
            this.setComponentState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§?!2§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§?!m§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§?!m§(false);
         }
      }
   }
}
