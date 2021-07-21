package §'!A§
{
   import §'p§.§`!T§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §9!!§ extends §-!2§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,!0§:String = "Deactive";
      
      public static const §%!§:String = "Disabled";
      
      public static const §7N§:String = "Out";
      
      public static const §&M§:String = "Over";
      
      public static const §6m§:String = "Up_Default";
      
      public static const §?"?§:String = "Down";
      
      public static var §8!_§:Class;
      
      public static var § d§:Boolean = true;
      
      public static const §3+§:String = "Tooltip";
      
      public static var §<>§:Boolean = true;
       
      
      public var §%!v§:String;
      
      public var §,!I§:String;
      
      public var §"!+§:String;
      
      public var §"R§:MovieClip;
      
      public var §7!^§:int = 6;
      
      private var §>!r§:Boolean = false;
      
      private var §<[§:String = "auto";
      
      public function §9!!§(param1:XML, param2:§`!T§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§%!v§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§,!I§ = §6m§;
         this.§"!i§();
         this.§]!0§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§>!r§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§<[§ = _loc5_;
         }
      }
      
      public static function §'"8§() : void
      {
         §8!_§ = §>!]§.§1!8§(§3+§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§7N§);
         }
      }
      
      public function §]!0§(param1:String) : void
      {
         this.§"!+§ = param1;
         if(this.§"!+§ && this.§"!+§.length == 0)
         {
            this.§"!+§ = null;
         }
         if(this.§"!+§)
         {
            if(§ d§)
            {
               § d§ = false;
               §'"8§();
            }
            this.§"R§ = new MovieClip();
            if(§8!_§)
            {
               this.§-!`§();
            }
            else
            {
               this.§!"-§();
            }
            this.§"R§.mouseEnabled = false;
            this.§"R§.mouseChildren = false;
            this.§"R§.visible = false;
            getParentView().addChild(this.§"R§);
         }
      }
      
      private function §!"-§() : void
      {
         this.§"R§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§"R§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§"R§.addChildAt(_loc2_,0);
         this.§3J§(this.§"!+§);
      }
      
      private function §-!`§() : void
      {
         this.§"R§ = new §8!_§();
         this.§;!9§(this.§"!+§);
      }
      
      public function §;!9§(param1:String) : void
      {
         this.§"!+§ = param1;
         if(§8!_§)
         {
            this.§^c§(param1);
         }
         else
         {
            this.§3J§(param1);
         }
      }
      
      private function §^c§(param1:String) : void
      {
         var _loc2_:TextField = this.§"R§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"R§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§"!+§;
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
         var _loc2_:TextField = this.§"R§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§"!+§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§"R§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§7!^§,-this.§7!^§,_loc2_.width + 2 * this.§7!^§,_loc2_.height + 2 * this.§7!^§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§7!^§ / 2,-(this.§7!^§ / 2),_loc2_.width + 1 * this.§7!^§,_loc2_.height + 1 * this.§7!^§);
      }
      
      private function §>!?§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§"R§ || this.§"!+§ == null || this.§"!+§.length == 0)
         {
            return;
         }
         if(param1 && §<>§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§"R§.y = _loc2_.y - this.§"R§.height - this.§7!^§;
            this.§"R§.x = _loc2_.x + mClip.width / 2 - this.§"R§.width / 2;
            _loc3_ = this.§"R§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§7!^§)
            {
               this.§"R§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§7!^§));
            }
            if(_loc3_.left < this.§7!^§)
            {
               this.§"R§.x += 1 + (this.§7!^§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§7!^§)
            {
               this.§"R§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§7!^§));
            }
            if(_loc3_.top < this.§7!^§)
            {
               this.§"R§.y += mClip.height + this.§"R§.height + this.§7!^§ * 2;
            }
            this.§"R§.visible = true;
         }
         else
         {
            this.§"R§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§"R§)
         {
            this.§"!+§ = null;
            while(this.§"R§.numChildren > 0)
            {
               this.§"R§.removeChildAt(0);
            }
            if(this.§"R§.parent)
            {
               this.§"R§.parent.removeChild(this.§"R§);
            }
            this.§"R§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§%!v§ = param1;
         this.§"!i§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§,!I§ = param1;
         this.§"!i§();
      }
      
      public function §"!i§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§%!v§ + "_" + this.§,!I§,this.§%!v§ + "_" + §6m§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§,!I§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §6m§);
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
         if(this.§%!v§ == §%!§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§>!r§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§ a§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§?"?§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§&M§);
         }
         if(param1 == §2"3§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§7N§);
         }
         if(param1 == §%x§)
         {
            Mouse.cursor = this.§<[§;
            this.setComponentVisualState(§&M§);
         }
         this.§>!?§(param1 == §%x§);
      }
      
      public function § a§() : void
      {
         if(this.§%!v§ == §9!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§9!!§.§,!0§);
         }
         else if(this.§%!v§ == §9!!§.§,!0§)
         {
            this.setComponentState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§"!i§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§>!?§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§>!?§(false);
         }
      }
   }
}
