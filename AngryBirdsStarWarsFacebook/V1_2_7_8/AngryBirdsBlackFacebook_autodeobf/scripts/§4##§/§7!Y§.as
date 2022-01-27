package §4##§
{
   import §""d§.§,m§;
   import §#!k§.§4!4§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import com.rovio.assets.§5"]§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §7!Y§ extends §5!9§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §6!7§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §9!e§:String = "Out";
      
      public static const §9j§:String = "Over";
      
      public static const §7!e§:String = "Up_Default";
      
      public static const §2"U§:String = "Down";
      
      public static var §`!t§:Class;
      
      public static var §!!$§:Boolean = true;
      
      public static const §2"$§:String = "Tooltip";
      
      public static var §%!Y§:Boolean = true;
       
      
      public var §1"w§:String;
      
      public var §!#-§:String;
      
      public var §,&§:String;
      
      public var §]"A§:MovieClip;
      
      public var §%!8§:int = 6;
      
      private var §@@§:Boolean = false;
      
      private var §?"a§:String = "auto";
      
      private var §=!e§:§4!Q§;
      
      public function §7!Y§(param1:XML, param2:§,m§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§1"w§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§!#-§ = §7!e§;
         this.§+"s§();
         this.§ "m§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§@@§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§?"a§ = _loc4_;
            }
         }
         §#"]§(§>"S§,param1.@MouseOver);
         §#"]§(§-"7§,param1.@MouseOut);
      }
      
      public static function §1a§() : void
      {
         §`!t§ = §5"]§.§4!K§(§2"$§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§9!e§);
         }
      }
      
      public function § "m§(param1:String) : void
      {
         this.§,&§ = param1;
         if(this.§,&§ && this.§,&§.length == 0)
         {
            this.§,&§ = null;
         }
         if(this.§,&§)
         {
            if(§!!$§)
            {
               §!!$§ = false;
               §1a§();
            }
            this.§]"A§ = new MovieClip();
            if(§`!t§)
            {
               this.§,"6§();
            }
            else
            {
               this.§%!J§();
            }
            this.§]"A§.mouseEnabled = false;
            this.§]"A§.mouseChildren = false;
            this.§]"A§.visible = false;
            getParentView().addChild(this.§]"A§);
         }
      }
      
      private function §%!J§() : void
      {
         this.§]"A§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§]"A§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§]"A§.addChildAt(_loc2_,0);
         this.§+g§(this.§,&§);
      }
      
      private function §,"6§() : void
      {
         this.§]"A§ = new §`!t§();
         this.§&""§(this.§,&§);
      }
      
      public function §&""§(param1:String) : void
      {
         this.§,&§ = param1;
         if(§`!t§)
         {
            this.§!!G§(param1);
         }
         else
         {
            this.§+g§(param1);
         }
      }
      
      private function §!!G§(param1:String) : void
      {
         var _loc2_:TextField = this.§]"A§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§]"A§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§,&§;
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
      
      private function §+g§(param1:String) : void
      {
         var _loc2_:TextField = this.§]"A§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§,&§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§]"A§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§%!8§,-this.§%!8§,_loc2_.width + 2 * this.§%!8§,_loc2_.height + 2 * this.§%!8§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§%!8§ / 2,-(this.§%!8§ / 2),_loc2_.width + 1 * this.§%!8§,_loc2_.height + 1 * this.§%!8§);
      }
      
      private function §=# §(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§]"A§ || this.§,&§ == null || this.§,&§.length == 0)
         {
            return;
         }
         if(param1 && §%!Y§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§]"A§.y = _loc2_.y - this.§]"A§.height - this.§%!8§;
            this.§]"A§.x = _loc2_.x + mClip.width / 2 - this.§]"A§.width / 2;
            _loc3_ = this.§]"A§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§%!8§)
            {
               this.§]"A§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§%!8§));
            }
            if(_loc3_.left < this.§%!8§)
            {
               this.§]"A§.x += 1 + (this.§%!8§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§%!8§)
            {
               this.§]"A§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§%!8§));
            }
            if(_loc3_.top < this.§%!8§)
            {
               this.§]"A§.y += mClip.height + this.§]"A§.height + this.§%!8§ * 2;
            }
            this.§]"A§.visible = true;
         }
         else
         {
            this.§]"A§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§1"w§ = COMPONENT_STATE_DISABLED;
         if(this.§]"A§)
         {
            this.§,&§ = null;
            while(this.§]"A§.numChildren > 0)
            {
               this.§]"A§.removeChildAt(0);
            }
            if(this.§]"A§.parent)
            {
               this.§]"A§.parent.removeChild(this.§]"A§);
            }
            this.§]"A§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§1"w§ = param1;
         this.§+"s§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§2!F§ && §+#5§)
         {
            if(param1 == §9j§)
            {
               if(this.§=!e§ != null)
               {
                  this.§=!e§.stop();
               }
               this.§=!e§ = §41§.§-G§.§&#'§(mClip,{
                  "scaleX":§+#5§.scaleX + 0.1,
                  "scaleY":§+#5§.scaleY + 0.1
               },null,0.1);
               this.§=!e§.play();
            }
            else if(param1 == §9!e§)
            {
               if(this.§=!e§ != null)
               {
                  this.§=!e§.stop();
               }
               this.§=!e§ = §41§.§-G§.§&#'§(mClip,{
                  "scaleX":§+#5§.scaleX,
                  "scaleY":§+#5§.scaleY
               },null,0.1);
               this.§=!e§.play();
            }
         }
         this.§!#-§ = param1;
         this.§+"s§();
      }
      
      public function §+"s§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§1"w§ + "_" + this.§!#-§,this.§1"w§ + "_" + §7!e§];
         if(this.§1"w§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§!#-§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §7!e§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§#!`§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §#!`§(param1:String) : Boolean
      {
         var _loc2_:FrameLabel = null;
         for each(_loc2_ in mClip.currentLabels)
         {
            if(_loc2_.name == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §4!4§
      {
         if(this.§1"w§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§@@§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§5"@§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§2"U§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§9j§);
         }
         if(param1 == §-"7§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§9!e§);
         }
         if(param1 == §>"S§)
         {
            Mouse.cursor = this.§?"a§;
            this.setComponentVisualState(§9j§);
         }
         this.§=# §(param1 == §>"S§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §5"@§() : void
      {
         if(this.§1"w§ == §7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§7!Y§.§6!7§);
         }
         else if(this.§1"w§ == §7!Y§.§6!7§)
         {
            this.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
      }
      
      override public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         super.setEnabled(param1,param2);
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
         this.§+"s§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§=# §(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§=# §(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§=!e§)
         {
            this.§=!e§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
