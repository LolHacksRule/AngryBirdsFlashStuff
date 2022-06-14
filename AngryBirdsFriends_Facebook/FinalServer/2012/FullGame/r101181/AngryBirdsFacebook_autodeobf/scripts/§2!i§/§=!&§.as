package §2!i§
{
   import §4!e§.§08§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §=!&§ extends §7'§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const § !s§:String = "Deactive";
      
      public static const §-N§:String = "Disabled";
      
      public static const §="?§:String = "Out";
      
      public static const §+4§:String = "Over";
      
      public static const §>!`§:String = "Up_Default";
      
      public static const §=!X§:String = "Down";
      
      public static var § 8§:Class;
      
      public static var §5!>§:Boolean = true;
      
      public static const §="&§:String = "Tooltip";
      
      public static var §+-§:Boolean = true;
       
      
      public var §5!L§:String;
      
      public var §@6§:String;
      
      public var §>"A§:String;
      
      public var §>!r§:MovieClip;
      
      public var §;t§:int = 6;
      
      private var §4!H§:Boolean = false;
      
      private var §""'§:String = "auto";
      
      public function §=!&§(param1:XML, param2:§08§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§5!L§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§@6§ = §>!`§;
         this.§-"A§();
         this.§!!+§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§4!H§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§""'§ = _loc5_;
         }
      }
      
      public static function §>M§() : void
      {
         § 8§ = §8B§.§6"C§(§="&§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§="?§);
         }
      }
      
      public function §!!+§(param1:String) : void
      {
         this.§>"A§ = param1;
         if(this.§>"A§ && this.§>"A§.length == 0)
         {
            this.§>"A§ = null;
         }
         if(this.§>"A§)
         {
            if(§5!>§)
            {
               §5!>§ = false;
               §>M§();
            }
            this.§>!r§ = new MovieClip();
            if(§ 8§)
            {
               this.§@"A§();
            }
            else
            {
               this.§>!b§();
            }
            this.§>!r§.mouseEnabled = false;
            this.§>!r§.mouseChildren = false;
            this.§>!r§.visible = false;
            getParentView().addChild(this.§>!r§);
         }
      }
      
      private function §>!b§() : void
      {
         this.§>!r§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§>!r§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§>!r§.addChildAt(_loc2_,0);
         this.§5!8§(this.§>"A§);
      }
      
      private function §@"A§() : void
      {
         this.§>!r§ = new § 8§();
         this.§1!V§(this.§>"A§);
      }
      
      public function §1!V§(param1:String) : void
      {
         this.§>"A§ = param1;
         if(§ 8§)
         {
            this.§>"5§(param1);
         }
         else
         {
            this.§5!8§(param1);
         }
      }
      
      private function §>"5§(param1:String) : void
      {
         var _loc2_:TextField = this.§>!r§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§>!r§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§>"A§;
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
      
      private function §5!8§(param1:String) : void
      {
         var _loc2_:TextField = this.§>!r§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§>"A§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§>!r§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§;t§,-this.§;t§,_loc2_.width + 2 * this.§;t§,_loc2_.height + 2 * this.§;t§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§;t§ / 2,-(this.§;t§ / 2),_loc2_.width + 1 * this.§;t§,_loc2_.height + 1 * this.§;t§);
      }
      
      private function §?!C§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§>!r§ || this.§>"A§ == null || this.§>"A§.length == 0)
         {
            return;
         }
         if(param1 && §+-§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§>!r§.y = _loc2_.y - this.§>!r§.height - this.§;t§;
            this.§>!r§.x = _loc2_.x + mClip.width / 2 - this.§>!r§.width / 2;
            _loc3_ = this.§>!r§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§;t§)
            {
               this.§>!r§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§;t§));
            }
            if(_loc3_.left < this.§;t§)
            {
               this.§>!r§.x += 1 + (this.§;t§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§;t§)
            {
               this.§>!r§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§;t§));
            }
            if(_loc3_.top < this.§;t§)
            {
               this.§>!r§.y += mClip.height + this.§>!r§.height + this.§;t§ * 2;
            }
            this.§>!r§.visible = true;
         }
         else
         {
            this.§>!r§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§>!r§)
         {
            this.§>"A§ = null;
            while(this.§>!r§.numChildren > 0)
            {
               this.§>!r§.removeChildAt(0);
            }
            if(this.§>!r§.parent)
            {
               this.§>!r§.parent.removeChild(this.§>!r§);
            }
            this.§>!r§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§5!L§ = param1;
         this.§-"A§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§@6§ = param1;
         this.§-"A§();
      }
      
      public function §-"A§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§5!L§ + "_" + this.§@6§,this.§5!L§ + "_" + §>!`§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§@6§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>!`§);
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
         if(this.§5!L§ == §-N§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§4!H§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§>9§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§=!X§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§+4§);
         }
         if(param1 == §`!k§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§="?§);
         }
         if(param1 == §'!f§)
         {
            Mouse.cursor = this.§""'§;
            this.setComponentVisualState(§+4§);
         }
         this.§?!C§(param1 == §'!f§);
      }
      
      public function §>9§() : void
      {
         if(this.§5!L§ == §=!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§=!&§.§ !s§);
         }
         else if(this.§5!L§ == §=!&§.§ !s§)
         {
            this.setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§-"A§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§?!C§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§?!C§(false);
         }
      }
   }
}
