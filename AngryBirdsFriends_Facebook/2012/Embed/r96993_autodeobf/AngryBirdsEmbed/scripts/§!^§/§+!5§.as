package §!^§
{
   import §-!'§.§in §;
   import com.rovio.assets.§''§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §+!5§ extends § >§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,7§:String = "Deactive";
      
      public static const § !G§:String = "Disabled";
      
      public static const §&B§:String = "Out";
      
      public static const §0O§:String = "Over";
      
      public static const §[!#§:String = "Up_Default";
      
      public static const §6§:String = "Down";
      
      public static var §'!I§:Class;
      
      public static var §"!H§:Boolean = true;
      
      public static const §"X§:String = "Tooltip";
      
      public static var §1!>§:Boolean = true;
       
      
      public var §8E§:String;
      
      public var §^!&§:String;
      
      public var §2F§:String;
      
      public var §3Q§:MovieClip;
      
      public var §?[§:int = 6;
      
      private var §@!C§:Boolean = false;
      
      private var include:String = "auto";
      
      public function §+!5§(param1:XML, param2:§in §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§8E§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§^!&§ = §[!#§;
         this.§ do§();
         this.§4!H§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§@!C§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.include = _loc5_;
         }
      }
      
      public static function §1q§() : void
      {
         §'!I§ = §''§.§-C§(§"X§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§&B§);
         }
      }
      
      public function §4!H§(param1:String) : void
      {
         this.§2F§ = param1;
         if(this.§2F§ && this.§2F§.length == 0)
         {
            this.§2F§ = null;
         }
         if(this.§2F§)
         {
            if(§"!H§)
            {
               §"!H§ = false;
               §1q§();
            }
            this.§3Q§ = new MovieClip();
            if(§'!I§)
            {
               this.§8m§();
            }
            else
            {
               this.§]J§();
            }
            this.§3Q§.mouseEnabled = false;
            this.§3Q§.mouseChildren = false;
            this.§3Q§.visible = false;
            getParentView().addChild(this.§3Q§);
         }
      }
      
      private function §]J§() : void
      {
         this.§3Q§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§3Q§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§3Q§.addChildAt(_loc2_,0);
         this.§5p§(this.§2F§);
      }
      
      private function §8m§() : void
      {
         this.§3Q§ = new §'!I§();
         this.§7O§(this.§2F§);
      }
      
      public function §7O§(param1:String) : void
      {
         this.§2F§ = param1;
         if(§'!I§)
         {
            this.§>X§(param1);
         }
         else
         {
            this.§5p§(param1);
         }
      }
      
      private function §>X§(param1:String) : void
      {
         var _loc2_:TextField = this.§3Q§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§3Q§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§2F§;
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
      
      private function §5p§(param1:String) : void
      {
         var _loc2_:TextField = this.§3Q§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§2F§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§3Q§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§?[§,-this.§?[§,_loc2_.width + 2 * this.§?[§,_loc2_.height + 2 * this.§?[§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§?[§ / 2,-(this.§?[§ / 2),_loc2_.width + 1 * this.§?[§,_loc2_.height + 1 * this.§?[§);
      }
      
      private function §'§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§3Q§ || this.§2F§ == null || this.§2F§.length == 0)
         {
            return;
         }
         if(param1 && §1!>§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§3Q§.y = _loc2_.y - this.§3Q§.height - this.§?[§;
            this.§3Q§.x = _loc2_.x + mClip.width / 2 - this.§3Q§.width / 2;
            _loc3_ = this.§3Q§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§?[§)
            {
               this.§3Q§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§?[§));
            }
            if(_loc3_.left < this.§?[§)
            {
               this.§3Q§.x += 1 + (this.§?[§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§?[§)
            {
               this.§3Q§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§?[§));
            }
            if(_loc3_.top < this.§?[§)
            {
               this.§3Q§.y += mClip.height + this.§3Q§.height + this.§?[§ * 2;
            }
            this.§3Q§.visible = true;
         }
         else
         {
            this.§3Q§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§3Q§)
         {
            this.§2F§ = null;
            while(this.§3Q§.numChildren > 0)
            {
               this.§3Q§.removeChildAt(0);
            }
            if(this.§3Q§.parent)
            {
               this.§3Q§.parent.removeChild(this.§3Q§);
            }
            this.§3Q§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§8E§ = param1;
         this.§ do§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§^!&§ = param1;
         this.§ do§();
      }
      
      public function § do§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§8E§ + "_" + this.§^!&§,this.§8E§ + "_" + §[!#§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§^!&§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §[!#§);
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
         if(this.§8E§ == § !G§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§@!C§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§!a§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§6§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§0O§);
         }
         if(param1 == §!T§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§&B§);
         }
         if(param1 == §2!F§)
         {
            Mouse.cursor = this.include;
            this.setComponentVisualState(§0O§);
         }
         this.§'§(param1 == §2!F§);
      }
      
      public function §!a§() : void
      {
         if(this.§8E§ == §+!5§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§+!5§.§,7§);
         }
         else if(this.§8E§ == §+!5§.§,7§)
         {
            this.setComponentState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§ do§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§'§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§'§(false);
         }
      }
   }
}
