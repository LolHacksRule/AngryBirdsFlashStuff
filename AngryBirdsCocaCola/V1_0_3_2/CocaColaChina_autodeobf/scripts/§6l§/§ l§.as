package §6l§
{
   import §'b§.§'^§;
   import §-!9§.§3!5§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class § l§ extends §-a§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §6!b§:String = "Deactive";
      
      public static const §1'§:String = "Disabled";
      
      public static const §^X§:String = "Out";
      
      public static const §!!V§:String = "Over";
      
      public static const §>!0§:String = "Up_Default";
      
      public static const §+H§:String = "Down";
      
      public static var §^6§:Class;
      
      public static var §#w§:Boolean = true;
      
      public static const §'E§:String = "Tooltip";
      
      public static var §3f§:Boolean = true;
       
      
      public var §];§:String;
      
      public var §,!J§:String;
      
      public var §+!T§:String;
      
      public var §8[§:MovieClip;
      
      public var §;!E§:int = 6;
      
      private var §9!Y§:Boolean = false;
      
      private var § each§:String = "auto";
      
      public function § l§(param1:XML, param2:§'^§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§];§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§,!J§ = §>!0§;
         this.§,!O§();
         this.§@'§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§9!Y§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§ each§ = _loc5_;
         }
      }
      
      public static function §1!!§() : void
      {
         §^6§ = §3!5§.§9g§(§'E§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§^X§);
         }
      }
      
      public function §@'§(param1:String) : void
      {
         this.§+!T§ = param1;
         if(this.§+!T§ && this.§+!T§.length == 0)
         {
            this.§+!T§ = null;
         }
         if(this.§+!T§)
         {
            if(§#w§)
            {
               §#w§ = false;
               §1!!§();
            }
            this.§8[§ = new MovieClip();
            if(§^6§)
            {
               this.§+X§();
            }
            else
            {
               this.§[7§();
            }
            this.§8[§.mouseEnabled = false;
            this.§8[§.mouseChildren = false;
            this.§8[§.visible = false;
            getParentView().addChild(this.§8[§);
         }
      }
      
      private function §[7§() : void
      {
         this.§8[§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§8[§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§8[§.addChildAt(_loc2_,0);
         this.§-e§(this.§+!T§);
      }
      
      private function §+X§() : void
      {
         this.§8[§ = new §^6§();
         this.§6!Y§(this.§+!T§);
      }
      
      public function §6!Y§(param1:String) : void
      {
         this.§+!T§ = param1;
         if(§^6§)
         {
            this.§3#§(param1);
         }
         else
         {
            this.§-e§(param1);
         }
      }
      
      private function §3#§(param1:String) : void
      {
         var _loc2_:TextField = this.§8[§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§8[§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§+!T§;
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
      
      private function §-e§(param1:String) : void
      {
         var _loc2_:TextField = this.§8[§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§+!T§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§8[§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§;!E§,-this.§;!E§,_loc2_.width + 2 * this.§;!E§,_loc2_.height + 2 * this.§;!E§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§;!E§ / 2,-(this.§;!E§ / 2),_loc2_.width + 1 * this.§;!E§,_loc2_.height + 1 * this.§;!E§);
      }
      
      private function §?!K§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§8[§ || this.§+!T§ == null || this.§+!T§.length == 0)
         {
            return;
         }
         if(param1 && §3f§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§8[§.y = _loc2_.y - this.§8[§.height - this.§;!E§;
            this.§8[§.x = _loc2_.x + mClip.width / 2 - this.§8[§.width / 2;
            _loc3_ = this.§8[§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§;!E§)
            {
               this.§8[§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§;!E§));
            }
            if(_loc3_.left < this.§;!E§)
            {
               this.§8[§.x += 1 + (this.§;!E§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§;!E§)
            {
               this.§8[§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§;!E§));
            }
            if(_loc3_.top < this.§;!E§)
            {
               this.§8[§.y += mClip.height + this.§8[§.height + this.§;!E§ * 2;
            }
            this.§8[§.visible = true;
         }
         else
         {
            this.§8[§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§8[§)
         {
            this.§+!T§ = null;
            while(this.§8[§.numChildren > 0)
            {
               this.§8[§.removeChildAt(0);
            }
            if(this.§8[§.parent)
            {
               this.§8[§.parent.removeChild(this.§8[§);
            }
            this.§8[§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§];§ = param1;
         this.§,!O§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§,!J§ = param1;
         this.§,!O§();
      }
      
      public function §,!O§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§];§ + "_" + this.§,!J§,this.§];§ + "_" + §>!0§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§,!J§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>!0§);
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
         if(this.§];§ == §1'§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§9!Y§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§0V§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§+H§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§!!V§);
         }
         if(param1 == §'!;§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§^X§);
         }
         if(param1 == §!!=§)
         {
            Mouse.cursor = this.§ each§;
            this.setComponentVisualState(§!!V§);
         }
         this.§?!K§(param1 == §!!=§);
      }
      
      public function §0V§() : void
      {
         if(this.§];§ == § l§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§ l§.§6!b§);
         }
         else if(this.§];§ == § l§.§6!b§)
         {
            this.setComponentState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§,!O§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§?!K§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§?!K§(false);
         }
      }
   }
}
