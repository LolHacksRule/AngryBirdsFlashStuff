package §7!H§
{
   import § !K§.§'h§;
   import §8!<§.§2W§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §`f§ extends §&![§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §'2§:String = "Deactive";
      
      public static const §0m§:String = "Disabled";
      
      public static const §+-§:String = "Out";
      
      public static const §return§:String = "Over";
      
      public static const §1!`§:String = "Up_Default";
      
      public static const §;!U§:String = "Down";
      
      public static var §0!D§:Class;
      
      public static var §<[§:Boolean = true;
      
      public static const §;!O§:String = "Tooltip";
      
      public static var §7S§:Boolean = true;
       
      
      public var §1<§:String;
      
      public var §>!S§:String;
      
      public var §5!E§:String;
      
      public var §?_§:MovieClip;
      
      public var §<!O§:int = 6;
      
      private var §""§:Boolean = false;
      
      private var §=T§:String = "auto";
      
      public function §`f§(param1:XML, param2:§2W§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§1<§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§>!S§ = §1!`§;
         this.§6@§();
         this.§null §(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§""§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§=T§ = _loc5_;
         }
      }
      
      public static function §5P§() : void
      {
         §0!D§ = §'h§.§`E§(§;!O§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§+-§);
         }
      }
      
      public function §null §(param1:String) : void
      {
         this.§5!E§ = param1;
         if(this.§5!E§ && this.§5!E§.length == 0)
         {
            this.§5!E§ = null;
         }
         if(this.§5!E§)
         {
            if(§<[§)
            {
               §<[§ = false;
               §5P§();
            }
            this.§?_§ = new MovieClip();
            if(§0!D§)
            {
               this.§^!a§();
            }
            else
            {
               this.§=c§();
            }
            this.§?_§.mouseEnabled = false;
            this.§?_§.mouseChildren = false;
            this.§?_§.visible = false;
            getParentView().addChild(this.§?_§);
         }
      }
      
      private function §=c§() : void
      {
         this.§?_§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§?_§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§?_§.addChildAt(_loc2_,0);
         this.§+H§(this.§5!E§);
      }
      
      private function §^!a§() : void
      {
         this.§?_§ = new §0!D§();
         this.§]"§(this.§5!E§);
      }
      
      public function §]"§(param1:String) : void
      {
         this.§5!E§ = param1;
         if(§0!D§)
         {
            this.§@!6§(param1);
         }
         else
         {
            this.§+H§(param1);
         }
      }
      
      private function §@!6§(param1:String) : void
      {
         var _loc2_:TextField = this.§?_§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§?_§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§5!E§;
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
      
      private function §+H§(param1:String) : void
      {
         var _loc2_:TextField = this.§?_§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§5!E§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§?_§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§<!O§,-this.§<!O§,_loc2_.width + 2 * this.§<!O§,_loc2_.height + 2 * this.§<!O§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§<!O§ / 2,-(this.§<!O§ / 2),_loc2_.width + 1 * this.§<!O§,_loc2_.height + 1 * this.§<!O§);
      }
      
      private function §!-§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§?_§ || this.§5!E§ == null || this.§5!E§.length == 0)
         {
            return;
         }
         if(param1 && §7S§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§?_§.y = _loc2_.y - this.§?_§.height - this.§<!O§;
            this.§?_§.x = _loc2_.x + mClip.width / 2 - this.§?_§.width / 2;
            _loc3_ = this.§?_§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§<!O§)
            {
               this.§?_§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§<!O§));
            }
            if(_loc3_.left < this.§<!O§)
            {
               this.§?_§.x += 1 + (this.§<!O§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§<!O§)
            {
               this.§?_§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§<!O§));
            }
            if(_loc3_.top < this.§<!O§)
            {
               this.§?_§.y += mClip.height + this.§?_§.height + this.§<!O§ * 2;
            }
            this.§?_§.visible = true;
         }
         else
         {
            this.§?_§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§?_§)
         {
            this.§5!E§ = null;
            while(this.§?_§.numChildren > 0)
            {
               this.§?_§.removeChildAt(0);
            }
            if(this.§?_§.parent)
            {
               this.§?_§.parent.removeChild(this.§?_§);
            }
            this.§?_§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§1<§ = param1;
         this.§6@§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§>!S§ = param1;
         this.§6@§();
      }
      
      public function §6@§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§1<§ + "_" + this.§>!S§,this.§1<§ + "_" + §1!`§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§>!S§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1!`§);
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
         if(this.§1<§ == §0m§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§""§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§[l§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§;!U§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§return§);
         }
         if(param1 == §'!C§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§+-§);
         }
         if(param1 == §%b§)
         {
            Mouse.cursor = this.§=T§;
            this.setComponentVisualState(§return§);
         }
         this.§!-§(param1 == §%b§);
      }
      
      public function §[l§() : void
      {
         if(this.§1<§ == §`f§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§`f§.§'2§);
         }
         else if(this.§1<§ == §`f§.§'2§)
         {
            this.setComponentState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§6@§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§!-§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§!-§(false);
         }
      }
   }
}
