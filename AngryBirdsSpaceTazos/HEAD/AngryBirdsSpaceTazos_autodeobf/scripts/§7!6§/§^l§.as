package §7!6§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §#R§.§%!S§;
   import §="<§.§,"$§;
   import com.rovio.assets.§1!h§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §^l§ extends §"!O§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §,Z§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const § K§:String = "Out";
      
      public static const §"!f§:String = "Over";
      
      public static const §[!j§:String = "Up_Default";
      
      public static const set:String = "Down";
      
      public static var §-!;§:Class;
      
      public static var §&y§:Boolean = true;
      
      public static const §[W§:String = "Tooltip";
      
      public static var §=!2§:Boolean = true;
       
      
      public var §?"2§:String;
      
      public var §6]§:String;
      
      public var §,V§:String;
      
      public var §;3§:MovieClip;
      
      public var §['§:int = 6;
      
      private var §9!p§:Boolean = false;
      
      private var §^!i§:String = "auto";
      
      private var §@!C§:§,4§;
      
      public function §^l§(param1:XML, param2:§,"$§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§?"2§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§6]§ = §[!j§;
         this.§?U§();
         this.§-!R§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§9!p§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§^!i§ = _loc4_;
            }
         }
         §!!2§(§,G§,param1.@MouseOver);
         §!!2§(§>"5§,param1.@MouseOut);
      }
      
      public static function §&!u§() : void
      {
         §-!;§ = §1!h§.§4!D§(§[W§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§ K§);
         }
      }
      
      public function §-!R§(param1:String) : void
      {
         this.§,V§ = param1;
         if(this.§,V§ && this.§,V§.length == 0)
         {
            this.§,V§ = null;
         }
         if(this.§,V§)
         {
            if(§&y§)
            {
               §&y§ = false;
               §&!u§();
            }
            this.§;3§ = new MovieClip();
            if(§-!;§)
            {
               this.§<,§();
            }
            else
            {
               this.§+!a§();
            }
            this.§;3§.mouseEnabled = false;
            this.§;3§.mouseChildren = false;
            this.§;3§.visible = false;
            getParentView().addChild(this.§;3§);
         }
      }
      
      private function §+!a§() : void
      {
         this.§;3§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§;3§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§;3§.addChildAt(_loc2_,0);
         this.§?!_§(this.§,V§);
      }
      
      private function §<,§() : void
      {
         this.§;3§ = new §-!;§();
         this.§%!5§(this.§,V§);
      }
      
      public function §%!5§(param1:String) : void
      {
         this.§,V§ = param1;
         if(§-!;§)
         {
            this.§7";§(param1);
         }
         else
         {
            this.§?!_§(param1);
         }
      }
      
      private function §7";§(param1:String) : void
      {
         var _loc2_:TextField = this.§;3§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§;3§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§,V§;
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
      
      private function §?!_§(param1:String) : void
      {
         var _loc2_:TextField = this.§;3§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§,V§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§;3§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§['§,-this.§['§,_loc2_.width + 2 * this.§['§,_loc2_.height + 2 * this.§['§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§['§ / 2,-(this.§['§ / 2),_loc2_.width + 1 * this.§['§,_loc2_.height + 1 * this.§['§);
      }
      
      private function §6i§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§;3§ || this.§,V§ == null || this.§,V§.length == 0)
         {
            return;
         }
         if(param1 && §=!2§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§;3§.y = _loc2_.y - this.§;3§.height - this.§['§;
            this.§;3§.x = _loc2_.x + mClip.width / 2 - this.§;3§.width / 2;
            _loc3_ = this.§;3§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§['§)
            {
               this.§;3§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§['§));
            }
            if(_loc3_.left < this.§['§)
            {
               this.§;3§.x += 1 + (this.§['§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§['§)
            {
               this.§;3§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§['§));
            }
            if(_loc3_.top < this.§['§)
            {
               this.§;3§.y += mClip.height + this.§;3§.height + this.§['§ * 2;
            }
            this.§;3§.visible = true;
         }
         else
         {
            this.§;3§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§?"2§ = COMPONENT_STATE_DISABLED;
         if(this.§;3§)
         {
            this.§,V§ = null;
            while(this.§;3§.numChildren > 0)
            {
               this.§;3§.removeChildAt(0);
            }
            if(this.§;3§.parent)
            {
               this.§;3§.parent.removeChild(this.§;3§);
            }
            this.§;3§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§?"2§ = param1;
         this.§?U§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§-"'§ && §@"$§)
         {
            if(param1 == §"!f§)
            {
               if(this.§@!C§ != null)
               {
                  this.§@!C§.stop();
               }
               this.§@!C§ = §"!t§.§3R§.§2m§(mClip,{
                  "scaleX":§@"$§.scaleX + 0.1,
                  "scaleY":§@"$§.scaleY + 0.1
               },null,0.1);
               this.§@!C§.play();
            }
            else if(param1 == § K§)
            {
               if(this.§@!C§ != null)
               {
                  this.§@!C§.stop();
               }
               this.§@!C§ = §"!t§.§3R§.§2m§(mClip,{
                  "scaleX":§@"$§.scaleX,
                  "scaleY":§@"$§.scaleY
               },null,0.1);
               this.§@!C§.play();
            }
         }
         this.§6]§ = param1;
         this.§?U§();
      }
      
      public function §?U§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§?"2§ + "_" + this.§6]§,this.§?"2§ + "_" + §[!j§];
         if(this.§?"2§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§6]§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §[!j§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§3i§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §3i§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §%!S§
      {
         if(this.§?"2§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§9!p§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§@!N§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(set);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§"!f§);
         }
         if(param1 == §>"5§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§ K§);
         }
         if(param1 == §,G§)
         {
            Mouse.cursor = this.§^!i§;
            this.setComponentVisualState(§"!f§);
         }
         this.§6i§(param1 == §,G§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §@!N§() : void
      {
         if(this.§?"2§ == §^l§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§^l§.§,Z§);
         }
         else if(this.§?"2§ == §^l§.§,Z§)
         {
            this.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§?U§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§6i§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§6i§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§@!C§)
         {
            this.§@!C§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§@!C§)
         {
            this.§@!C§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
