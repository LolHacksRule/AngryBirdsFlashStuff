package §'!N§
{
   import §;[§.§>!^§;
   import §]0§.§%%§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §71§ extends §2!3§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §69§:String = "Deactive";
      
      public static const §'!,§:String = "Disabled";
      
      public static const §<!8§:String = "Out";
      
      public static const §9!"§:String = "Over";
      
      public static const §98§:String = "Up_Default";
      
      public static const §>U§:String = "Down";
      
      public static var §switch§:Class;
      
      public static var §!B§:Boolean = true;
      
      public static const §8a§:String = "Tooltip";
      
      public static var §<C§:Boolean = true;
       
      
      public var §4!O§:String;
      
      public var §66§:String;
      
      public var §7!6§:String;
      
      public var §`]§:MovieClip;
      
      public var §^!^§:int = 6;
      
      private var § %§:Boolean = false;
      
      private var §`!%§:String = "auto";
      
      public function §71§(param1:XML, param2:§>!^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§4!O§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§66§ = §98§;
         this.§'!G§();
         this.§1!^§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§ %§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§`!%§ = _loc5_;
         }
      }
      
      public static function §5;§() : void
      {
         §switch§ = §%%§.§in §(§8a§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§<!8§);
         }
      }
      
      public function §1!^§(param1:String) : void
      {
         this.§7!6§ = param1;
         if(this.§7!6§ && this.§7!6§.length == 0)
         {
            this.§7!6§ = null;
         }
         if(this.§7!6§)
         {
            if(§!B§)
            {
               §!B§ = false;
               §5;§();
            }
            this.§`]§ = new MovieClip();
            if(§switch§)
            {
               this.§,!9§();
            }
            else
            {
               this.§<g§();
            }
            this.§`]§.mouseEnabled = false;
            this.§`]§.mouseChildren = false;
            this.§`]§.visible = false;
            getParentView().addChild(this.§`]§);
         }
      }
      
      private function §<g§() : void
      {
         this.§`]§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§`]§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§`]§.addChildAt(_loc2_,0);
         this.§?b§(this.§7!6§);
      }
      
      private function §,!9§() : void
      {
         this.§`]§ = new §switch§();
         this.§"d§(this.§7!6§);
      }
      
      public function §"d§(param1:String) : void
      {
         this.§7!6§ = param1;
         if(§switch§)
         {
            this.§ !"§(param1);
         }
         else
         {
            this.§?b§(param1);
         }
      }
      
      private function § !"§(param1:String) : void
      {
         var _loc2_:TextField = this.§`]§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§`]§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§7!6§;
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
      
      private function §?b§(param1:String) : void
      {
         var _loc2_:TextField = this.§`]§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§7!6§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§`]§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§^!^§,-this.§^!^§,_loc2_.width + 2 * this.§^!^§,_loc2_.height + 2 * this.§^!^§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§^!^§ / 2,-(this.§^!^§ / 2),_loc2_.width + 1 * this.§^!^§,_loc2_.height + 1 * this.§^!^§);
      }
      
      private function §^!M§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§`]§ || this.§7!6§ == null || this.§7!6§.length == 0)
         {
            return;
         }
         if(param1 && §<C§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§`]§.y = _loc2_.y - this.§`]§.height - this.§^!^§;
            this.§`]§.x = _loc2_.x + mClip.width / 2 - this.§`]§.width / 2;
            _loc3_ = this.§`]§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§^!^§)
            {
               this.§`]§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^!^§));
            }
            if(_loc3_.left < this.§^!^§)
            {
               this.§`]§.x += 1 + (this.§^!^§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§^!^§)
            {
               this.§`]§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^!^§));
            }
            if(_loc3_.top < this.§^!^§)
            {
               this.§`]§.y += mClip.height + this.§`]§.height + this.§^!^§ * 2;
            }
            this.§`]§.visible = true;
         }
         else
         {
            this.§`]§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§`]§)
         {
            this.§7!6§ = null;
            while(this.§`]§.numChildren > 0)
            {
               this.§`]§.removeChildAt(0);
            }
            if(this.§`]§.parent)
            {
               this.§`]§.parent.removeChild(this.§`]§);
            }
            this.§`]§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§4!O§ = param1;
         this.§'!G§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§66§ = param1;
         this.§'!G§();
      }
      
      public function §'!G§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§4!O§ + "_" + this.§66§,this.§4!O§ + "_" + §98§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§66§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §98§);
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
         if(this.§4!O§ == §'!,§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§ %§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§7f§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§>U§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§9!"§);
         }
         if(param1 == §5V§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§<!8§);
         }
         if(param1 == §0!>§)
         {
            Mouse.cursor = this.§`!%§;
            this.setComponentVisualState(§9!"§);
         }
         this.§^!M§(param1 == §0!>§);
      }
      
      public function §7f§() : void
      {
         if(this.§4!O§ == §71§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§71§.§69§);
         }
         else if(this.§4!O§ == §71§.§69§)
         {
            this.setComponentState(§71§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§'!G§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§^!M§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§^!M§(false);
         }
      }
   }
}
