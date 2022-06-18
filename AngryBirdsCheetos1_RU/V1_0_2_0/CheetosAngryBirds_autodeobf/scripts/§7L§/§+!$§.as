package §7L§
{
   import §6&§.§9e§;
   import §[]§.§`!`§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §+!$§ extends §-!B§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §^U§:String = "Deactive";
      
      public static const §2!H§:String = "Disabled";
      
      public static const §!I§:String = "Out";
      
      public static const §7!X§:String = "Over";
      
      public static const §2!I§:String = "Up_Default";
      
      public static const §,!7§:String = "Down";
      
      public static var §`+§:Class;
      
      public static var §`"§:Boolean = true;
      
      public static const §&Y§:String = "Tooltip";
      
      public static var §'!M§:Boolean = true;
       
      
      public var §'N§:String;
      
      public var §!_§:String;
      
      public var §>!0§:String;
      
      public var §-K§:MovieClip;
      
      public var §5z§:int = 6;
      
      private var §0p§:Boolean = false;
      
      private var §=F§:String = "auto";
      
      public function §+!$§(param1:XML, param2:§`!`§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§'N§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§!_§ = §2!I§;
         this.§%7§();
         this.§`M§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§0p§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§=F§ = _loc5_;
         }
      }
      
      public static function §!!0§() : void
      {
         §`+§ = §9e§.§6!?§(§&Y§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§!I§);
         }
      }
      
      public function §`M§(param1:String) : void
      {
         this.§>!0§ = param1;
         if(this.§>!0§ && this.§>!0§.length == 0)
         {
            this.§>!0§ = null;
         }
         if(this.§>!0§)
         {
            if(§`"§)
            {
               §`"§ = false;
               §!!0§();
            }
            this.§-K§ = new MovieClip();
            if(§`+§)
            {
               this.§=!-§();
            }
            else
            {
               this.§=v§();
            }
            this.§-K§.mouseEnabled = false;
            this.§-K§.mouseChildren = false;
            this.§-K§.visible = false;
            getParentView().addChild(this.§-K§);
         }
      }
      
      private function §=v§() : void
      {
         this.§-K§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§-K§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§-K§.addChildAt(_loc2_,0);
         this.§>!J§(this.§>!0§);
      }
      
      private function §=!-§() : void
      {
         this.§-K§ = new §`+§();
         this.§ !<§(this.§>!0§);
      }
      
      public function § !<§(param1:String) : void
      {
         this.§>!0§ = param1;
         if(§`+§)
         {
            this.§6G§(param1);
         }
         else
         {
            this.§>!J§(param1);
         }
      }
      
      private function §6G§(param1:String) : void
      {
         var _loc2_:TextField = this.§-K§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§-K§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§>!0§;
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
      
      private function §>!J§(param1:String) : void
      {
         var _loc2_:TextField = this.§-K§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§>!0§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§-K§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§5z§,-this.§5z§,_loc2_.width + 2 * this.§5z§,_loc2_.height + 2 * this.§5z§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§5z§ / 2,-(this.§5z§ / 2),_loc2_.width + 1 * this.§5z§,_loc2_.height + 1 * this.§5z§);
      }
      
      private function §'Z§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§-K§ || this.§>!0§ == null || this.§>!0§.length == 0)
         {
            return;
         }
         if(param1 && §'!M§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§-K§.y = _loc2_.y - this.§-K§.height - this.§5z§;
            this.§-K§.x = _loc2_.x + mClip.width / 2 - this.§-K§.width / 2;
            _loc3_ = this.§-K§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§5z§)
            {
               this.§-K§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§5z§));
            }
            if(_loc3_.left < this.§5z§)
            {
               this.§-K§.x += 1 + (this.§5z§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§5z§)
            {
               this.§-K§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§5z§));
            }
            if(_loc3_.top < this.§5z§)
            {
               this.§-K§.y += mClip.height + this.§-K§.height + this.§5z§ * 2;
            }
            this.§-K§.visible = true;
         }
         else
         {
            this.§-K§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§-K§)
         {
            this.§>!0§ = null;
            while(this.§-K§.numChildren > 0)
            {
               this.§-K§.removeChildAt(0);
            }
            if(this.§-K§.parent)
            {
               this.§-K§.parent.removeChild(this.§-K§);
            }
            this.§-K§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§'N§ = param1;
         this.§%7§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§!_§ = param1;
         this.§%7§();
      }
      
      public function §%7§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§'N§ + "_" + this.§!_§,this.§'N§ + "_" + §2!I§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§!_§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §2!I§);
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
         if(this.§'N§ == §2!H§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§0p§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§#T§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§,!7§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§7!X§);
         }
         if(param1 == §!t§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§!I§);
         }
         if(param1 == §[h§)
         {
            Mouse.cursor = this.§=F§;
            this.setComponentVisualState(§7!X§);
         }
         this.§'Z§(param1 == §[h§);
      }
      
      public function §#T§() : void
      {
         if(this.§'N§ == §+!$§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§+!$§.§^U§);
         }
         else if(this.§'N§ == §+!$§.§^U§)
         {
            this.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§%7§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§'Z§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§'Z§(false);
         }
      }
   }
}
