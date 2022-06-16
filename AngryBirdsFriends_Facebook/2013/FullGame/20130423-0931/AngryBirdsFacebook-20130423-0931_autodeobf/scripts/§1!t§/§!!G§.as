package §1!t§
{
   import §%i§.§0!Y§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §!!G§ extends §!>§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §@!T§:String = "Deactive";
      
      public static const §[E§:String = "Disabled";
      
      public static const §'!P§:String = "Out";
      
      public static const §+"B§:String = "Over";
      
      public static const §^x§:String = "Up_Default";
      
      public static const §3!e§:String = "Down";
      
      public static var §?"5§:Class;
      
      public static var §^!u§:Boolean = true;
      
      public static const §;! §:String = "Tooltip";
      
      public static var §2"8§:Boolean = true;
       
      
      public var §4" §:String;
      
      public var §@!s§:String;
      
      public var §2!P§:String;
      
      public var §<!B§:MovieClip;
      
      public var §2!<§:int = 6;
      
      private var §^"U§:Boolean = false;
      
      private var §-M§:String = "auto";
      
      public function §!!G§(param1:XML, param2:§0!Y§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§4" § = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§@!s§ = §^x§;
         this.§1!=§();
         this.§3!j§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§^"U§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§-M§ = _loc5_;
         }
      }
      
      public static function §%"F§() : void
      {
         §?"5§ = §?q§.§ q§(§;! §);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§'!P§);
         }
      }
      
      public function §3!j§(param1:String) : void
      {
         this.§2!P§ = param1;
         if(this.§2!P§ && this.§2!P§.length == 0)
         {
            this.§2!P§ = null;
         }
         if(this.§2!P§)
         {
            if(§^!u§)
            {
               §^!u§ = false;
               §%"F§();
            }
            this.§<!B§ = new MovieClip();
            if(§?"5§)
            {
               this.§^!U§();
            }
            else
            {
               this.§#m§();
            }
            this.§<!B§.mouseEnabled = false;
            this.§<!B§.mouseChildren = false;
            this.§<!B§.visible = false;
            getParentView().addChild(this.§<!B§);
         }
      }
      
      private function §#m§() : void
      {
         this.§<!B§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§<!B§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§<!B§.addChildAt(_loc2_,0);
         this.§+P§(this.§2!P§);
      }
      
      private function §^!U§() : void
      {
         this.§<!B§ = new §?"5§();
         this.§^!B§(this.§2!P§);
      }
      
      public function §^!B§(param1:String) : void
      {
         this.§2!P§ = param1;
         if(§?"5§)
         {
            this.§%"O§(param1);
         }
         else
         {
            this.§+P§(param1);
         }
      }
      
      private function §%"O§(param1:String) : void
      {
         var _loc2_:TextField = this.§<!B§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§<!B§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§2!P§;
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
      
      private function §+P§(param1:String) : void
      {
         var _loc2_:TextField = this.§<!B§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§2!P§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§<!B§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§2!<§,-this.§2!<§,_loc2_.width + 2 * this.§2!<§,_loc2_.height + 2 * this.§2!<§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§2!<§ / 2,-(this.§2!<§ / 2),_loc2_.width + 1 * this.§2!<§,_loc2_.height + 1 * this.§2!<§);
      }
      
      private function §]!J§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§<!B§ || this.§2!P§ == null || this.§2!P§.length == 0)
         {
            return;
         }
         if(param1 && §2"8§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§<!B§.y = _loc2_.y - this.§<!B§.height - this.§2!<§;
            this.§<!B§.x = _loc2_.x + mClip.width / 2 - this.§<!B§.width / 2;
            _loc3_ = this.§<!B§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§2!<§)
            {
               this.§<!B§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§2!<§));
            }
            if(_loc3_.left < this.§2!<§)
            {
               this.§<!B§.x += 1 + (this.§2!<§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§2!<§)
            {
               this.§<!B§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§2!<§));
            }
            if(_loc3_.top < this.§2!<§)
            {
               this.§<!B§.y += mClip.height + this.§<!B§.height + this.§2!<§ * 2;
            }
            this.§<!B§.visible = true;
         }
         else
         {
            this.§<!B§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§<!B§)
         {
            this.§2!P§ = null;
            while(this.§<!B§.numChildren > 0)
            {
               this.§<!B§.removeChildAt(0);
            }
            if(this.§<!B§.parent)
            {
               this.§<!B§.parent.removeChild(this.§<!B§);
            }
            this.§<!B§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§4" § = param1;
         this.§1!=§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§@!s§ = param1;
         this.§1!=§();
      }
      
      public function §1!=§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§4" § + "_" + this.§@!s§,this.§4" § + "_" + §^x§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§@!s§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §^x§);
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
         if(this.§4" § == §[E§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§^"U§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§8!r§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§3!e§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§+"B§);
         }
         if(param1 == §6!E§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§'!P§);
         }
         if(param1 == §?"H§)
         {
            Mouse.cursor = this.§-M§;
            this.setComponentVisualState(§+"B§);
         }
         this.§]!J§(param1 == §?"H§);
      }
      
      public function §8!r§() : void
      {
         if(this.§4" § == §!!G§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§!!G§.§@!T§);
         }
         else if(this.§4" § == §!!G§.§@!T§)
         {
            this.setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§1!=§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§]!J§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§]!J§(false);
         }
      }
   }
}
