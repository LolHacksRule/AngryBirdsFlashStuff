package §1h§
{
   import §^@§.§2q§;
   import com.rovio.assets.§7!D§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class § use§ extends §#H§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §-L§:String = "Deactive";
      
      public static const §?J§:String = "Disabled";
      
      public static const §^8§:String = "Out";
      
      public static const §%e§:String = "Over";
      
      public static const §!!C§:String = "Up_Default";
      
      public static const §1j§:String = "Down";
      
      public static var §']§:Class;
      
      public static var §8!!§:Boolean = true;
      
      public static const §<Y§:String = "Tooltip";
      
      public static var §]&§:Boolean = true;
       
      
      public var §9$§:String;
      
      public var § var§:String;
      
      public var §%!5§:String;
      
      public var §0G§:MovieClip;
      
      public var §-!,§:int = 6;
      
      private var §4!E§:Boolean = false;
      
      private var §[!§:String = "auto";
      
      public function § use§(param1:XML, param2:§2q§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§9$§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§ var§ = §!!C§;
         this.§+!G§();
         this.§3u§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§4!E§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§[!§ = _loc5_;
         }
      }
      
      public static function §6V§() : void
      {
         §']§ = §7!D§.§?0§(§<Y§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§^8§);
         }
      }
      
      public function §3u§(param1:String) : void
      {
         this.§%!5§ = param1;
         if(this.§%!5§ && this.§%!5§.length == 0)
         {
            this.§%!5§ = null;
         }
         if(this.§%!5§)
         {
            if(§8!!§)
            {
               §8!!§ = false;
               §6V§();
            }
            this.§0G§ = new MovieClip();
            if(§']§)
            {
               this.§[>§();
            }
            else
            {
               this.§6R§();
            }
            this.§0G§.mouseEnabled = false;
            this.§0G§.mouseChildren = false;
            this.§0G§.visible = false;
            getParentView().addChild(this.§0G§);
         }
      }
      
      private function §6R§() : void
      {
         this.§0G§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§0G§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§0G§.addChildAt(_loc2_,0);
         this.§-!A§(this.§%!5§);
      }
      
      private function §[>§() : void
      {
         this.§0G§ = new §']§();
         this.§&!8§(this.§%!5§);
      }
      
      public function §&!8§(param1:String) : void
      {
         this.§%!5§ = param1;
         if(§']§)
         {
            this.§#2§(param1);
         }
         else
         {
            this.§-!A§(param1);
         }
      }
      
      private function §#2§(param1:String) : void
      {
         var _loc2_:TextField = this.§0G§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§0G§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§%!5§;
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
      
      private function §-!A§(param1:String) : void
      {
         var _loc2_:TextField = this.§0G§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§%!5§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§0G§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§-!,§,-this.§-!,§,_loc2_.width + 2 * this.§-!,§,_loc2_.height + 2 * this.§-!,§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§-!,§ / 2,-(this.§-!,§ / 2),_loc2_.width + 1 * this.§-!,§,_loc2_.height + 1 * this.§-!,§);
      }
      
      private function §5f§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§0G§ || this.§%!5§ == null || this.§%!5§.length == 0)
         {
            return;
         }
         if(param1 && §]&§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§0G§.y = _loc2_.y - this.§0G§.height - this.§-!,§;
            this.§0G§.x = _loc2_.x + mClip.width / 2 - this.§0G§.width / 2;
            _loc3_ = this.§0G§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§-!,§)
            {
               this.§0G§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§-!,§));
            }
            if(_loc3_.left < this.§-!,§)
            {
               this.§0G§.x += 1 + (this.§-!,§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§-!,§)
            {
               this.§0G§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§-!,§));
            }
            if(_loc3_.top < this.§-!,§)
            {
               this.§0G§.y += mClip.height + this.§0G§.height + this.§-!,§ * 2;
            }
            this.§0G§.visible = true;
         }
         else
         {
            this.§0G§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§0G§)
         {
            this.§%!5§ = null;
            while(this.§0G§.numChildren > 0)
            {
               this.§0G§.removeChildAt(0);
            }
            if(this.§0G§.parent)
            {
               this.§0G§.parent.removeChild(this.§0G§);
            }
            this.§0G§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§9$§ = param1;
         this.§+!G§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§ var§ = param1;
         this.§+!G§();
      }
      
      public function §+!G§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§9$§ + "_" + this.§ var§,this.§9$§ + "_" + §!!C§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§ var§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §!!C§);
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
         if(this.§9$§ == §?J§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§4!E§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§%D§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§1j§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§%e§);
         }
         if(param1 == §3]§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§^8§);
         }
         if(param1 == §;!1§)
         {
            Mouse.cursor = this.§[!§;
            this.setComponentVisualState(§%e§);
         }
         this.§5f§(param1 == §;!1§);
      }
      
      public function §%D§() : void
      {
         if(this.§9$§ == § use§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§ use§.§-L§);
         }
         else if(this.§9$§ == § use§.§-L§)
         {
            this.setComponentState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§+!G§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§5f§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§5f§(false);
         }
      }
   }
}
