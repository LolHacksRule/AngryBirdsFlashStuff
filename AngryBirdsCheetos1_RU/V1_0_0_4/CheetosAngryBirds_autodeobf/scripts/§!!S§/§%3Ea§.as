package §!!S§
{
   import §3!M§.§7^§;
   import §@y§.§"!X§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §>a§ extends §'+§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §%b§:String = "Deactive";
      
      public static const §9E§:String = "Disabled";
      
      public static const §@n§:String = "Out";
      
      public static const §4!A§:String = "Over";
      
      public static const §4!C§:String = "Up_Default";
      
      public static const §9%§:String = "Down";
      
      public static var §2!I§:Class;
      
      public static var §!§:Boolean = true;
      
      public static const §3![§:String = "Tooltip";
      
      public static var §3P§:Boolean = true;
       
      
      public var §,k§:String;
      
      public var §;!S§:String;
      
      public var §>Y§:String;
      
      public var §`3§:MovieClip;
      
      public var §+!_§:int = 6;
      
      private var §^j§:Boolean = false;
      
      private var §81§:String = "auto";
      
      public function §>a§(param1:XML, param2:§7^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§,k§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§;!S§ = §4!C§;
         this.§%n§();
         this.§<!Q§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§^j§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§81§ = _loc5_;
         }
      }
      
      public static function §!U§() : void
      {
         §2!I§ = §"!X§.§1!0§(§3![§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§@n§);
         }
      }
      
      public function §<!Q§(param1:String) : void
      {
         this.§>Y§ = param1;
         if(this.§>Y§ && this.§>Y§.length == 0)
         {
            this.§>Y§ = null;
         }
         if(this.§>Y§)
         {
            if(§!§)
            {
               §!§ = false;
               §!U§();
            }
            this.§`3§ = new MovieClip();
            if(§2!I§)
            {
               this.§=y§();
            }
            else
            {
               this.§-!J§();
            }
            this.§`3§.mouseEnabled = false;
            this.§`3§.mouseChildren = false;
            this.§`3§.visible = false;
            getParentView().addChild(this.§`3§);
         }
      }
      
      private function §-!J§() : void
      {
         this.§`3§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§`3§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§`3§.addChildAt(_loc2_,0);
         this.§?J§(this.§>Y§);
      }
      
      private function §=y§() : void
      {
         this.§`3§ = new §2!I§();
         this.§`x§(this.§>Y§);
      }
      
      public function §`x§(param1:String) : void
      {
         this.§>Y§ = param1;
         if(§2!I§)
         {
            this.§>!$§(param1);
         }
         else
         {
            this.§?J§(param1);
         }
      }
      
      private function §>!$§(param1:String) : void
      {
         var _loc2_:TextField = this.§`3§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§`3§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§>Y§;
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
      
      private function §?J§(param1:String) : void
      {
         var _loc2_:TextField = this.§`3§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§>Y§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§`3§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§+!_§,-this.§+!_§,_loc2_.width + 2 * this.§+!_§,_loc2_.height + 2 * this.§+!_§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§+!_§ / 2,-(this.§+!_§ / 2),_loc2_.width + 1 * this.§+!_§,_loc2_.height + 1 * this.§+!_§);
      }
      
      private function §?§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§`3§ || this.§>Y§ == null || this.§>Y§.length == 0)
         {
            return;
         }
         if(param1 && §3P§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§`3§.y = _loc2_.y - this.§`3§.height - this.§+!_§;
            this.§`3§.x = _loc2_.x + mClip.width / 2 - this.§`3§.width / 2;
            _loc3_ = this.§`3§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§+!_§)
            {
               this.§`3§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§+!_§));
            }
            if(_loc3_.left < this.§+!_§)
            {
               this.§`3§.x += 1 + (this.§+!_§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§+!_§)
            {
               this.§`3§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§+!_§));
            }
            if(_loc3_.top < this.§+!_§)
            {
               this.§`3§.y += mClip.height + this.§`3§.height + this.§+!_§ * 2;
            }
            this.§`3§.visible = true;
         }
         else
         {
            this.§`3§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§`3§)
         {
            this.§>Y§ = null;
            while(this.§`3§.numChildren > 0)
            {
               this.§`3§.removeChildAt(0);
            }
            if(this.§`3§.parent)
            {
               this.§`3§.parent.removeChild(this.§`3§);
            }
            this.§`3§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§,k§ = param1;
         this.§%n§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§;!S§ = param1;
         this.§%n§();
      }
      
      public function §%n§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§,k§ + "_" + this.§;!S§,this.§,k§ + "_" + §4!C§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§;!S§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §4!C§);
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
         if(this.§,k§ == §9E§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§^j§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§-!§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§9%§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§4!A§);
         }
         if(param1 == §7![§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§@n§);
         }
         if(param1 == § !1§)
         {
            Mouse.cursor = this.§81§;
            this.setComponentVisualState(§4!A§);
         }
         this.§?§(param1 == § !1§);
      }
      
      public function §-!§() : void
      {
         if(this.§,k§ == §>a§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§>a§.§%b§);
         }
         else if(this.§,k§ == §>a§.§%b§)
         {
            this.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§%n§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§?§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§?§(false);
         }
      }
   }
}
