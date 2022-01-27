package §'!N§
{
   import §=8§.§'^§;
   import com.rovio.assets.§4D§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §>p§ extends §"f§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §'-§:String = "Deactive";
      
      public static const §3!-§:String = "Disabled";
      
      public static const §1,§:String = "Out";
      
      public static const §?W§:String = "Over";
      
      public static const §05§:String = "Up_Default";
      
      public static const §&e§:String = "Down";
      
      public static var §#&§:Class;
      
      public static var §?!!§:Boolean = true;
      
      public static const §]Y§:String = "Tooltip";
      
      public static var §9"§:Boolean = true;
       
      
      public var §0w§:String;
      
      public var §04§:String;
      
      public var §+!B§:String;
      
      public var §9!%§:MovieClip;
      
      public var §4!>§:int = 6;
      
      private var §=t§:Boolean = false;
      
      private var §7!&§:String = "auto";
      
      public function §>p§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§0w§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§04§ = §05§;
         this.§`S§();
         this.§!!+§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§=t§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§7!&§ = _loc5_;
         }
      }
      
      public static function §55§() : void
      {
         §#&§ = §4D§.§,!O§(§]Y§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§1,§);
         }
      }
      
      public function §!!+§(param1:String) : void
      {
         this.§+!B§ = param1;
         if(this.§+!B§ && this.§+!B§.length == 0)
         {
            this.§+!B§ = null;
         }
         if(this.§+!B§)
         {
            if(§?!!§)
            {
               §?!!§ = false;
               §55§();
            }
            this.§9!%§ = new MovieClip();
            if(§#&§)
            {
               this.§2!+§();
            }
            else
            {
               this.§1i§();
            }
            this.§9!%§.mouseEnabled = false;
            this.§9!%§.mouseChildren = false;
            this.§9!%§.visible = false;
            getParentView().addChild(this.§9!%§);
         }
      }
      
      private function §1i§() : void
      {
         this.§9!%§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§9!%§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§9!%§.addChildAt(_loc2_,0);
         this.§?N§(this.§+!B§);
      }
      
      private function §2!+§() : void
      {
         this.§9!%§ = new §#&§();
         this.§<0§(this.§+!B§);
      }
      
      public function §<0§(param1:String) : void
      {
         this.§+!B§ = param1;
         if(§#&§)
         {
            this.§+!?§(param1);
         }
         else
         {
            this.§?N§(param1);
         }
      }
      
      private function §+!?§(param1:String) : void
      {
         var _loc2_:TextField = this.§9!%§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§9!%§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§+!B§;
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
      
      private function §?N§(param1:String) : void
      {
         var _loc2_:TextField = this.§9!%§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§+!B§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§9!%§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§4!>§,-this.§4!>§,_loc2_.width + 2 * this.§4!>§,_loc2_.height + 2 * this.§4!>§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§4!>§ / 2,-(this.§4!>§ / 2),_loc2_.width + 1 * this.§4!>§,_loc2_.height + 1 * this.§4!>§);
      }
      
      private function §4!9§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§9!%§ || this.§+!B§ == null || this.§+!B§.length == 0)
         {
            return;
         }
         if(param1 && §9"§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§9!%§.y = _loc2_.y - this.§9!%§.height - this.§4!>§;
            this.§9!%§.x = _loc2_.x + mClip.width / 2 - this.§9!%§.width / 2;
            _loc3_ = this.§9!%§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§4!>§)
            {
               this.§9!%§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4!>§));
            }
            if(_loc3_.left < this.§4!>§)
            {
               this.§9!%§.x += 1 + (this.§4!>§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§4!>§)
            {
               this.§9!%§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4!>§));
            }
            if(_loc3_.top < this.§4!>§)
            {
               this.§9!%§.y += mClip.height + this.§9!%§.height + this.§4!>§ * 2;
            }
            this.§9!%§.visible = true;
         }
         else
         {
            this.§9!%§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§9!%§)
         {
            this.§+!B§ = null;
            while(this.§9!%§.numChildren > 0)
            {
               this.§9!%§.removeChildAt(0);
            }
            if(this.§9!%§.parent)
            {
               this.§9!%§.parent.removeChild(this.§9!%§);
            }
            this.§9!%§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§0w§ = param1;
         this.§`S§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§04§ = param1;
         this.§`S§();
      }
      
      public function §`S§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§0w§ + "_" + this.§04§,this.§0w§ + "_" + §05§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§04§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §05§);
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
         if(this.§0w§ == §3!-§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§=t§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§,a§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§&e§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§?W§);
         }
         if(param1 == §+]§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§1,§);
         }
         if(param1 == §6!I§)
         {
            Mouse.cursor = this.§7!&§;
            this.setComponentVisualState(§?W§);
         }
         this.§4!9§(param1 == §6!I§);
      }
      
      public function §,a§() : void
      {
         if(this.§0w§ == §>p§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§>p§.§'-§);
         }
         else if(this.§0w§ == §>p§.§'-§)
         {
            this.setComponentState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§`S§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§4!9§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§4!9§(false);
         }
      }
   }
}
