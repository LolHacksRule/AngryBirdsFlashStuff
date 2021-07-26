package §,!Q§
{
   import §!"'§.§0"Z§;
   import §#,§.§]$+§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import com.rovio.assets.§6$A§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §+!2§ extends §8#=§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §6v§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §3$$§:String = "Out";
      
      public static const §-#f§:String = "Over";
      
      public static const §##-§:String = "Up_Default";
      
      public static const §="J§:String = "Down";
      
      public static var §3"m§:Class;
      
      public static var §6$!§:Boolean = true;
      
      public static const §`"8§:String = "Tooltip";
      
      public static var §7m§:Boolean = true;
       
      
      public var §>'§:String;
      
      public var §?#T§:String;
      
      public var §7"v§:String;
      
      public var §@"B§:MovieClip;
      
      public var §]l§:int = 6;
      
      private var §2P§:Boolean = false;
      
      private var §;#[§:String = "auto";
      
      private var §4#0§:§7$C§;
      
      public function §+!2§(param1:XML, param2:§]$+§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§>'§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§?#T§ = §##-§;
         this.§8%§();
         this.§#j§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§2P§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§;#[§ = _loc4_;
            }
         }
         §1r§(§0!5§,param1.@MouseOver);
         §1r§(§<!$§,param1.@MouseOut);
      }
      
      public static function §'U§() : void
      {
         §3"m§ = §6$A§.§1!m§(§`"8§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§3$$§);
         }
      }
      
      public function §#j§(param1:String) : void
      {
         this.§7"v§ = param1;
         if(this.§7"v§ && this.§7"v§.length == 0)
         {
            this.§7"v§ = null;
         }
         if(this.§7"v§)
         {
            if(§6$!§)
            {
               §6$!§ = false;
               §'U§();
            }
            this.§@"B§ = new MovieClip();
            if(§3"m§)
            {
               this.§4!X§();
            }
            else
            {
               this.§6+§();
            }
            this.§@"B§.mouseEnabled = false;
            this.§@"B§.mouseChildren = false;
            this.§@"B§.visible = false;
            getParentView().addChild(this.§@"B§);
         }
      }
      
      private function §6+§() : void
      {
         this.§@"B§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§@"B§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§@"B§.addChildAt(_loc2_,0);
         this.§6#-§(this.§7"v§);
      }
      
      private function §4!X§() : void
      {
         this.§@"B§ = new §3"m§();
         this.§-$B§(this.§7"v§);
      }
      
      public function §-$B§(param1:String) : void
      {
         this.§7"v§ = param1;
         if(§3"m§)
         {
            this.§^!a§(param1);
         }
         else
         {
            this.§6#-§(param1);
         }
      }
      
      private function §^!a§(param1:String) : void
      {
         var _loc2_:TextField = this.§@"B§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§@"B§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§7"v§;
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
      
      private function §6#-§(param1:String) : void
      {
         var _loc2_:TextField = this.§@"B§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§7"v§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§@"B§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§]l§,-this.§]l§,_loc2_.width + 2 * this.§]l§,_loc2_.height + 2 * this.§]l§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§]l§ / 2,-(this.§]l§ / 2),_loc2_.width + 1 * this.§]l§,_loc2_.height + 1 * this.§]l§);
      }
      
      private function §9F§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§@"B§ || this.§7"v§ == null || this.§7"v§.length == 0)
         {
            return;
         }
         if(param1 && §7m§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§@"B§.y = _loc2_.y - this.§@"B§.height - this.§]l§;
            this.§@"B§.x = _loc2_.x + mClip.width / 2 - this.§@"B§.width / 2;
            _loc3_ = this.§@"B§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§]l§)
            {
               this.§@"B§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]l§));
            }
            if(_loc3_.left < this.§]l§)
            {
               this.§@"B§.x += 1 + (this.§]l§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§]l§)
            {
               this.§@"B§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]l§));
            }
            if(_loc3_.top < this.§]l§)
            {
               this.§@"B§.y += mClip.height + this.§@"B§.height + this.§]l§ * 2;
            }
            this.§@"B§.visible = true;
         }
         else
         {
            this.§@"B§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§>'§ = COMPONENT_STATE_DISABLED;
         if(this.§@"B§)
         {
            this.§7"v§ = null;
            while(this.§@"B§.numChildren > 0)
            {
               this.§@"B§.removeChildAt(0);
            }
            if(this.§@"B§.parent)
            {
               this.§@"B§.parent.removeChild(this.§@"B§);
            }
            this.§@"B§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§>'§ = param1;
         this.§8%§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§2"6§ && §##f§)
         {
            if(param1 == §-#f§)
            {
               if(this.§4#0§ != null)
               {
                  this.§4#0§.stop();
               }
               this.§4#0§ = §"!&§.§`"H§.§1"W§(mClip,{
                  "scaleX":§##f§.scaleX + 0.1,
                  "scaleY":§##f§.scaleY + 0.1
               },null,0.1);
               this.§4#0§.play();
            }
            else if(param1 == §3$$§)
            {
               if(this.§4#0§ != null)
               {
                  this.§4#0§.stop();
               }
               this.§4#0§ = §"!&§.§`"H§.§1"W§(mClip,{
                  "scaleX":§##f§.scaleX,
                  "scaleY":§##f§.scaleY
               },null,0.1);
               this.§4#0§.play();
            }
         }
         this.§?#T§ = param1;
         this.§8%§();
      }
      
      public function §8%§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§>'§ + "_" + this.§?#T§,this.§>'§ + "_" + §##-§];
         if(this.§>'§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§?#T§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §##-§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§=b§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §=b§(param1:String) : Boolean
      {
         var _loc2_:FrameLabel = null;
         for each(_loc2_ in mClip.currentLabels)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §0"Z§
      {
         if(this.§>'§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§2P§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§`$&§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§="J§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§-#f§);
         }
         if(param1 == §<!$§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§3$$§);
         }
         if(param1 == §0!5§)
         {
            Mouse.cursor = this.§;#[§;
            this.setComponentVisualState(§-#f§);
         }
         this.§9F§(param1 == §0!5§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §`$&§() : void
      {
         if(this.§>'§ == §+!2§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§+!2§.§6v§);
         }
         else if(this.§>'§ == §+!2§.§6v§)
         {
            this.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
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
         this.§8%§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§9F§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§9F§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§4#0§)
         {
            this.§4#0§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§4#0§)
         {
            this.§4#0§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
