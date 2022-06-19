package §1"2§
{
   import §"",§.§<+§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class § F§ extends §#z§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §8'§:String = "Deactive";
      
      public static const §<!7§:String = "Disabled";
      
      public static const § C§:String = "Out";
      
      public static const § !j§:String = "Over";
      
      public static const §9"3§:String = "Up_Default";
      
      public static const §9!M§:String = "Down";
      
      public static var §%!5§:Class;
      
      public static var §4;§:Boolean = true;
      
      public static const §5L§:String = "Tooltip";
      
      public static var §#m§:Boolean = true;
       
      
      public var §2!N§:String;
      
      public var §extends§:String;
      
      public var §3!z§:String;
      
      public var §9G§:MovieClip;
      
      public var §[Y§:int = 6;
      
      private var §2!a§:Boolean = false;
      
      private var §=!a§:String = "auto";
      
      public function § F§(param1:XML, param2:§<+§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§2!N§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§extends§ = §9"3§;
         this.§'!J§();
         this.§4",§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§2!a§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§=!a§ = _loc5_;
         }
      }
      
      public static function §?D§() : void
      {
         §%!5§ = §#!J§.§1!Y§(§5L§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§ C§);
         }
      }
      
      public function §4",§(param1:String) : void
      {
         this.§3!z§ = param1;
         if(this.§3!z§ && this.§3!z§.length == 0)
         {
            this.§3!z§ = null;
         }
         if(this.§3!z§)
         {
            if(§4;§)
            {
               §4;§ = false;
               §?D§();
            }
            this.§9G§ = new MovieClip();
            if(§%!5§)
            {
               this.§9"7§();
            }
            else
            {
               this.§[!u§();
            }
            this.§9G§.mouseEnabled = false;
            this.§9G§.mouseChildren = false;
            this.§9G§.visible = false;
            getParentView().addChild(this.§9G§);
         }
      }
      
      private function §[!u§() : void
      {
         this.§9G§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§9G§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§9G§.addChildAt(_loc2_,0);
         this.§ ";§(this.§3!z§);
      }
      
      private function §9"7§() : void
      {
         this.§9G§ = new §%!5§();
         this.§8!8§(this.§3!z§);
      }
      
      public function §8!8§(param1:String) : void
      {
         this.§3!z§ = param1;
         if(§%!5§)
         {
            this.§6!5§(param1);
         }
         else
         {
            this.§ ";§(param1);
         }
      }
      
      private function §6!5§(param1:String) : void
      {
         var _loc2_:TextField = this.§9G§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§9G§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§3!z§;
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
      
      private function § ";§(param1:String) : void
      {
         var _loc2_:TextField = this.§9G§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§3!z§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§9G§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§[Y§,-this.§[Y§,_loc2_.width + 2 * this.§[Y§,_loc2_.height + 2 * this.§[Y§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§[Y§ / 2,-(this.§[Y§ / 2),_loc2_.width + 1 * this.§[Y§,_loc2_.height + 1 * this.§[Y§);
      }
      
      private function §^h§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§9G§ || this.§3!z§ == null || this.§3!z§.length == 0)
         {
            return;
         }
         if(param1 && §#m§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§9G§.y = _loc2_.y - this.§9G§.height - this.§[Y§;
            this.§9G§.x = _loc2_.x + mClip.width / 2 - this.§9G§.width / 2;
            _loc3_ = this.§9G§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§[Y§)
            {
               this.§9G§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§[Y§));
            }
            if(_loc3_.left < this.§[Y§)
            {
               this.§9G§.x += 1 + (this.§[Y§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§[Y§)
            {
               this.§9G§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§[Y§));
            }
            if(_loc3_.top < this.§[Y§)
            {
               this.§9G§.y += mClip.height + this.§9G§.height + this.§[Y§ * 2;
            }
            this.§9G§.visible = true;
         }
         else
         {
            this.§9G§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§9G§)
         {
            this.§3!z§ = null;
            while(this.§9G§.numChildren > 0)
            {
               this.§9G§.removeChildAt(0);
            }
            if(this.§9G§.parent)
            {
               this.§9G§.parent.removeChild(this.§9G§);
            }
            this.§9G§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§2!N§ = param1;
         this.§'!J§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§extends§ = param1;
         this.§'!J§();
      }
      
      public function §'!J§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§2!N§ + "_" + this.§extends§,this.§2!N§ + "_" + §9"3§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§extends§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §9"3§);
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
         if(this.§2!N§ == §<!7§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§2!a§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§-!l§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§9!M§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§ !j§);
         }
         if(param1 == §2!H§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§ C§);
         }
         if(param1 == §&p§)
         {
            Mouse.cursor = this.§=!a§;
            this.setComponentVisualState(§ !j§);
         }
         this.§^h§(param1 == §&p§);
      }
      
      public function §-!l§() : void
      {
         if(this.§2!N§ == § F§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§ F§.§8'§);
         }
         else if(this.§2!N§ == § F§.§8'§)
         {
            this.setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§'!J§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§^h§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§^h§(false);
         }
      }
   }
}
