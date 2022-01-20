package §@-§
{
   import §,!C§.§-6§;
   import §;'§.§6d§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class § x§ extends §-m§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §%!"§:String = "Deactive";
      
      public static const §;g§:String = "Disabled";
      
      public static const §10§:String = "Out";
      
      public static const §#!F§:String = "Over";
      
      public static const §"$§:String = "Up_Default";
      
      public static const §>!L§:String = "Down";
      
      public static var §7X§:Class;
      
      public static var §`>§:Boolean = true;
      
      public static const §58§:String = "Tooltip";
      
      public static var §";§:Boolean = true;
       
      
      public var §""§:String;
      
      public var §@Q§:String;
      
      public var §8l§:String;
      
      public var §?!1§:MovieClip;
      
      public var §#!%§:int = 6;
      
      private var §;!l§:Boolean = false;
      
      private var §3s§:String = "auto";
      
      public function § x§(param1:XML, param2:§-6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§""§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§@Q§ = §"$§;
         this.§4`§();
         this.§@!h§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§;!l§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§3s§ = _loc5_;
         }
      }
      
      public static function §9A§() : void
      {
         §7X§ = §6d§.§=!Y§(§58§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§10§);
         }
      }
      
      public function §@!h§(param1:String) : void
      {
         this.§8l§ = param1;
         if(this.§8l§ && this.§8l§.length == 0)
         {
            this.§8l§ = null;
         }
         if(this.§8l§)
         {
            if(§`>§)
            {
               §`>§ = false;
               §9A§();
            }
            this.§?!1§ = new MovieClip();
            if(§7X§)
            {
               this.§"!I§();
            }
            else
            {
               this.§<!J§();
            }
            this.§?!1§.mouseEnabled = false;
            this.§?!1§.mouseChildren = false;
            this.§?!1§.visible = false;
            getParentView().addChild(this.§?!1§);
         }
      }
      
      private function §<!J§() : void
      {
         this.§?!1§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§?!1§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§?!1§.addChildAt(_loc2_,0);
         this.§0V§(this.§8l§);
      }
      
      private function §"!I§() : void
      {
         this.§?!1§ = new §7X§();
         this.§2i§(this.§8l§);
      }
      
      public function §2i§(param1:String) : void
      {
         this.§8l§ = param1;
         if(§7X§)
         {
            this.§-!i§(param1);
         }
         else
         {
            this.§0V§(param1);
         }
      }
      
      private function §-!i§(param1:String) : void
      {
         var _loc2_:TextField = this.§?!1§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§?!1§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§8l§;
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
      
      private function §0V§(param1:String) : void
      {
         var _loc2_:TextField = this.§?!1§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§8l§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§?!1§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§#!%§,-this.§#!%§,_loc2_.width + 2 * this.§#!%§,_loc2_.height + 2 * this.§#!%§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§#!%§ / 2,-(this.§#!%§ / 2),_loc2_.width + 1 * this.§#!%§,_loc2_.height + 1 * this.§#!%§);
      }
      
      private function §4n§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§?!1§ || this.§8l§ == null || this.§8l§.length == 0)
         {
            return;
         }
         if(param1 && §";§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§?!1§.y = _loc2_.y - this.§?!1§.height - this.§#!%§;
            this.§?!1§.x = _loc2_.x + mClip.width / 2 - this.§?!1§.width / 2;
            _loc3_ = this.§?!1§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§#!%§)
            {
               this.§?!1§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§#!%§));
            }
            if(_loc3_.left < this.§#!%§)
            {
               this.§?!1§.x += 1 + (this.§#!%§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§#!%§)
            {
               this.§?!1§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§#!%§));
            }
            if(_loc3_.top < this.§#!%§)
            {
               this.§?!1§.y += mClip.height + this.§?!1§.height + this.§#!%§ * 2;
            }
            this.§?!1§.visible = true;
         }
         else
         {
            this.§?!1§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§?!1§)
         {
            this.§8l§ = null;
            while(this.§?!1§.numChildren > 0)
            {
               this.§?!1§.removeChildAt(0);
            }
            if(this.§?!1§.parent)
            {
               this.§?!1§.parent.removeChild(this.§?!1§);
            }
            this.§?!1§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§""§ = param1;
         this.§4`§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§@Q§ = param1;
         this.§4`§();
      }
      
      public function §4`§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§""§ + "_" + this.§@Q§,this.§""§ + "_" + §"$§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§@Q§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §"$§);
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
         if(this.§""§ == §;g§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§;!l§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§#?§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§>!L§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§#!F§);
         }
         if(param1 == §5O§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§10§);
         }
         if(param1 == §?-§)
         {
            Mouse.cursor = this.§3s§;
            this.setComponentVisualState(§#!F§);
         }
         this.§4n§(param1 == §?-§);
      }
      
      public function §#?§() : void
      {
         if(this.§""§ == § x§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§ x§.§%!"§);
         }
         else if(this.§""§ == § x§.§%!"§)
         {
            this.setComponentState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§4`§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§4n§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§4n§(false);
         }
      }
   }
}
