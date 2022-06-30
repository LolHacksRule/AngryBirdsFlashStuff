package §93§
{
   import §=!c§.§=>§;
   import §@u§.§]!-§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §?t§ extends §"6§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §5!0§:String = "Deactive";
      
      public static const §@G§:String = "Disabled";
      
      public static const §1!3§:String = "Out";
      
      public static const §=B§:String = "Over";
      
      public static const §]!b§:String = "Up_Default";
      
      public static const § 3§:String = "Down";
      
      public static var §#+§:Class;
      
      public static var §`7§:Boolean = true;
      
      public static const §=5§:String = "Tooltip";
      
      public static var §6!F§:Boolean = true;
       
      
      public var § P§:String;
      
      public var §46§:String;
      
      public var §8R§:String;
      
      public var §break§:MovieClip;
      
      public var §4w§:int = 6;
      
      private var §4b§:Boolean = false;
      
      private var §2,§:String = "auto";
      
      public function §?t§(param1:XML, param2:§=>§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ P§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§46§ = §]!b§;
         this.§?!W§();
         this.§#!C§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§4b§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§2,§ = _loc5_;
         }
      }
      
      public static function §4!>§() : void
      {
         §#+§ = §]!-§.§=!M§(§=5§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§1!3§);
         }
      }
      
      public function §#!C§(param1:String) : void
      {
         this.§8R§ = param1;
         if(this.§8R§ && this.§8R§.length == 0)
         {
            this.§8R§ = null;
         }
         if(this.§8R§)
         {
            if(§`7§)
            {
               §`7§ = false;
               §4!>§();
            }
            this.§break§ = new MovieClip();
            if(§#+§)
            {
               this.§^!$§();
            }
            else
            {
               this.§2!0§();
            }
            this.§break§.mouseEnabled = false;
            this.§break§.mouseChildren = false;
            this.§break§.visible = false;
            getParentView().addChild(this.§break§);
         }
      }
      
      private function §2!0§() : void
      {
         this.§break§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§break§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§break§.addChildAt(_loc2_,0);
         this.§,T§(this.§8R§);
      }
      
      private function §^!$§() : void
      {
         this.§break§ = new §#+§();
         this.§#g§(this.§8R§);
      }
      
      public function §#g§(param1:String) : void
      {
         this.§8R§ = param1;
         if(§#+§)
         {
            this.§-g§(param1);
         }
         else
         {
            this.§,T§(param1);
         }
      }
      
      private function §-g§(param1:String) : void
      {
         var _loc2_:TextField = this.§break§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§break§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§8R§;
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
      
      private function §,T§(param1:String) : void
      {
         var _loc2_:TextField = this.§break§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§8R§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§break§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§4w§,-this.§4w§,_loc2_.width + 2 * this.§4w§,_loc2_.height + 2 * this.§4w§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§4w§ / 2,-(this.§4w§ / 2),_loc2_.width + 1 * this.§4w§,_loc2_.height + 1 * this.§4w§);
      }
      
      private function §>-§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§break§ || this.§8R§ == null || this.§8R§.length == 0)
         {
            return;
         }
         if(param1 && §6!F§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§break§.y = _loc2_.y - this.§break§.height - this.§4w§;
            this.§break§.x = _loc2_.x + mClip.width / 2 - this.§break§.width / 2;
            _loc3_ = this.§break§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§4w§)
            {
               this.§break§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4w§));
            }
            if(_loc3_.left < this.§4w§)
            {
               this.§break§.x += 1 + (this.§4w§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§4w§)
            {
               this.§break§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4w§));
            }
            if(_loc3_.top < this.§4w§)
            {
               this.§break§.y += mClip.height + this.§break§.height + this.§4w§ * 2;
            }
            this.§break§.visible = true;
         }
         else
         {
            this.§break§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§break§)
         {
            this.§8R§ = null;
            while(this.§break§.numChildren > 0)
            {
               this.§break§.removeChildAt(0);
            }
            if(this.§break§.parent)
            {
               this.§break§.parent.removeChild(this.§break§);
            }
            this.§break§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ P§ = param1;
         this.§?!W§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§46§ = param1;
         this.§?!W§();
      }
      
      public function §?!W§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ P§ + "_" + this.§46§,this.§ P§ + "_" + §]!b§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§46§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §]!b§);
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
         if(this.§ P§ == §@G§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§4b§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§`!§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§ 3§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§=B§);
         }
         if(param1 == § [§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§1!3§);
         }
         if(param1 == §[u§)
         {
            Mouse.cursor = this.§2,§;
            this.setComponentVisualState(§=B§);
         }
         this.§>-§(param1 == §[u§);
      }
      
      public function §`!§() : void
      {
         if(this.§ P§ == §?t§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§?t§.§5!0§);
         }
         else if(this.§ P§ == §?t§.§5!0§)
         {
            this.setComponentState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§?!W§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§>-§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§>-§(false);
         }
      }
   }
}
