package §var§
{
   import §#!&§.§59§;
   import §7S§.§3t§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §8!_§ extends §;!&§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §^#§:String = "Deactive";
      
      public static const §4Z§:String = "Disabled";
      
      public static const §7!,§:String = "Out";
      
      public static const §=!1§:String = "Over";
      
      public static const §`!^§:String = "Up_Default";
      
      public static const §%p§:String = "Down";
      
      public static var §#&§:Class;
      
      public static var §,I§:Boolean = true;
      
      public static const §3w§:String = "Tooltip";
      
      public static var §;!c§:Boolean = true;
       
      
      public var §;2§:String;
      
      public var §1!P§:String;
      
      public var §"!5§:String;
      
      public var §!=§:MovieClip;
      
      public var §2x§:int = 6;
      
      private var §[V§:Boolean = false;
      
      private var §=[§:String = "auto";
      
      public function §8!_§(param1:XML, param2:§59§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§;2§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§1!P§ = §`!^§;
         this.§;!#§();
         this.§<l§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§[V§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§=[§ = _loc5_;
         }
      }
      
      public static function §6_§() : void
      {
         §#&§ = §3t§.§#v§(§3w§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§7!,§);
         }
      }
      
      public function §<l§(param1:String) : void
      {
         this.§"!5§ = param1;
         if(this.§"!5§ && this.§"!5§.length == 0)
         {
            this.§"!5§ = null;
         }
         if(this.§"!5§)
         {
            if(§,I§)
            {
               §,I§ = false;
               §6_§();
            }
            this.§!=§ = new MovieClip();
            if(§#&§)
            {
               this.§#D§();
            }
            else
            {
               this.§1T§();
            }
            this.§!=§.mouseEnabled = false;
            this.§!=§.mouseChildren = false;
            this.§!=§.visible = false;
            getParentView().addChild(this.§!=§);
         }
      }
      
      private function §1T§() : void
      {
         this.§!=§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§!=§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§!=§.addChildAt(_loc2_,0);
         this.§9'§(this.§"!5§);
      }
      
      private function §#D§() : void
      {
         this.§!=§ = new §#&§();
         this.§9[§(this.§"!5§);
      }
      
      public function §9[§(param1:String) : void
      {
         this.§"!5§ = param1;
         if(§#&§)
         {
            this.§`!<§(param1);
         }
         else
         {
            this.§9'§(param1);
         }
      }
      
      private function §`!<§(param1:String) : void
      {
         var _loc2_:TextField = this.§!=§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§!=§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§"!5§;
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
      
      private function §9'§(param1:String) : void
      {
         var _loc2_:TextField = this.§!=§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§"!5§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§!=§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§2x§,-this.§2x§,_loc2_.width + 2 * this.§2x§,_loc2_.height + 2 * this.§2x§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§2x§ / 2,-(this.§2x§ / 2),_loc2_.width + 1 * this.§2x§,_loc2_.height + 1 * this.§2x§);
      }
      
      private function §2!>§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§!=§ || this.§"!5§ == null || this.§"!5§.length == 0)
         {
            return;
         }
         if(param1 && §;!c§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§!=§.y = _loc2_.y - this.§!=§.height - this.§2x§;
            this.§!=§.x = _loc2_.x + mClip.width / 2 - this.§!=§.width / 2;
            _loc3_ = this.§!=§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§2x§)
            {
               this.§!=§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§2x§));
            }
            if(_loc3_.left < this.§2x§)
            {
               this.§!=§.x += 1 + (this.§2x§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§2x§)
            {
               this.§!=§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§2x§));
            }
            if(_loc3_.top < this.§2x§)
            {
               this.§!=§.y += mClip.height + this.§!=§.height + this.§2x§ * 2;
            }
            this.§!=§.visible = true;
         }
         else
         {
            this.§!=§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§!=§)
         {
            this.§"!5§ = null;
            while(this.§!=§.numChildren > 0)
            {
               this.§!=§.removeChildAt(0);
            }
            if(this.§!=§.parent)
            {
               this.§!=§.parent.removeChild(this.§!=§);
            }
            this.§!=§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§;2§ = param1;
         this.§;!#§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§1!P§ = param1;
         this.§;!#§();
      }
      
      public function §;!#§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§;2§ + "_" + this.§1!P§,this.§;2§ + "_" + §`!^§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§1!P§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §`!^§);
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
         if(this.§;2§ == §4Z§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§[V§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§<+§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§%p§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§=!1§);
         }
         if(param1 == §%%§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§7!,§);
         }
         if(param1 == §@M§)
         {
            Mouse.cursor = this.§=[§;
            this.setComponentVisualState(§=!1§);
         }
         this.§2!>§(param1 == §@M§);
      }
      
      public function §<+§() : void
      {
         if(this.§;2§ == §8!_§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§8!_§.§^#§);
         }
         else if(this.§;2§ == §8!_§.§^#§)
         {
            this.setComponentState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§;!#§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§2!>§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§2!>§(false);
         }
      }
   }
}
