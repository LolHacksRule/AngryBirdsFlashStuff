package §3!R§
{
   import § 1§.§=§;
   import §2y§.§]`§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §,=§ extends §0!R§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §!g§:String = "Deactive";
      
      public static const §%,§:String = "Disabled";
      
      public static const §2;§:String = "Out";
      
      public static const §>!m§:String = "Over";
      
      public static const §1§:String = "Up_Default";
      
      public static const §[! §:String = "Down";
      
      public static var §]'§:Class;
      
      public static var §@^§:Boolean = true;
      
      public static const §@§:String = "Tooltip";
      
      public static var §1^§:Boolean = true;
       
      
      public var §&E§:String;
      
      public var §`L§:String;
      
      public var §4!S§:String;
      
      public var §0!m§:MovieClip;
      
      public var §0R§:int = 6;
      
      private var §'!F§:Boolean = false;
      
      private var §#!j§:String = "auto";
      
      public function §,=§(param1:XML, param2:§]`§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§&E§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§`L§ = §1§;
         this.§3!_§();
         this.§^!`§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§'!F§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§#!j§ = _loc5_;
         }
      }
      
      public static function §5!M§() : void
      {
         §]'§ = §=§.§>!f§(§@§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§2;§);
         }
      }
      
      public function §^!`§(param1:String) : void
      {
         this.§4!S§ = param1;
         if(this.§4!S§ && this.§4!S§.length == 0)
         {
            this.§4!S§ = null;
         }
         if(this.§4!S§)
         {
            if(§@^§)
            {
               §@^§ = false;
               §5!M§();
            }
            this.§0!m§ = new MovieClip();
            if(§]'§)
            {
               this.§5!?§();
            }
            else
            {
               this.§5§();
            }
            this.§0!m§.mouseEnabled = false;
            this.§0!m§.mouseChildren = false;
            this.§0!m§.visible = false;
            getParentView().addChild(this.§0!m§);
         }
      }
      
      private function §5§() : void
      {
         this.§0!m§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§0!m§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§0!m§.addChildAt(_loc2_,0);
         this.§3!§(this.§4!S§);
      }
      
      private function §5!?§() : void
      {
         this.§0!m§ = new §]'§();
         this.§&O§(this.§4!S§);
      }
      
      public function §&O§(param1:String) : void
      {
         this.§4!S§ = param1;
         if(§]'§)
         {
            this.§@!Y§(param1);
         }
         else
         {
            this.§3!§(param1);
         }
      }
      
      private function §@!Y§(param1:String) : void
      {
         var _loc2_:TextField = this.§0!m§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§0!m§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§4!S§;
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
      
      private function §3!§(param1:String) : void
      {
         var _loc2_:TextField = this.§0!m§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§4!S§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§0!m§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§0R§,-this.§0R§,_loc2_.width + 2 * this.§0R§,_loc2_.height + 2 * this.§0R§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§0R§ / 2,-(this.§0R§ / 2),_loc2_.width + 1 * this.§0R§,_loc2_.height + 1 * this.§0R§);
      }
      
      private function §7n§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§0!m§ || this.§4!S§ == null || this.§4!S§.length == 0)
         {
            return;
         }
         if(param1 && §1^§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§0!m§.y = _loc2_.y - this.§0!m§.height - this.§0R§;
            this.§0!m§.x = _loc2_.x + mClip.width / 2 - this.§0!m§.width / 2;
            _loc3_ = this.§0!m§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§0R§)
            {
               this.§0!m§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§0R§));
            }
            if(_loc3_.left < this.§0R§)
            {
               this.§0!m§.x += 1 + (this.§0R§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§0R§)
            {
               this.§0!m§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§0R§));
            }
            if(_loc3_.top < this.§0R§)
            {
               this.§0!m§.y += mClip.height + this.§0!m§.height + this.§0R§ * 2;
            }
            this.§0!m§.visible = true;
         }
         else
         {
            this.§0!m§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§0!m§)
         {
            this.§4!S§ = null;
            while(this.§0!m§.numChildren > 0)
            {
               this.§0!m§.removeChildAt(0);
            }
            if(this.§0!m§.parent)
            {
               this.§0!m§.parent.removeChild(this.§0!m§);
            }
            this.§0!m§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§&E§ = param1;
         this.§3!_§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§`L§ = param1;
         this.§3!_§();
      }
      
      public function §3!_§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§&E§ + "_" + this.§`L§,this.§&E§ + "_" + §1§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§`L§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1§);
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
         if(this.§&E§ == §%,§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§'!F§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§=-§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§[! §);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§>!m§);
         }
         if(param1 == §&!3§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§2;§);
         }
         if(param1 == §71§)
         {
            Mouse.cursor = this.§#!j§;
            this.setComponentVisualState(§>!m§);
         }
         this.§7n§(param1 == §71§);
      }
      
      public function §=-§() : void
      {
         if(this.§&E§ == §,=§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§,=§.§!g§);
         }
         else if(this.§&E§ == §,=§.§!g§)
         {
            this.setComponentState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§3!_§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§7n§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§7n§(false);
         }
      }
   }
}
