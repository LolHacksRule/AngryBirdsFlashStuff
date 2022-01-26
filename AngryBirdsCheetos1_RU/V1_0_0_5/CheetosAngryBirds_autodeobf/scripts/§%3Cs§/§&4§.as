package §<s§
{
   import §[%§.§&a§;
   import §[-§.§#!,§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §&4§ extends §'k§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §=!'§:String = "Deactive";
      
      public static const §'!U§:String = "Disabled";
      
      public static const §+$§:String = "Out";
      
      public static const §"!S§:String = "Over";
      
      public static const §>'§:String = "Up_Default";
      
      public static const §+a§:String = "Down";
      
      public static var §]^§:Class;
      
      public static var §[c§:Boolean = true;
      
      public static const §6>§:String = "Tooltip";
      
      public static var §'!4§:Boolean = true;
       
      
      public var §6t§:String;
      
      public var §`!0§:String;
      
      public var §?!F§:String;
      
      public var §`!'§:MovieClip;
      
      public var §]p§:int = 6;
      
      private var §1-§:Boolean = false;
      
      private var §[!`§:String = "auto";
      
      public function §&4§(param1:XML, param2:§&a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§6t§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§`!0§ = §>'§;
         this.§ P§();
         this.§!P§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§1-§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§[!`§ = _loc5_;
         }
      }
      
      public static function § !S§() : void
      {
         §]^§ = §#!,§.§-<§(§6>§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§+$§);
         }
      }
      
      public function §!P§(param1:String) : void
      {
         this.§?!F§ = param1;
         if(this.§?!F§ && this.§?!F§.length == 0)
         {
            this.§?!F§ = null;
         }
         if(this.§?!F§)
         {
            if(§[c§)
            {
               §[c§ = false;
               § !S§();
            }
            this.§`!'§ = new MovieClip();
            if(§]^§)
            {
               this.§>B§();
            }
            else
            {
               this.§,V§();
            }
            this.§`!'§.mouseEnabled = false;
            this.§`!'§.mouseChildren = false;
            this.§`!'§.visible = false;
            getParentView().addChild(this.§`!'§);
         }
      }
      
      private function §,V§() : void
      {
         this.§`!'§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§`!'§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§`!'§.addChildAt(_loc2_,0);
         this.§&!]§(this.§?!F§);
      }
      
      private function §>B§() : void
      {
         this.§`!'§ = new §]^§();
         this.§!!#§(this.§?!F§);
      }
      
      public function §!!#§(param1:String) : void
      {
         this.§?!F§ = param1;
         if(§]^§)
         {
            this.§const§(param1);
         }
         else
         {
            this.§&!]§(param1);
         }
      }
      
      private function §const§(param1:String) : void
      {
         var _loc2_:TextField = this.§`!'§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§`!'§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§?!F§;
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
      
      private function §&!]§(param1:String) : void
      {
         var _loc2_:TextField = this.§`!'§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§?!F§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§`!'§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§]p§,-this.§]p§,_loc2_.width + 2 * this.§]p§,_loc2_.height + 2 * this.§]p§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§]p§ / 2,-(this.§]p§ / 2),_loc2_.width + 1 * this.§]p§,_loc2_.height + 1 * this.§]p§);
      }
      
      private function §[d§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§`!'§ || this.§?!F§ == null || this.§?!F§.length == 0)
         {
            return;
         }
         if(param1 && §'!4§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§`!'§.y = _loc2_.y - this.§`!'§.height - this.§]p§;
            this.§`!'§.x = _loc2_.x + mClip.width / 2 - this.§`!'§.width / 2;
            _loc3_ = this.§`!'§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§]p§)
            {
               this.§`!'§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]p§));
            }
            if(_loc3_.left < this.§]p§)
            {
               this.§`!'§.x += 1 + (this.§]p§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§]p§)
            {
               this.§`!'§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]p§));
            }
            if(_loc3_.top < this.§]p§)
            {
               this.§`!'§.y += mClip.height + this.§`!'§.height + this.§]p§ * 2;
            }
            this.§`!'§.visible = true;
         }
         else
         {
            this.§`!'§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§`!'§)
         {
            this.§?!F§ = null;
            while(this.§`!'§.numChildren > 0)
            {
               this.§`!'§.removeChildAt(0);
            }
            if(this.§`!'§.parent)
            {
               this.§`!'§.parent.removeChild(this.§`!'§);
            }
            this.§`!'§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§6t§ = param1;
         this.§ P§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§`!0§ = param1;
         this.§ P§();
      }
      
      public function § P§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§6t§ + "_" + this.§`!0§,this.§6t§ + "_" + §>'§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§`!0§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §>'§);
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
         if(this.§6t§ == §'!U§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§1-§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§7M§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§+a§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§"!S§);
         }
         if(param1 == §#3§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§+$§);
         }
         if(param1 == §<o§)
         {
            Mouse.cursor = this.§[!`§;
            this.setComponentVisualState(§"!S§);
         }
         this.§[d§(param1 == §<o§);
      }
      
      public function §7M§() : void
      {
         if(this.§6t§ == §&4§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§&4§.§=!'§);
         }
         else if(this.§6t§ == §&4§.§=!'§)
         {
            this.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§ P§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§[d§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§[d§(false);
         }
      }
   }
}
