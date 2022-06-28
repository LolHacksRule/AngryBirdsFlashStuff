package §@s§
{
   import §=^§.§`f§;
   import com.rovio.assets.§,u§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §9$§ extends §3!?§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §?J§:String = "Deactive";
      
      public static const §^8§:String = "Disabled";
      
      public static const §%e§:String = "Out";
      
      public static const §!!C§:String = "Over";
      
      public static const §1j§:String = "Up_Default";
      
      public static const §']§:String = "Down";
      
      public static var §8!!§:Class;
      
      public static var §<Y§:Boolean = true;
      
      public static const §]&§:String = "Tooltip";
      
      public static var §6V§:Boolean = true;
       
      
      public var § var§:String;
      
      public var §%!5§:String;
      
      public var §0G§:String;
      
      public var §-!,§:MovieClip;
      
      public var §4!E§:int = 6;
      
      private var §[!§:Boolean = false;
      
      private var §3u§:String = "auto";
      
      public function §9$§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§ var§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§%!5§ = §1j§;
         this.§%D§();
         this.§6R§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§[!§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§3u§ = _loc5_;
         }
      }
      
      public static function §]$§() : void
      {
         §8!!§ = §,u§.§'[§(§]&§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§%e§);
         }
      }
      
      public function §6R§(param1:String) : void
      {
         this.§0G§ = param1;
         if(this.§0G§ && this.§0G§.length == 0)
         {
            this.§0G§ = null;
         }
         if(this.§0G§)
         {
            if(§<Y§)
            {
               §<Y§ = false;
               §]$§();
            }
            this.§-!,§ = new MovieClip();
            if(§8!!§)
            {
               this.§&!8§();
            }
            else
            {
               this.§[>§();
            }
            this.§-!,§.mouseEnabled = false;
            this.§-!,§.mouseChildren = false;
            this.§-!,§.visible = false;
            getParentView().addChild(this.§-!,§);
         }
      }
      
      private function §[>§() : void
      {
         this.§-!,§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§-!,§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§-!,§.addChildAt(_loc2_,0);
         this.§5f§(this.§0G§);
      }
      
      private function §&!8§() : void
      {
         this.§-!,§ = new §8!!§();
         this.§#2§(this.§0G§);
      }
      
      public function §#2§(param1:String) : void
      {
         this.§0G§ = param1;
         if(§8!!§)
         {
            this.§-!A§(param1);
         }
         else
         {
            this.§5f§(param1);
         }
      }
      
      private function §-!A§(param1:String) : void
      {
         var _loc2_:TextField = this.§-!,§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§-!,§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§0G§;
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
      
      private function §5f§(param1:String) : void
      {
         var _loc2_:TextField = this.§-!,§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§0G§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§-!,§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§4!E§,-this.§4!E§,_loc2_.width + 2 * this.§4!E§,_loc2_.height + 2 * this.§4!E§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§4!E§ / 2,-(this.§4!E§ / 2),_loc2_.width + 1 * this.§4!E§,_loc2_.height + 1 * this.§4!E§);
      }
      
      private function §+!G§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§-!,§ || this.§0G§ == null || this.§0G§.length == 0)
         {
            return;
         }
         if(param1 && §6V§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§-!,§.y = _loc2_.y - this.§-!,§.height - this.§4!E§;
            this.§-!,§.x = _loc2_.x + mClip.width / 2 - this.§-!,§.width / 2;
            _loc3_ = this.§-!,§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§4!E§)
            {
               this.§-!,§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4!E§));
            }
            if(_loc3_.left < this.§4!E§)
            {
               this.§-!,§.x += 1 + (this.§4!E§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§4!E§)
            {
               this.§-!,§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4!E§));
            }
            if(_loc3_.top < this.§4!E§)
            {
               this.§-!,§.y += mClip.height + this.§-!,§.height + this.§4!E§ * 2;
            }
            this.§-!,§.visible = true;
         }
         else
         {
            this.§-!,§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§-!,§)
         {
            this.§0G§ = null;
            while(this.§-!,§.numChildren > 0)
            {
               this.§-!,§.removeChildAt(0);
            }
            if(this.§-!,§.parent)
            {
               this.§-!,§.parent.removeChild(this.§-!,§);
            }
            this.§-!,§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§ var§ = param1;
         this.§%D§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§%!5§ = param1;
         this.§%D§();
      }
      
      public function §%D§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§ var§ + "_" + this.§%!5§,this.§ var§ + "_" + §1j§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%!5§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1j§);
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
         if(this.§ var§ == §^8§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§[!§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§-L§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§']§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§!!C§);
         }
         if(param1 == §#H§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§%e§);
         }
         if(param1 == §3]§)
         {
            Mouse.cursor = this.§3u§;
            this.setComponentVisualState(§!!C§);
         }
         this.§+!G§(param1 == §3]§);
      }
      
      public function §-L§() : void
      {
         if(this.§ var§ == §9$§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§9$§.§?J§);
         }
         else if(this.§ var§ == §9$§.§?J§)
         {
            this.setComponentState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§%D§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§+!G§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§+!G§(false);
         }
      }
   }
}
