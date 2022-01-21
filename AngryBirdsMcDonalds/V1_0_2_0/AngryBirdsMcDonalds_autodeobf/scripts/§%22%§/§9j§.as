package §"%§
{
   import §7!d§.§'!5§;
   import §>G§.§]f§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §9j§ extends §+!&§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §'&§:String = "Deactive";
      
      public static const §^^§:String = "Disabled";
      
      public static const §9!m§:String = "Out";
      
      public static const §?`§:String = "Over";
      
      public static const §=f§:String = "Up_Default";
      
      public static const §#!F§:String = "Down";
      
      public static var §5!<§:Class;
      
      public static var §0!K§:Boolean = true;
      
      public static const §?!,§:String = "Tooltip";
      
      public static var §0!§:Boolean = true;
       
      
      public var §=!Z§:String;
      
      public var §0e§:String;
      
      public var §>!n§:String;
      
      public var §^'§:MovieClip;
      
      public var §%n§:int = 6;
      
      private var §`!9§:Boolean = false;
      
      private var §?q§:String = "auto";
      
      public function §9j§(param1:XML, param2:§]f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§=!Z§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§0e§ = §=f§;
         this.§;!Q§();
         this.§ !Q§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§`!9§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§?q§ = _loc5_;
         }
      }
      
      public static function §-!]§() : void
      {
         §5!<§ = §'!5§.§-!P§(§?!,§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§9!m§);
         }
      }
      
      public function § !Q§(param1:String) : void
      {
         this.§>!n§ = param1;
         if(this.§>!n§ && this.§>!n§.length == 0)
         {
            this.§>!n§ = null;
         }
         if(this.§>!n§)
         {
            if(§0!K§)
            {
               §0!K§ = false;
               §-!]§();
            }
            this.§^'§ = new MovieClip();
            if(§5!<§)
            {
               this.§%G§();
            }
            else
            {
               this.§=!A§();
            }
            this.§^'§.mouseEnabled = false;
            this.§^'§.mouseChildren = false;
            this.§^'§.visible = false;
            getParentView().addChild(this.§^'§);
         }
      }
      
      private function §=!A§() : void
      {
         this.§^'§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§^'§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§^'§.addChildAt(_loc2_,0);
         this.§`!8§(this.§>!n§);
      }
      
      private function §%G§() : void
      {
         this.§^'§ = new §5!<§();
         this.§0!D§(this.§>!n§);
      }
      
      public function §0!D§(param1:String) : void
      {
         this.§>!n§ = param1;
         if(§5!<§)
         {
            this.§3!6§(param1);
         }
         else
         {
            this.§`!8§(param1);
         }
      }
      
      private function §3!6§(param1:String) : void
      {
         var _loc2_:TextField = this.§^'§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§^'§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§>!n§;
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
      
      private function §`!8§(param1:String) : void
      {
         var _loc2_:TextField = this.§^'§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§>!n§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§^'§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§%n§,-this.§%n§,_loc2_.width + 2 * this.§%n§,_loc2_.height + 2 * this.§%n§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§%n§ / 2,-(this.§%n§ / 2),_loc2_.width + 1 * this.§%n§,_loc2_.height + 1 * this.§%n§);
      }
      
      private function §3!+§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§^'§ || this.§>!n§ == null || this.§>!n§.length == 0)
         {
            return;
         }
         if(param1 && §0!§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§^'§.y = _loc2_.y - this.§^'§.height - this.§%n§;
            this.§^'§.x = _loc2_.x + mClip.width / 2 - this.§^'§.width / 2;
            _loc3_ = this.§^'§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§%n§)
            {
               this.§^'§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§%n§));
            }
            if(_loc3_.left < this.§%n§)
            {
               this.§^'§.x += 1 + (this.§%n§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§%n§)
            {
               this.§^'§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§%n§));
            }
            if(_loc3_.top < this.§%n§)
            {
               this.§^'§.y += mClip.height + this.§^'§.height + this.§%n§ * 2;
            }
            this.§^'§.visible = true;
         }
         else
         {
            this.§^'§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§^'§)
         {
            this.§>!n§ = null;
            while(this.§^'§.numChildren > 0)
            {
               this.§^'§.removeChildAt(0);
            }
            if(this.§^'§.parent)
            {
               this.§^'§.parent.removeChild(this.§^'§);
            }
            this.§^'§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§=!Z§ = param1;
         this.§;!Q§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§0e§ = param1;
         this.§;!Q§();
      }
      
      public function §;!Q§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§=!Z§ + "_" + this.§0e§,this.§=!Z§ + "_" + §=f§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0e§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §=f§);
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
         if(this.§=!Z§ == §^^§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§`!9§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§5$§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§#!F§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§?`§);
         }
         if(param1 == §;!Y§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§9!m§);
         }
         if(param1 == §-!X§)
         {
            Mouse.cursor = this.§?q§;
            this.setComponentVisualState(§?`§);
         }
         this.§3!+§(param1 == §-!X§);
      }
      
      public function §5$§() : void
      {
         if(this.§=!Z§ == §9j§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§9j§.§'&§);
         }
         else if(this.§=!Z§ == §9j§.§'&§)
         {
            this.setComponentState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§;!Q§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§3!+§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§3!+§(false);
         }
      }
   }
}
