package §7J§
{
   import §2T§.§&M§;
   import com.rovio.assets.§5R§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §=U§ extends §07§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §%! §:String = "Deactive";
      
      public static const § S§:String = "Disabled";
      
      public static const §^V§:String = "Out";
      
      public static const §#!"§:String = "Over";
      
      public static const §9D§:String = "Up_Default";
      
      public static const §1I§:String = "Down";
      
      public static var §9I§:Class;
      
      public static var §'e§:Boolean = true;
      
      public static const §52§:String = "Tooltip";
      
      public static var §]<§:Boolean = true;
       
      
      public var §'!B§:String;
      
      public var §0a§:String;
      
      public var §>!M§:String;
      
      public var §3!J§:MovieClip;
      
      public var §"q§:int = 6;
      
      private var §%!O§:Boolean = false;
      
      private var §1i§:String = "auto";
      
      public function §=U§(param1:XML, param2:§&M§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§'!B§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§0a§ = §9D§;
         this.§]>§();
         this.§6!E§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§%!O§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§1i§ = _loc5_;
         }
      }
      
      public static function §!!'§() : void
      {
         §9I§ = §5R§.§6+§(§52§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§^V§);
         }
      }
      
      public function §6!E§(param1:String) : void
      {
         this.§>!M§ = param1;
         if(this.§>!M§ && this.§>!M§.length == 0)
         {
            this.§>!M§ = null;
         }
         if(this.§>!M§)
         {
            if(§'e§)
            {
               §'e§ = false;
               §!!'§();
            }
            this.§3!J§ = new MovieClip();
            if(§9I§)
            {
               this.§ 2§();
            }
            else
            {
               this.§^!F§();
            }
            this.§3!J§.mouseEnabled = false;
            this.§3!J§.mouseChildren = false;
            this.§3!J§.visible = false;
            getParentView().addChild(this.§3!J§);
         }
      }
      
      private function §^!F§() : void
      {
         this.§3!J§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§3!J§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§3!J§.addChildAt(_loc2_,0);
         this.§4"§(this.§>!M§);
      }
      
      private function § 2§() : void
      {
         this.§3!J§ = new §9I§();
         this.§>9§(this.§>!M§);
      }
      
      public function §>9§(param1:String) : void
      {
         this.§>!M§ = param1;
         if(§9I§)
         {
            this.§1;§(param1);
         }
         else
         {
            this.§4"§(param1);
         }
      }
      
      private function §1;§(param1:String) : void
      {
         var _loc2_:TextField = this.§3!J§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§3!J§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§>!M§;
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
      
      private function §4"§(param1:String) : void
      {
         var _loc2_:TextField = this.§3!J§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§>!M§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§3!J§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§"q§,-this.§"q§,_loc2_.width + 2 * this.§"q§,_loc2_.height + 2 * this.§"q§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§"q§ / 2,-(this.§"q§ / 2),_loc2_.width + 1 * this.§"q§,_loc2_.height + 1 * this.§"q§);
      }
      
      private function §,`§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§3!J§ || this.§>!M§ == null || this.§>!M§.length == 0)
         {
            return;
         }
         if(param1 && §]<§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§3!J§.y = _loc2_.y - this.§3!J§.height - this.§"q§;
            this.§3!J§.x = _loc2_.x + mClip.width / 2 - this.§3!J§.width / 2;
            _loc3_ = this.§3!J§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§"q§)
            {
               this.§3!J§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§"q§));
            }
            if(_loc3_.left < this.§"q§)
            {
               this.§3!J§.x += 1 + (this.§"q§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§"q§)
            {
               this.§3!J§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§"q§));
            }
            if(_loc3_.top < this.§"q§)
            {
               this.§3!J§.y += mClip.height + this.§3!J§.height + this.§"q§ * 2;
            }
            this.§3!J§.visible = true;
         }
         else
         {
            this.§3!J§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§3!J§)
         {
            this.§>!M§ = null;
            while(this.§3!J§.numChildren > 0)
            {
               this.§3!J§.removeChildAt(0);
            }
            if(this.§3!J§.parent)
            {
               this.§3!J§.parent.removeChild(this.§3!J§);
            }
            this.§3!J§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§'!B§ = param1;
         this.§]>§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§0a§ = param1;
         this.§]>§();
      }
      
      public function §]>§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§'!B§ + "_" + this.§0a§,this.§'!B§ + "_" + §9D§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0a§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §9D§);
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
         if(this.§'!B§ == § S§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§%!O§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§%R§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§1I§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§#!"§);
         }
         if(param1 == §-!G§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§^V§);
         }
         if(param1 == §`U§)
         {
            Mouse.cursor = this.§1i§;
            this.setComponentVisualState(§#!"§);
         }
         this.§,`§(param1 == §`U§);
      }
      
      public function §%R§() : void
      {
         if(this.§'!B§ == §=U§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§=U§.§%! §);
         }
         else if(this.§'!B§ == §=U§.§%! §)
         {
            this.setComponentState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§]>§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§,`§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§,`§(false);
         }
      }
   }
}
