package §!!0§
{
   import §8]§.§+a§;
   import com.rovio.assets.§^3§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §2§ extends override
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §<!K§:String = "Deactive";
      
      public static const §1u§:String = "Disabled";
      
      public static const §@0§:String = "Out";
      
      public static const §%7§:String = "Over";
      
      public static const §%d§:String = "Up_Default";
      
      public static const §[$§:String = "Down";
      
      public static var §'!3§:Class;
      
      public static var §?!L§:Boolean = true;
      
      public static const §-9§:String = "Tooltip";
      
      public static var §=$§:Boolean = true;
       
      
      public var §"!<§:String;
      
      public var §6G§:String;
      
      public var §>t§:String;
      
      public var §1j§:MovieClip;
      
      public var §6!&§:int = 6;
      
      private var § p§:Boolean = false;
      
      private var §8-§:String = "auto";
      
      public function §2§(param1:XML, param2:§+a§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§"!<§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§6G§ = §%d§;
         this.§,q§();
         this.§]<§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§ p§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§8-§ = _loc5_;
         }
      }
      
      public static function §0&§() : void
      {
         §'!3§ = §^3§.§+_§(§-9§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§@0§);
         }
      }
      
      public function §]<§(param1:String) : void
      {
         this.§>t§ = param1;
         if(this.§>t§ && this.§>t§.length == 0)
         {
            this.§>t§ = null;
         }
         if(this.§>t§)
         {
            if(§?!L§)
            {
               §?!L§ = false;
               §0&§();
            }
            this.§1j§ = new MovieClip();
            if(§'!3§)
            {
               this.§#U§();
            }
            else
            {
               this.§2G§();
            }
            this.§1j§.mouseEnabled = false;
            this.§1j§.mouseChildren = false;
            this.§1j§.visible = false;
            getParentView().addChild(this.§1j§);
         }
      }
      
      private function §2G§() : void
      {
         this.§1j§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§1j§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§1j§.addChildAt(_loc2_,0);
         this.§>,§(this.§>t§);
      }
      
      private function §#U§() : void
      {
         this.§1j§ = new §'!3§();
         this.§-I§(this.§>t§);
      }
      
      public function §-I§(param1:String) : void
      {
         this.§>t§ = param1;
         if(§'!3§)
         {
            this.§!!"§(param1);
         }
         else
         {
            this.§>,§(param1);
         }
      }
      
      private function §!!"§(param1:String) : void
      {
         var _loc2_:TextField = this.§1j§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§1j§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§>t§;
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
      
      private function §>,§(param1:String) : void
      {
         var _loc2_:TextField = this.§1j§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§>t§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§1j§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§6!&§,-this.§6!&§,_loc2_.width + 2 * this.§6!&§,_loc2_.height + 2 * this.§6!&§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§6!&§ / 2,-(this.§6!&§ / 2),_loc2_.width + 1 * this.§6!&§,_loc2_.height + 1 * this.§6!&§);
      }
      
      private function § U§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§1j§ || this.§>t§ == null || this.§>t§.length == 0)
         {
            return;
         }
         if(param1 && §=$§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§1j§.y = _loc2_.y - this.§1j§.height - this.§6!&§;
            this.§1j§.x = _loc2_.x + mClip.width / 2 - this.§1j§.width / 2;
            _loc3_ = this.§1j§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§6!&§)
            {
               this.§1j§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§6!&§));
            }
            if(_loc3_.left < this.§6!&§)
            {
               this.§1j§.x += 1 + (this.§6!&§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§6!&§)
            {
               this.§1j§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§6!&§));
            }
            if(_loc3_.top < this.§6!&§)
            {
               this.§1j§.y += mClip.height + this.§1j§.height + this.§6!&§ * 2;
            }
            this.§1j§.visible = true;
         }
         else
         {
            this.§1j§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§1j§)
         {
            this.§>t§ = null;
            while(this.§1j§.numChildren > 0)
            {
               this.§1j§.removeChildAt(0);
            }
            if(this.§1j§.parent)
            {
               this.§1j§.parent.removeChild(this.§1j§);
            }
            this.§1j§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§"!<§ = param1;
         this.§,q§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§6G§ = param1;
         this.§,q§();
      }
      
      public function §,q§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§"!<§ + "_" + this.§6G§,this.§"!<§ + "_" + §%d§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§6G§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §%d§);
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
         if(this.§"!<§ == §1u§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§ p§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§6f§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§[$§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§%7§);
         }
         if(param1 == §4!$§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§@0§);
         }
         if(param1 == §#j§)
         {
            Mouse.cursor = this.§8-§;
            this.setComponentVisualState(§%7§);
         }
         this.§ U§(param1 == §#j§);
      }
      
      public function §6f§() : void
      {
         if(this.§"!<§ == §2§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§2§.§<!K§);
         }
         else if(this.§"!<§ == §2§.§<!K§)
         {
            this.setComponentState(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§,q§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§ U§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§ U§(false);
         }
      }
   }
}
