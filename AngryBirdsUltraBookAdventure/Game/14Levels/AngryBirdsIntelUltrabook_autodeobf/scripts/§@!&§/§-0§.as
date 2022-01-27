package §@!&§
{
   import §2y§.§^! §;
   import com.rovio.assets.§,!j§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §-0§ extends §7!>§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §6![§:String = "Deactive";
      
      public static const §6!q§:String = "Disabled";
      
      public static const §`"#§:String = "Out";
      
      public static const §5§:String = "Over";
      
      public static const §?d§:String = "Up_Default";
      
      public static const §9!,§:String = "Down";
      
      public static var §3;§:Class;
      
      public static var §8!L§:Boolean = true;
      
      public static const §+d§:String = "Tooltip";
      
      public static var §2!V§:Boolean = true;
       
      
      public var §"""§:String;
      
      public var §'![§:String;
      
      public var §'W§:String;
      
      public var §%^§:MovieClip;
      
      public var §9!v§:int = 6;
      
      private var §%!6§:Boolean = false;
      
      private var §,-§:String = "auto";
      
      public function §-0§(param1:XML, param2:§^! §, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§"""§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§'![§ = §?d§;
         this.§'u§();
         this.§@!^§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§%!6§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§,-§ = _loc5_;
         }
      }
      
      public static function §2!J§() : void
      {
         §3;§ = §,!j§.§!!N§(§+d§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§`"#§);
         }
      }
      
      public function §@!^§(param1:String) : void
      {
         this.§'W§ = param1;
         if(this.§'W§ && this.§'W§.length == 0)
         {
            this.§'W§ = null;
         }
         if(this.§'W§)
         {
            if(§8!L§)
            {
               §8!L§ = false;
               §2!J§();
            }
            this.§%^§ = new MovieClip();
            if(§3;§)
            {
               this.§&!#§();
            }
            else
            {
               this.§2i§();
            }
            this.§%^§.mouseEnabled = false;
            this.§%^§.mouseChildren = false;
            this.§%^§.visible = false;
            getParentView().addChild(this.§%^§);
         }
      }
      
      private function §2i§() : void
      {
         this.§%^§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§%^§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§%^§.addChildAt(_loc2_,0);
         this.§,B§(this.§'W§);
      }
      
      private function §&!#§() : void
      {
         this.§%^§ = new §3;§();
         this.§1!Z§(this.§'W§);
      }
      
      public function §1!Z§(param1:String) : void
      {
         this.§'W§ = param1;
         if(§3;§)
         {
            this.§]"§(param1);
         }
         else
         {
            this.§,B§(param1);
         }
      }
      
      private function §]"§(param1:String) : void
      {
         var _loc2_:TextField = this.§%^§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§%^§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§'W§;
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
      
      private function §,B§(param1:String) : void
      {
         var _loc2_:TextField = this.§%^§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§'W§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§%^§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§9!v§,-this.§9!v§,_loc2_.width + 2 * this.§9!v§,_loc2_.height + 2 * this.§9!v§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§9!v§ / 2,-(this.§9!v§ / 2),_loc2_.width + 1 * this.§9!v§,_loc2_.height + 1 * this.§9!v§);
      }
      
      private function §@" §(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§%^§ || this.§'W§ == null || this.§'W§.length == 0)
         {
            return;
         }
         if(param1 && §2!V§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§%^§.y = _loc2_.y - this.§%^§.height - this.§9!v§;
            this.§%^§.x = _loc2_.x + mClip.width / 2 - this.§%^§.width / 2;
            _loc3_ = this.§%^§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§9!v§)
            {
               this.§%^§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§9!v§));
            }
            if(_loc3_.left < this.§9!v§)
            {
               this.§%^§.x += 1 + (this.§9!v§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§9!v§)
            {
               this.§%^§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§9!v§));
            }
            if(_loc3_.top < this.§9!v§)
            {
               this.§%^§.y += mClip.height + this.§%^§.height + this.§9!v§ * 2;
            }
            this.§%^§.visible = true;
         }
         else
         {
            this.§%^§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§%^§)
         {
            this.§'W§ = null;
            while(this.§%^§.numChildren > 0)
            {
               this.§%^§.removeChildAt(0);
            }
            if(this.§%^§.parent)
            {
               this.§%^§.parent.removeChild(this.§%^§);
            }
            this.§%^§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§"""§ = param1;
         this.§'u§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§'![§ = param1;
         this.§'u§();
      }
      
      public function §'u§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§"""§ + "_" + this.§'![§,this.§"""§ + "_" + §?d§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§'![§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §?d§);
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
         if(this.§"""§ == §6!q§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§%!6§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§@?§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§9!,§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§5§);
         }
         if(param1 == § M§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§`"#§);
         }
         if(param1 == §4§)
         {
            Mouse.cursor = this.§,-§;
            this.setComponentVisualState(§5§);
         }
         this.§@" §(param1 == §4§);
      }
      
      public function §@?§() : void
      {
         if(this.§"""§ == §-0§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§-0§.§6![§);
         }
         else if(this.§"""§ == §-0§.§6![§)
         {
            this.setComponentState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§'u§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§@" §(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§@" §(false);
         }
      }
   }
}
