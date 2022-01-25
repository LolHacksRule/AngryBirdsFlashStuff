package §2!$§
{
   import §!E§.§-!%§;
   import §^!L§.§@x§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §#!K§ extends §=!&§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §8!O§:String = "Deactive";
      
      public static const §3H§:String = "Disabled";
      
      public static const §-![§:String = "Out";
      
      public static const §@!W§:String = "Over";
      
      public static const §6!c§:String = "Up_Default";
      
      public static const §9L§:String = "Down";
      
      public static var §!N§:Class;
      
      public static var §#! §:Boolean = true;
      
      public static const §@2§:String = "Tooltip";
      
      public static var §1$§:Boolean = true;
       
      
      public var §-!N§:String;
      
      public var §>!R§:String;
      
      public var §'r§:String;
      
      public var §[L§:MovieClip;
      
      public var §8N§:int = 6;
      
      private var §>k§:Boolean = false;
      
      private var §!!^§:String = "auto";
      
      public function §#!K§(param1:XML, param2:§-!%§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§-!N§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§>!R§ = §6!c§;
         this.§!_§();
         this.§#`§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§>k§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§!!^§ = _loc5_;
         }
      }
      
      public static function §"D§() : void
      {
         §!N§ = §@x§.§="§(§@2§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§-![§);
         }
      }
      
      public function §#`§(param1:String) : void
      {
         this.§'r§ = param1;
         if(this.§'r§ && this.§'r§.length == 0)
         {
            this.§'r§ = null;
         }
         if(this.§'r§)
         {
            if(§#! §)
            {
               §#! § = false;
               §"D§();
            }
            this.§[L§ = new MovieClip();
            if(§!N§)
            {
               this.§7H§();
            }
            else
            {
               this.§7!Z§();
            }
            this.§[L§.mouseEnabled = false;
            this.§[L§.mouseChildren = false;
            this.§[L§.visible = false;
            getParentView().addChild(this.§[L§);
         }
      }
      
      private function §7!Z§() : void
      {
         this.§[L§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§[L§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§[L§.addChildAt(_loc2_,0);
         this.§=-§(this.§'r§);
      }
      
      private function §7H§() : void
      {
         this.§[L§ = new §!N§();
         this.§4&§(this.§'r§);
      }
      
      public function §4&§(param1:String) : void
      {
         this.§'r§ = param1;
         if(§!N§)
         {
            this.§,]§(param1);
         }
         else
         {
            this.§=-§(param1);
         }
      }
      
      private function §,]§(param1:String) : void
      {
         var _loc2_:TextField = this.§[L§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§[L§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§'r§;
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
      
      private function §=-§(param1:String) : void
      {
         var _loc2_:TextField = this.§[L§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§'r§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§[L§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§8N§,-this.§8N§,_loc2_.width + 2 * this.§8N§,_loc2_.height + 2 * this.§8N§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§8N§ / 2,-(this.§8N§ / 2),_loc2_.width + 1 * this.§8N§,_loc2_.height + 1 * this.§8N§);
      }
      
      private function §'!#§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§[L§ || this.§'r§ == null || this.§'r§.length == 0)
         {
            return;
         }
         if(param1 && §1$§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§[L§.y = _loc2_.y - this.§[L§.height - this.§8N§;
            this.§[L§.x = _loc2_.x + mClip.width / 2 - this.§[L§.width / 2;
            _loc3_ = this.§[L§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§8N§)
            {
               this.§[L§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§8N§));
            }
            if(_loc3_.left < this.§8N§)
            {
               this.§[L§.x += 1 + (this.§8N§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§8N§)
            {
               this.§[L§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§8N§));
            }
            if(_loc3_.top < this.§8N§)
            {
               this.§[L§.y += mClip.height + this.§[L§.height + this.§8N§ * 2;
            }
            this.§[L§.visible = true;
         }
         else
         {
            this.§[L§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§[L§)
         {
            this.§'r§ = null;
            while(this.§[L§.numChildren > 0)
            {
               this.§[L§.removeChildAt(0);
            }
            if(this.§[L§.parent)
            {
               this.§[L§.parent.removeChild(this.§[L§);
            }
            this.§[L§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§-!N§ = param1;
         this.§!_§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§>!R§ = param1;
         this.§!_§();
      }
      
      public function §!_§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§-!N§ + "_" + this.§>!R§,this.§-!N§ + "_" + §6!c§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§>!R§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §6!c§);
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
         if(this.§-!N§ == §3H§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§>k§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[$§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§9L§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§@!W§);
         }
         if(param1 == §"!4§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§-![§);
         }
         if(param1 == §+!0§)
         {
            Mouse.cursor = this.§!!^§;
            this.setComponentVisualState(§@!W§);
         }
         this.§'!#§(param1 == §+!0§);
      }
      
      public function §[$§() : void
      {
         if(this.§-!N§ == §#!K§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§#!K§.§8!O§);
         }
         else if(this.§-!N§ == §#!K§.§8!O§)
         {
            this.setComponentState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§!_§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§'!#§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§'!#§(false);
         }
      }
   }
}
