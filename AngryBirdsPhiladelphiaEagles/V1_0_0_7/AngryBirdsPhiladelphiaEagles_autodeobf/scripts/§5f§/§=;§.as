package §5f§
{
   import §=u§.§>v§;
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §=;§ extends §-G§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §"]§:String = "Deactive";
      
      public static const §+!0§:String = "Disabled";
      
      public static const §,!E§:String = "Out";
      
      public static const §6H§:String = "Over";
      
      public static const §-?§:String = "Up_Default";
      
      public static const §4+§:String = "Down";
      
      public static var §=U§:Class;
      
      public static var §0!D§:Boolean = true;
      
      public static const §#!J§:String = "Tooltip";
      
      public static var §>4§:Boolean = true;
       
      
      public var §4!!§:String;
      
      public var §-P§:String;
      
      public var §2!;§:String;
      
      public var §30§:MovieClip;
      
      public var §5@§:int = 6;
      
      private var §9!9§:Boolean = false;
      
      private var §?=§:String = "auto";
      
      public function §=;§(param1:XML, param2:§>v§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§4!!§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§-P§ = §-?§;
         this.§[E§();
         this.§ !@§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§9!9§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§?=§ = _loc5_;
         }
      }
      
      public static function §!n§() : void
      {
         §=U§ = §@h§.§[@§(§#!J§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§,!E§);
         }
      }
      
      public function § !@§(param1:String) : void
      {
         this.§2!;§ = param1;
         if(this.§2!;§ && this.§2!;§.length == 0)
         {
            this.§2!;§ = null;
         }
         if(this.§2!;§)
         {
            if(§0!D§)
            {
               §0!D§ = false;
               §!n§();
            }
            this.§30§ = new MovieClip();
            if(§=U§)
            {
               this.§1!O§();
            }
            else
            {
               this.§9@§();
            }
            this.§30§.mouseEnabled = false;
            this.§30§.mouseChildren = false;
            this.§30§.visible = false;
            getParentView().addChild(this.§30§);
         }
      }
      
      private function §9@§() : void
      {
         this.§30§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§30§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§30§.addChildAt(_loc2_,0);
         this.§&!;§(this.§2!;§);
      }
      
      private function §1!O§() : void
      {
         this.§30§ = new §=U§();
         this.§+t§(this.§2!;§);
      }
      
      public function §+t§(param1:String) : void
      {
         this.§2!;§ = param1;
         if(§=U§)
         {
            this.§<1§(param1);
         }
         else
         {
            this.§&!;§(param1);
         }
      }
      
      private function §<1§(param1:String) : void
      {
         var _loc2_:TextField = this.§30§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§30§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§2!;§;
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
      
      private function §&!;§(param1:String) : void
      {
         var _loc2_:TextField = this.§30§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§2!;§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§30§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§5@§,-this.§5@§,_loc2_.width + 2 * this.§5@§,_loc2_.height + 2 * this.§5@§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§5@§ / 2,-(this.§5@§ / 2),_loc2_.width + 1 * this.§5@§,_loc2_.height + 1 * this.§5@§);
      }
      
      private function §"!1§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§30§ || this.§2!;§ == null || this.§2!;§.length == 0)
         {
            return;
         }
         if(param1 && §>4§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§30§.y = _loc2_.y - this.§30§.height - this.§5@§;
            this.§30§.x = _loc2_.x + mClip.width / 2 - this.§30§.width / 2;
            _loc3_ = this.§30§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§5@§)
            {
               this.§30§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§5@§));
            }
            if(_loc3_.left < this.§5@§)
            {
               this.§30§.x += 1 + (this.§5@§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§5@§)
            {
               this.§30§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§5@§));
            }
            if(_loc3_.top < this.§5@§)
            {
               this.§30§.y += mClip.height + this.§30§.height + this.§5@§ * 2;
            }
            this.§30§.visible = true;
         }
         else
         {
            this.§30§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§30§)
         {
            this.§2!;§ = null;
            while(this.§30§.numChildren > 0)
            {
               this.§30§.removeChildAt(0);
            }
            if(this.§30§.parent)
            {
               this.§30§.parent.removeChild(this.§30§);
            }
            this.§30§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§4!!§ = param1;
         this.§[E§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§-P§ = param1;
         this.§[E§();
      }
      
      public function §[E§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§4!!§ + "_" + this.§-P§,this.§4!!§ + "_" + §-?§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§-P§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §-?§);
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
         if(this.§4!!§ == §+!0§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§9!9§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§-L§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§4+§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§6H§);
         }
         if(param1 == §<!L§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§,!E§);
         }
         if(param1 == §^8§)
         {
            Mouse.cursor = this.§?=§;
            this.setComponentVisualState(§6H§);
         }
         this.§"!1§(param1 == §^8§);
      }
      
      public function §-L§() : void
      {
         if(this.§4!!§ == §=;§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§=;§.§"]§);
         }
         else if(this.§4!!§ == §=;§.§"]§)
         {
            this.setComponentState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§[E§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§"!1§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§"!1§(false);
         }
      }
   }
}
