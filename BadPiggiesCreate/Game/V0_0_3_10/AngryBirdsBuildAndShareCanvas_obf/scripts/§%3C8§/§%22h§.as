package §<8§
{
   import §0!d§.§7!a§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §"h§ extends §'X§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §"!a§:String = "Deactive";
      
      public static const §?L§:String = "Disabled";
      
      public static const §&!#§:String = "Out";
      
      public static const §>n§:String = "Over";
      
      public static const § =§:String = "Up_Default";
      
      public static const §;r§:String = "Down";
      
      public static var §2!V§:Class;
      
      public static var §@!y§:Boolean = true;
      
      public static const §,!A§:String = "Tooltip";
      
      public static var §"I§:Boolean = true;
       
      
      public var §@!K§:String;
      
      public var §?!f§:String;
      
      public var §&h§:String;
      
      public var §-T§:MovieClip;
      
      public var §!!@§:int = 6;
      
      private var §^[§:Boolean = false;
      
      private var §9V§:String = "auto";
      
      public function §"h§(param1:XML, param2:§7!a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§@!K§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§?!f§ = § =§;
         this.§ &§();
         this.§2f§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§^[§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§9V§ = _loc5_;
         }
      }
      
      public static function §@!,§() : void
      {
         §2!V§ = §5!+§.§,]§(§,!A§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§&!#§);
         }
      }
      
      public function §2f§(param1:String) : void
      {
         this.§&h§ = param1;
         if(this.§&h§ && this.§&h§.length == 0)
         {
            this.§&h§ = null;
         }
         if(this.§&h§)
         {
            if(§@!y§)
            {
               §@!y§ = false;
               §@!,§();
            }
            this.§-T§ = new MovieClip();
            if(§2!V§)
            {
               this.§%!E§();
            }
            else
            {
               this.§<![§();
            }
            this.§-T§.mouseEnabled = false;
            this.§-T§.mouseChildren = false;
            this.§-T§.visible = false;
            getParentView().addChild(this.§-T§);
         }
      }
      
      private function §<![§() : void
      {
         this.§-T§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§-T§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§-T§.addChildAt(_loc2_,0);
         this.§7"#§(this.§&h§);
      }
      
      private function §%!E§() : void
      {
         this.§-T§ = new §2!V§();
         this.§8!C§(this.§&h§);
      }
      
      public function §8!C§(param1:String) : void
      {
         this.§&h§ = param1;
         if(§2!V§)
         {
            this.§7`§(param1);
         }
         else
         {
            this.§7"#§(param1);
         }
      }
      
      private function §7`§(param1:String) : void
      {
         var _loc2_:TextField = this.§-T§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§-T§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§&h§;
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
      
      private function §7"#§(param1:String) : void
      {
         var _loc2_:TextField = this.§-T§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§&h§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§-T§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§!!@§,-this.§!!@§,_loc2_.width + 2 * this.§!!@§,_loc2_.height + 2 * this.§!!@§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§!!@§ / 2,-(this.§!!@§ / 2),_loc2_.width + 1 * this.§!!@§,_loc2_.height + 1 * this.§!!@§);
      }
      
      private function §9!I§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§-T§ || this.§&h§ == null || this.§&h§.length == 0)
         {
            return;
         }
         if(param1 && §"I§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§-T§.y = _loc2_.y - this.§-T§.height - this.§!!@§;
            this.§-T§.x = _loc2_.x + mClip.width / 2 - this.§-T§.width / 2;
            _loc3_ = this.§-T§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§!!@§)
            {
               this.§-T§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§!!@§));
            }
            if(_loc3_.left < this.§!!@§)
            {
               this.§-T§.x += 1 + (this.§!!@§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§!!@§)
            {
               this.§-T§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§!!@§));
            }
            if(_loc3_.top < this.§!!@§)
            {
               this.§-T§.y += mClip.height + this.§-T§.height + this.§!!@§ * 2;
            }
            this.§-T§.visible = true;
         }
         else
         {
            this.§-T§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§-T§)
         {
            this.§&h§ = null;
            while(this.§-T§.numChildren > 0)
            {
               this.§-T§.removeChildAt(0);
            }
            if(this.§-T§.parent)
            {
               this.§-T§.parent.removeChild(this.§-T§);
            }
            this.§-T§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§@!K§ = param1;
         this.§ &§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§?!f§ = param1;
         this.§ &§();
      }
      
      public function § &§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§@!K§ + "_" + this.§?!f§,this.§@!K§ + "_" + § =§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§?!f§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + § =§);
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
         if(this.§@!K§ == §?L§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§^[§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[C§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§;r§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§>n§);
         }
         if(param1 == §-!r§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§&!#§);
         }
         if(param1 == §"!S§)
         {
            Mouse.cursor = this.§9V§;
            this.setComponentVisualState(§>n§);
         }
         this.§9!I§(param1 == §"!S§);
      }
      
      public function §[C§() : void
      {
         if(this.§@!K§ == §"h§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§"h§.§"!a§);
         }
         else if(this.§@!K§ == §"h§.§"!a§)
         {
            this.setComponentState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§ &§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§9!I§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§9!I§(false);
         }
      }
   }
}
