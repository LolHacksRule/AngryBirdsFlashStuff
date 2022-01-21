package §6@§
{
   import §31§.§ !A§;
   import §7!k§.§%!_§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §>n§ extends §'!F§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §`w§:String = "Deactive";
      
      public static const §0A§:String = "Disabled";
      
      public static const §'!`§:String = "Out";
      
      public static const §^2§:String = "Over";
      
      public static const §"!&§:String = "Up_Default";
      
      public static const §0!8§:String = "Down";
      
      public static var §[p§:Class;
      
      public static var §7<§:Boolean = true;
      
      public static const §6!§:String = "Tooltip";
      
      public static var §"i§:Boolean = true;
       
      
      public var § D§:String;
      
      public var §>B§:String;
      
      public var §"!"§:String;
      
      public var §0P§:MovieClip;
      
      public var §=f§:int = 6;
      
      private var §0!§:Boolean = false;
      
      private var final:String = "auto";
      
      public function §>n§(param1:XML, param2:§ !A§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ D§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§>B§ = §"!&§;
         this.§;!d§();
         this.§5_§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§0!§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.final = _loc5_;
         }
      }
      
      public static function §^4§() : void
      {
         §[p§ = §%!_§.§1$§(§6!§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§'!`§);
         }
      }
      
      public function §5_§(param1:String) : void
      {
         this.§"!"§ = param1;
         if(this.§"!"§ && this.§"!"§.length == 0)
         {
            this.§"!"§ = null;
         }
         if(this.§"!"§)
         {
            if(§7<§)
            {
               §7<§ = false;
               §^4§();
            }
            this.§0P§ = new MovieClip();
            if(§[p§)
            {
               this.§continue§();
            }
            else
            {
               this.§8v§();
            }
            this.§0P§.mouseEnabled = false;
            this.§0P§.mouseChildren = false;
            this.§0P§.visible = false;
            getParentView().addChild(this.§0P§);
         }
      }
      
      private function §8v§() : void
      {
         this.§0P§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§0P§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§0P§.addChildAt(_loc2_,0);
         this.§>d§(this.§"!"§);
      }
      
      private function §continue§() : void
      {
         this.§0P§ = new §[p§();
         this.§8![§(this.§"!"§);
      }
      
      public function §8![§(param1:String) : void
      {
         this.§"!"§ = param1;
         if(§[p§)
         {
            this.§]U§(param1);
         }
         else
         {
            this.§>d§(param1);
         }
      }
      
      private function §]U§(param1:String) : void
      {
         var _loc2_:TextField = this.§0P§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§0P§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§"!"§;
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
      
      private function §>d§(param1:String) : void
      {
         var _loc2_:TextField = this.§0P§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§"!"§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§0P§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§=f§,-this.§=f§,_loc2_.width + 2 * this.§=f§,_loc2_.height + 2 * this.§=f§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§=f§ / 2,-(this.§=f§ / 2),_loc2_.width + 1 * this.§=f§,_loc2_.height + 1 * this.§=f§);
      }
      
      private function §3!R§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§0P§ || this.§"!"§ == null || this.§"!"§.length == 0)
         {
            return;
         }
         if(param1 && §"i§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§0P§.y = _loc2_.y - this.§0P§.height - this.§=f§;
            this.§0P§.x = _loc2_.x + mClip.width / 2 - this.§0P§.width / 2;
            _loc3_ = this.§0P§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§=f§)
            {
               this.§0P§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§=f§));
            }
            if(_loc3_.left < this.§=f§)
            {
               this.§0P§.x += 1 + (this.§=f§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§=f§)
            {
               this.§0P§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§=f§));
            }
            if(_loc3_.top < this.§=f§)
            {
               this.§0P§.y += mClip.height + this.§0P§.height + this.§=f§ * 2;
            }
            this.§0P§.visible = true;
         }
         else
         {
            this.§0P§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§0P§)
         {
            this.§"!"§ = null;
            while(this.§0P§.numChildren > 0)
            {
               this.§0P§.removeChildAt(0);
            }
            if(this.§0P§.parent)
            {
               this.§0P§.parent.removeChild(this.§0P§);
            }
            this.§0P§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ D§ = param1;
         this.§;!d§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§>B§ = param1;
         this.§;!d§();
      }
      
      public function §;!d§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ D§ + "_" + this.§>B§,this.§ D§ + "_" + §"!&§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§>B§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §"!&§);
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
         if(this.§ D§ == §0A§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§0!§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§+B§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§0!8§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§^2§);
         }
         if(param1 == §%!V§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§'!`§);
         }
         if(param1 == §;!!§)
         {
            Mouse.cursor = this.final;
            this.setComponentVisualState(§^2§);
         }
         this.§3!R§(param1 == §;!!§);
      }
      
      public function §+B§() : void
      {
         if(this.§ D§ == §>n§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§>n§.§`w§);
         }
         else if(this.§ D§ == §>n§.§`w§)
         {
            this.setComponentState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§;!d§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§3!R§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§3!R§(false);
         }
      }
   }
}
