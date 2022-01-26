package §6!K§
{
   import §,&§.§7$§;
   import §2K§.§,!@§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §3l§ extends §7!!§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §0!c§:String = "Deactive";
      
      public static const §,!8§:String = "Disabled";
      
      public static const §@Z§:String = "Out";
      
      public static const §#S§:String = "Over";
      
      public static const §4![§:String = "Up_Default";
      
      public static const § !a§:String = "Down";
      
      public static var §3!%§:Class;
      
      public static var §2! §:Boolean = true;
      
      public static const §?g§:String = "Tooltip";
      
      public static var §9W§:Boolean = true;
       
      
      public var §]!7§:String;
      
      public var §"!9§:String;
      
      public var §]%§:String;
      
      public var §!!_§:MovieClip;
      
      public var §>§:int = 6;
      
      private var §%h§:Boolean = false;
      
      private var §9!R§:String = "auto";
      
      public function §3l§(param1:XML, param2:§,!@§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§]!7§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§"!9§ = §4![§;
         this.§7!a§();
         this.§""§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§%h§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§9!R§ = _loc5_;
         }
      }
      
      public static function §3!2§() : void
      {
         §3!%§ = §7$§.§,W§(§?g§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§@Z§);
         }
      }
      
      public function §""§(param1:String) : void
      {
         this.§]%§ = param1;
         if(this.§]%§ && this.§]%§.length == 0)
         {
            this.§]%§ = null;
         }
         if(this.§]%§)
         {
            if(§2! §)
            {
               §2! § = false;
               §3!2§();
            }
            this.§!!_§ = new MovieClip();
            if(§3!%§)
            {
               this.§'G§();
            }
            else
            {
               this.§#W§();
            }
            this.§!!_§.mouseEnabled = false;
            this.§!!_§.mouseChildren = false;
            this.§!!_§.visible = false;
            getParentView().addChild(this.§!!_§);
         }
      }
      
      private function §#W§() : void
      {
         this.§!!_§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§!!_§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§!!_§.addChildAt(_loc2_,0);
         this.§6J§(this.§]%§);
      }
      
      private function §'G§() : void
      {
         this.§!!_§ = new §3!%§();
         this.§51§(this.§]%§);
      }
      
      public function §51§(param1:String) : void
      {
         this.§]%§ = param1;
         if(§3!%§)
         {
            this.§,"§(param1);
         }
         else
         {
            this.§6J§(param1);
         }
      }
      
      private function §,"§(param1:String) : void
      {
         var _loc2_:TextField = this.§!!_§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§!!_§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§]%§;
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
      
      private function §6J§(param1:String) : void
      {
         var _loc2_:TextField = this.§!!_§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§]%§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§!!_§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§>§,-this.§>§,_loc2_.width + 2 * this.§>§,_loc2_.height + 2 * this.§>§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§>§ / 2,-(this.§>§ / 2),_loc2_.width + 1 * this.§>§,_loc2_.height + 1 * this.§>§);
      }
      
      private function §]n§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§!!_§ || this.§]%§ == null || this.§]%§.length == 0)
         {
            return;
         }
         if(param1 && §9W§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§!!_§.y = _loc2_.y - this.§!!_§.height - this.§>§;
            this.§!!_§.x = _loc2_.x + mClip.width / 2 - this.§!!_§.width / 2;
            _loc3_ = this.§!!_§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§>§)
            {
               this.§!!_§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§>§));
            }
            if(_loc3_.left < this.§>§)
            {
               this.§!!_§.x += 1 + (this.§>§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§>§)
            {
               this.§!!_§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§>§));
            }
            if(_loc3_.top < this.§>§)
            {
               this.§!!_§.y += mClip.height + this.§!!_§.height + this.§>§ * 2;
            }
            this.§!!_§.visible = true;
         }
         else
         {
            this.§!!_§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§!!_§)
         {
            this.§]%§ = null;
            while(this.§!!_§.numChildren > 0)
            {
               this.§!!_§.removeChildAt(0);
            }
            if(this.§!!_§.parent)
            {
               this.§!!_§.parent.removeChild(this.§!!_§);
            }
            this.§!!_§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§]!7§ = param1;
         this.§7!a§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§"!9§ = param1;
         this.§7!a§();
      }
      
      public function §7!a§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§]!7§ + "_" + this.§"!9§,this.§]!7§ + "_" + §4![§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§"!9§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §4![§);
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
         if(this.§]!7§ == §,!8§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§%h§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§8§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§ !a§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§#S§);
         }
         if(param1 == §'!>§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§@Z§);
         }
         if(param1 == §%!_§)
         {
            Mouse.cursor = this.§9!R§;
            this.setComponentVisualState(§#S§);
         }
         this.§]n§(param1 == §%!_§);
      }
      
      public function §8§() : void
      {
         if(this.§]!7§ == §3l§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§3l§.§0!c§);
         }
         else if(this.§]!7§ == §3l§.§0!c§)
         {
            this.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§7!a§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§]n§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§]n§(false);
         }
      }
   }
}
