package §1Q§
{
   import §"!S§.§<s§;
   import §@!]§.§'!9§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §4p§ extends §6'§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §#!%§:String = "Deactive";
      
      public static const §9L§:String = "Disabled";
      
      public static const §2p§:String = "Out";
      
      public static const §93§:String = "Over";
      
      public static const §[o§:String = "Up_Default";
      
      public static const §^o§:String = "Down";
      
      public static var §4+§:Class;
      
      public static var §6!T§:Boolean = true;
      
      public static const §,!H§:String = "Tooltip";
      
      public static var §,!d§:Boolean = true;
       
      
      public var §'w§:String;
      
      public var §?q§:String;
      
      public var § !?§:String;
      
      public var §0!,§:MovieClip;
      
      public var §[!'§:int = 6;
      
      private var §[t§:Boolean = false;
      
      private var §69§:String = "auto";
      
      public function §4p§(param1:XML, param2:§'!9§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§'w§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§?q§ = §[o§;
         this.§`!Q§();
         this.§3!]§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§[t§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§69§ = _loc5_;
         }
      }
      
      public static function §=9§() : void
      {
         §4+§ = §<s§.§0b§(§,!H§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§2p§);
         }
      }
      
      public function §3!]§(param1:String) : void
      {
         this.§ !?§ = param1;
         if(this.§ !?§ && this.§ !?§.length == 0)
         {
            this.§ !?§ = null;
         }
         if(this.§ !?§)
         {
            if(§6!T§)
            {
               §6!T§ = false;
               §=9§();
            }
            this.§0!,§ = new MovieClip();
            if(§4+§)
            {
               this.§`!@§();
            }
            else
            {
               this.§<! §();
            }
            this.§0!,§.mouseEnabled = false;
            this.§0!,§.mouseChildren = false;
            this.§0!,§.visible = false;
            getParentView().addChild(this.§0!,§);
         }
      }
      
      private function §<! §() : void
      {
         this.§0!,§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§0!,§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§0!,§.addChildAt(_loc2_,0);
         this.§@Y§(this.§ !?§);
      }
      
      private function §`!@§() : void
      {
         this.§0!,§ = new §4+§();
         this.§3^§(this.§ !?§);
      }
      
      public function §3^§(param1:String) : void
      {
         this.§ !?§ = param1;
         if(§4+§)
         {
            this.§4!§(param1);
         }
         else
         {
            this.§@Y§(param1);
         }
      }
      
      private function §4!§(param1:String) : void
      {
         var _loc2_:TextField = this.§0!,§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§0!,§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§ !?§;
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
      
      private function §@Y§(param1:String) : void
      {
         var _loc2_:TextField = this.§0!,§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§ !?§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§0!,§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§[!'§,-this.§[!'§,_loc2_.width + 2 * this.§[!'§,_loc2_.height + 2 * this.§[!'§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§[!'§ / 2,-(this.§[!'§ / 2),_loc2_.width + 1 * this.§[!'§,_loc2_.height + 1 * this.§[!'§);
      }
      
      private function §1!D§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§0!,§ || this.§ !?§ == null || this.§ !?§.length == 0)
         {
            return;
         }
         if(param1 && §,!d§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§0!,§.y = _loc2_.y - this.§0!,§.height - this.§[!'§;
            this.§0!,§.x = _loc2_.x + mClip.width / 2 - this.§0!,§.width / 2;
            _loc3_ = this.§0!,§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§[!'§)
            {
               this.§0!,§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§[!'§));
            }
            if(_loc3_.left < this.§[!'§)
            {
               this.§0!,§.x += 1 + (this.§[!'§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§[!'§)
            {
               this.§0!,§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§[!'§));
            }
            if(_loc3_.top < this.§[!'§)
            {
               this.§0!,§.y += mClip.height + this.§0!,§.height + this.§[!'§ * 2;
            }
            this.§0!,§.visible = true;
         }
         else
         {
            this.§0!,§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§0!,§)
         {
            this.§ !?§ = null;
            while(this.§0!,§.numChildren > 0)
            {
               this.§0!,§.removeChildAt(0);
            }
            if(this.§0!,§.parent)
            {
               this.§0!,§.parent.removeChild(this.§0!,§);
            }
            this.§0!,§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§'w§ = param1;
         this.§`!Q§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§?q§ = param1;
         this.§`!Q§();
      }
      
      public function §`!Q§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§'w§ + "_" + this.§?q§,this.§'w§ + "_" + §[o§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§?q§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §[o§);
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
         if(this.§'w§ == §9L§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§[t§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§<!V§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§^o§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§93§);
         }
         if(param1 == § !Y§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§2p§);
         }
         if(param1 == §[Y§)
         {
            Mouse.cursor = this.§69§;
            this.setComponentVisualState(§93§);
         }
         this.§1!D§(param1 == §[Y§);
      }
      
      public function §<!V§() : void
      {
         if(this.§'w§ == §4p§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§4p§.§#!%§);
         }
         else if(this.§'w§ == §4p§.§#!%§)
         {
            this.setComponentState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§`!Q§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§1!D§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§1!D§(false);
         }
      }
   }
}
