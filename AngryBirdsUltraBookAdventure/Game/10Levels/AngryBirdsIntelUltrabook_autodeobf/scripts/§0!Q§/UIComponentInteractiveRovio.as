package §0!Q§
{
   import §6a§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class UIComponentInteractiveRovio extends UIComponentRovio
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §3B§:String = "Deactive";
      
      public static const §#!K§:String = "Disabled";
      
      public static const § e§:String = "Out";
      
      public static const §@=§:String = "Over";
      
      public static const §!!-§:String = "Up_Default";
      
      public static const §,r§:String = "Down";
      
      public static var §%P§:Class;
      
      public static var §^!,§:Boolean = true;
      
      public static const §#!b§:String = "Tooltip";
      
      public static var §6m§:Boolean = true;
       
      
      public var §0a§:String;
      
      public var §3[§:String;
      
      public var §,!-§:String;
      
      public var §9w§:MovieClip;
      
      public var §^3§:int = 6;
      
      private var §0!>§:Boolean = false;
      
      private var §7!K§:String = "auto";
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§0a§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§3[§ = §!!-§;
         this.§2v§();
         this.§=!2§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§0!>§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§7!K§ = _loc5_;
         }
      }
      
      public static function §7§() : void
      {
         §%P§ = AssetCache.§%p§(§#!b§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§ e§);
         }
      }
      
      public function §=!2§(param1:String) : void
      {
         this.§,!-§ = param1;
         if(this.§,!-§ && this.§,!-§.length == 0)
         {
            this.§,!-§ = null;
         }
         if(this.§,!-§)
         {
            if(§^!,§)
            {
               §^!,§ = false;
               §7§();
            }
            this.§9w§ = new MovieClip();
            if(§%P§)
            {
               this.§#J§();
            }
            else
            {
               this.§7!'§();
            }
            this.§9w§.mouseEnabled = false;
            this.§9w§.mouseChildren = false;
            this.§9w§.visible = false;
            getParentView().addChild(this.§9w§);
         }
      }
      
      private function §7!'§() : void
      {
         this.§9w§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§9w§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§9w§.addChildAt(_loc2_,0);
         this.§&0§(this.§,!-§);
      }
      
      private function §#J§() : void
      {
         this.§9w§ = new §%P§();
         this.§;!f§(this.§,!-§);
      }
      
      public function §;!f§(param1:String) : void
      {
         this.§,!-§ = param1;
         if(§%P§)
         {
            this.§'!8§(param1);
         }
         else
         {
            this.§&0§(param1);
         }
      }
      
      private function §'!8§(param1:String) : void
      {
         var _loc2_:TextField = this.§9w§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§9w§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§,!-§;
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
      
      private function §&0§(param1:String) : void
      {
         var _loc2_:TextField = this.§9w§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§,!-§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape = this.§9w§.getChildByName("Base") as Shape;
         _loc4_.graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§^3§,-this.§^3§,_loc2_.width + 2 * this.§^3§,_loc2_.height + 2 * this.§^3§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§^3§ / 2,-(this.§^3§ / 2),_loc2_.width + 1 * this.§^3§,_loc2_.height + 1 * this.§^3§);
      }
      
      private function §==§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§9w§ || this.§,!-§ == null || this.§,!-§.length == 0)
         {
            return;
         }
         if(param1 && §6m§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§9w§.y = _loc2_.y - this.§9w§.height - this.§^3§;
            this.§9w§.x = _loc2_.x + mClip.width / 2 - this.§9w§.width / 2;
            _loc3_ = this.§9w§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§^3§)
            {
               this.§9w§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^3§));
            }
            if(_loc3_.left < this.§^3§)
            {
               this.§9w§.x += 1 + (this.§^3§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§^3§)
            {
               this.§9w§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^3§));
            }
            if(_loc3_.top < this.§^3§)
            {
               this.§9w§.y += mClip.height + this.§9w§.height + this.§^3§ * 2;
            }
            this.§9w§.visible = true;
         }
         else
         {
            this.§9w§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§9w§)
         {
            this.§,!-§ = null;
            while(this.§9w§.numChildren > 0)
            {
               this.§9w§.removeChildAt(0);
            }
            if(this.§9w§.parent)
            {
               this.§9w§.parent.removeChild(this.§9w§);
            }
            this.§9w§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§0a§ = param1;
         this.§2v§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§3[§ = param1;
         this.§2v§();
      }
      
      public function §2v§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§0a§ + "_" + this.§3[§,this.§0a§ + "_" + §!!-§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§3[§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §!!-§);
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
         if(this.§0a§ == §#!K§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§0!>§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§7!]§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§,r§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§@=§);
         }
         if(param1 == §!!Q§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§ e§);
         }
         if(param1 == §9O§)
         {
            Mouse.cursor = this.§7!K§;
            this.setComponentVisualState(§@=§);
         }
         this.§==§(param1 == §9O§);
      }
      
      public function §7!]§() : void
      {
         if(this.§0a§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(UIComponentInteractiveRovio.§3B§);
         }
         else if(this.§0a§ == UIComponentInteractiveRovio.§3B§)
         {
            this.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§2v§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§==§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§==§(false);
         }
      }
   }
}
