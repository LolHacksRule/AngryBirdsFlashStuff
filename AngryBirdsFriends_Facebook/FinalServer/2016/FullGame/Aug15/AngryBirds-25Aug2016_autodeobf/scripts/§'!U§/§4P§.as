package §'!U§
{
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §3!T§.§3">§;
   import §6"r§.§0"<§;
   import com.rovio.assets.§@`§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §4P§ extends §>$$§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §#"X§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §%#'§:String = "Out";
      
      public static const §-!F§:String = "Over";
      
      public static const §1!a§:String = "Up_Default";
      
      public static const §4"@§:String = "Down";
      
      public static var §>#1§:Class;
      
      public static var §!#c§:Boolean = true;
      
      public static const §+",§:String = "Tooltip";
      
      public static var §1#6§:Boolean = true;
       
      
      public var §<"Q§:String;
      
      public var §!!9§:String;
      
      public var §`"3§:String;
      
      public var §;#D§:MovieClip;
      
      public var §9!E§:int = 6;
      
      private var §^!w§:Boolean = false;
      
      private var §"!5§:String = "auto";
      
      private var §7!_§:§+,§;
      
      public function §4P§(param1:XML, param2:§0"<§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§<"Q§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§!!9§ = §1!a§;
         this.§&"@§();
         this.§="i§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§^!w§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if([MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM].indexOf(_loc4_) > -1)
            {
               this.§"!5§ = _loc4_;
            }
         }
         §7!7§(§1"j§,param1.@MouseOver);
         §7!7§(§`!O§,param1.@MouseOut);
      }
      
      public static function §9!o§() : void
      {
         §>#1§ = §@`§.§4!i§(§+",§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§%#'§);
         }
      }
      
      public function §="i§(param1:String) : void
      {
         this.§`"3§ = param1;
         if(this.§`"3§ && this.§`"3§.length == 0)
         {
            this.§`"3§ = null;
         }
         if(this.§`"3§)
         {
            if(§!#c§)
            {
               §!#c§ = false;
               §9!o§();
            }
            this.§;#D§ = new MovieClip();
            if(§>#1§)
            {
               this.§#"$§();
            }
            else
            {
               this.§[U§();
            }
            this.§;#D§.mouseEnabled = false;
            this.§;#D§.mouseChildren = false;
            this.§;#D§.visible = false;
            getParentView().addChild(this.§;#D§);
         }
      }
      
      private function §[U§() : void
      {
         this.§;#D§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§;#D§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§;#D§.addChildAt(_loc2_,0);
         this.§%q§(this.§`"3§);
      }
      
      private function §#"$§() : void
      {
         this.§;#D§ = new §>#1§();
         this.§&"f§(this.§`"3§);
      }
      
      public function §&"f§(param1:String) : void
      {
         this.§`"3§ = param1;
         if(§>#1§)
         {
            this.§4$"§(param1);
         }
         else
         {
            this.§%q§(param1);
         }
      }
      
      private function §4$"§(param1:String) : void
      {
         var _loc2_:TextField = this.§;#D§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§;#D§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§`"3§;
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
      
      private function §%q§(param1:String) : void
      {
         var _loc2_:TextField = this.§;#D§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§`"3§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§;#D§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§9!E§,-this.§9!E§,_loc2_.width + 2 * this.§9!E§,_loc2_.height + 2 * this.§9!E§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§9!E§ / 2,-(this.§9!E§ / 2),_loc2_.width + 1 * this.§9!E§,_loc2_.height + 1 * this.§9!E§);
      }
      
      private function §5q§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§;#D§ || this.§`"3§ == null || this.§`"3§.length == 0)
         {
            return;
         }
         if(param1 && §1#6§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§;#D§.y = _loc2_.y - this.§;#D§.height - this.§9!E§;
            this.§;#D§.x = _loc2_.x + mClip.width / 2 - this.§;#D§.width / 2;
            _loc3_ = this.§;#D§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§9!E§)
            {
               this.§;#D§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§9!E§));
            }
            if(_loc3_.left < this.§9!E§)
            {
               this.§;#D§.x += 1 + (this.§9!E§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§9!E§)
            {
               this.§;#D§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§9!E§));
            }
            if(_loc3_.top < this.§9!E§)
            {
               this.§;#D§.y += mClip.height + this.§;#D§.height + this.§9!E§ * 2;
            }
            this.§;#D§.visible = true;
         }
         else
         {
            this.§;#D§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§<"Q§ = COMPONENT_STATE_DISABLED;
         if(this.§;#D§)
         {
            this.§`"3§ = null;
            while(this.§;#D§.numChildren > 0)
            {
               this.§;#D§.removeChildAt(0);
            }
            if(this.§;#D§.parent)
            {
               this.§;#D§.parent.removeChild(this.§;#D§);
            }
            this.§;#D§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§<"Q§ = param1;
         this.§&"@§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§%";§ && §&$'§)
         {
            if(param1 == §-!F§)
            {
               if(this.§7!_§ != null)
               {
                  this.§7!_§.stop();
               }
               this.§7!_§ = §""Z§.§3!]§.§5"0§(mClip,{
                  "scaleX":§&$'§.scaleX + 0.1,
                  "scaleY":§&$'§.scaleY + 0.1
               },null,0.1);
               this.§7!_§.play();
            }
            else if(param1 == §%#'§)
            {
               if(this.§7!_§ != null)
               {
                  this.§7!_§.stop();
               }
               this.§7!_§ = §""Z§.§3!]§.§5"0§(mClip,{
                  "scaleX":§&$'§.scaleX,
                  "scaleY":§&$'§.scaleY
               },null,0.1);
               this.§7!_§.play();
            }
         }
         this.§!!9§ = param1;
         this.§&"@§();
      }
      
      public function §&"@§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§<"Q§ + "_" + this.§!!9§,this.§<"Q§ + "_" + §1!a§];
         if(this.§<"Q§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§!!9§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §1!a§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§3#j§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §3#j§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3">§
      {
         if(this.§<"Q§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§^!w§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§6#d§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§4"@§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§-!F§);
         }
         if(param1 == §`!O§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§%#'§);
         }
         if(param1 == §1"j§)
         {
            Mouse.cursor = this.§"!5§;
            this.setComponentVisualState(§-!F§);
         }
         this.§5q§(param1 == §1"j§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §6#d§() : void
      {
         if(this.§<"Q§ == §4P§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§4P§.§#"X§);
         }
         else if(this.§<"Q§ == §4P§.§#"X§)
         {
            this.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§&"@§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§5q§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§5q§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§7!_§)
         {
            this.§7!_§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§7!_§)
         {
            this.§7!_§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
