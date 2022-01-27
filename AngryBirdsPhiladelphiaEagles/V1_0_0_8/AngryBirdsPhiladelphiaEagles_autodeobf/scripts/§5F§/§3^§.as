package §5F§
{
   import §!t§.§;1§;
   import com.rovio.assets.§[G§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §3^§ extends §!!A§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §8s§:String = "Deactive";
      
      public static const §4a§:String = "Disabled";
      
      public static const §-q§:String = "Out";
      
      public static const §%!F§:String = "Over";
      
      public static const §#R§:String = "Up_Default";
      
      public static const §>C§:String = "Down";
      
      public static var §4b§:Class;
      
      public static var §5U§:Boolean = true;
      
      public static const §8H§:String = "Tooltip";
      
      public static var §27§:Boolean = true;
       
      
      public var §>!%§:String;
      
      public var §%U§:String;
      
      public var §3!5§:String;
      
      public var §1!%§:MovieClip;
      
      public var §6@§:int = 6;
      
      private var §?V§:Boolean = false;
      
      private var §?i§:String = "auto";
      
      public function §3^§(param1:XML, param2:§;1§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§>!%§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§%U§ = §#R§;
         this.§3!0§();
         this.§7!8§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§?V§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§?i§ = _loc5_;
         }
      }
      
      public static function §&U§() : void
      {
         §4b§ = §[G§.§6u§(§8H§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§-q§);
         }
      }
      
      public function §7!8§(param1:String) : void
      {
         this.§3!5§ = param1;
         if(this.§3!5§ && this.§3!5§.length == 0)
         {
            this.§3!5§ = null;
         }
         if(this.§3!5§)
         {
            if(§5U§)
            {
               §5U§ = false;
               §&U§();
            }
            this.§1!%§ = new MovieClip();
            if(§4b§)
            {
               this.§>!@§();
            }
            else
            {
               this.§7>§();
            }
            this.§1!%§.mouseEnabled = false;
            this.§1!%§.mouseChildren = false;
            this.§1!%§.visible = false;
            getParentView().addChild(this.§1!%§);
         }
      }
      
      private function §7>§() : void
      {
         this.§1!%§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§1!%§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§1!%§.addChildAt(_loc2_,0);
         this.§7!J§(this.§3!5§);
      }
      
      private function §>!@§() : void
      {
         this.§1!%§ = new §4b§();
         this.§0!,§(this.§3!5§);
      }
      
      public function §0!,§(param1:String) : void
      {
         this.§3!5§ = param1;
         if(§4b§)
         {
            this.§%&§(param1);
         }
         else
         {
            this.§7!J§(param1);
         }
      }
      
      private function §%&§(param1:String) : void
      {
         var _loc2_:TextField = this.§1!%§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§1!%§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§3!5§;
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
      
      private function §7!J§(param1:String) : void
      {
         var _loc2_:TextField = this.§1!%§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§3!5§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§1!%§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§6@§,-this.§6@§,_loc2_.width + 2 * this.§6@§,_loc2_.height + 2 * this.§6@§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§6@§ / 2,-(this.§6@§ / 2),_loc2_.width + 1 * this.§6@§,_loc2_.height + 1 * this.§6@§);
      }
      
      private function §5!8§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§1!%§ || this.§3!5§ == null || this.§3!5§.length == 0)
         {
            return;
         }
         if(param1 && §27§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§1!%§.y = _loc2_.y - this.§1!%§.height - this.§6@§;
            this.§1!%§.x = _loc2_.x + mClip.width / 2 - this.§1!%§.width / 2;
            _loc3_ = this.§1!%§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§6@§)
            {
               this.§1!%§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§6@§));
            }
            if(_loc3_.left < this.§6@§)
            {
               this.§1!%§.x += 1 + (this.§6@§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§6@§)
            {
               this.§1!%§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§6@§));
            }
            if(_loc3_.top < this.§6@§)
            {
               this.§1!%§.y += mClip.height + this.§1!%§.height + this.§6@§ * 2;
            }
            this.§1!%§.visible = true;
         }
         else
         {
            this.§1!%§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§1!%§)
         {
            this.§3!5§ = null;
            while(this.§1!%§.numChildren > 0)
            {
               this.§1!%§.removeChildAt(0);
            }
            if(this.§1!%§.parent)
            {
               this.§1!%§.parent.removeChild(this.§1!%§);
            }
            this.§1!%§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§>!%§ = param1;
         this.§3!0§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§%U§ = param1;
         this.§3!0§();
      }
      
      public function §3!0§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§>!%§ + "_" + this.§%U§,this.§>!%§ + "_" + §#R§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%U§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §#R§);
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
         if(this.§>!%§ == §4a§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§?V§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§#+§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§>C§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§%!F§);
         }
         if(param1 == §1!#§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§-q§);
         }
         if(param1 == §,j§)
         {
            Mouse.cursor = this.§?i§;
            this.setComponentVisualState(§%!F§);
         }
         this.§5!8§(param1 == §,j§);
      }
      
      public function §#+§() : void
      {
         if(this.§>!%§ == §3^§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§3^§.§8s§);
         }
         else if(this.§>!%§ == §3^§.§8s§)
         {
            this.setComponentState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§3!0§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§5!8§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§5!8§(false);
         }
      }
   }
}
