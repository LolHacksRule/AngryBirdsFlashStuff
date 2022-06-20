package §<"1§
{
   import §%#A§.§]!_§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<o§.§3h§;
   import com.rovio.assets.§+$#§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §@!N§ extends §[!K§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §null§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §7"U§:String = "Out";
      
      public static const §2#h§:String = "Over";
      
      public static const §["D§:String = "Up_Default";
      
      public static const §&$"§:String = "Down";
      
      public static var §7#x§:Class;
      
      public static var §!#'§:Boolean = true;
      
      public static const §7#g§:String = "Tooltip";
      
      public static var §`!U§:Boolean = true;
       
      
      public var §;!M§:String;
      
      public var §'!t§:String;
      
      public var §0"t§:String;
      
      public var §]"4§:MovieClip;
      
      public var §]#D§:int = 6;
      
      private var §0!n§:Boolean = false;
      
      private var §'!]§:String = "auto";
      
      private var §2"M§:§-#C§;
      
      public function §@!N§(param1:XML, param2:§]!_§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§;!M§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§'!t§ = §["D§;
         this.§"Z§();
         this.§5#4§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§0!n§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§'!]§ = _loc4_;
            }
         }
         §<!t§(§1#+§,param1.@MouseOver);
         §<!t§(§+#"§,param1.@MouseOut);
      }
      
      public static function §`$1§() : void
      {
         §7#x§ = §+$#§.§["`§(§7#g§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§7"U§);
         }
      }
      
      public function §5#4§(param1:String) : void
      {
         this.§0"t§ = param1;
         if(this.§0"t§ && this.§0"t§.length == 0)
         {
            this.§0"t§ = null;
         }
         if(this.§0"t§)
         {
            if(§!#'§)
            {
               §!#'§ = false;
               §`$1§();
            }
            this.§]"4§ = new MovieClip();
            if(§7#x§)
            {
               this.§5!Y§();
            }
            else
            {
               this.§9$7§();
            }
            this.§]"4§.mouseEnabled = false;
            this.§]"4§.mouseChildren = false;
            this.§]"4§.visible = false;
            getParentView().addChild(this.§]"4§);
         }
      }
      
      private function §9$7§() : void
      {
         this.§]"4§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§]"4§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§]"4§.addChildAt(_loc2_,0);
         this.§;"p§(this.§0"t§);
      }
      
      private function §5!Y§() : void
      {
         this.§]"4§ = new §7#x§();
         this.§&"W§(this.§0"t§);
      }
      
      public function §&"W§(param1:String) : void
      {
         this.§0"t§ = param1;
         if(§7#x§)
         {
            this.§`1§(param1);
         }
         else
         {
            this.§;"p§(param1);
         }
      }
      
      private function §`1§(param1:String) : void
      {
         var _loc2_:TextField = this.§]"4§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§]"4§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§0"t§;
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
      
      private function §;"p§(param1:String) : void
      {
         var _loc2_:TextField = this.§]"4§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§0"t§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§]"4§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§]#D§,-this.§]#D§,_loc2_.width + 2 * this.§]#D§,_loc2_.height + 2 * this.§]#D§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§]#D§ / 2,-(this.§]#D§ / 2),_loc2_.width + 1 * this.§]#D§,_loc2_.height + 1 * this.§]#D§);
      }
      
      private function §`"O§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§]"4§ || this.§0"t§ == null || this.§0"t§.length == 0)
         {
            return;
         }
         if(param1 && §`!U§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§]"4§.y = _loc2_.y - this.§]"4§.height - this.§]#D§;
            this.§]"4§.x = _loc2_.x + mClip.width / 2 - this.§]"4§.width / 2;
            _loc3_ = this.§]"4§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§]#D§)
            {
               this.§]"4§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]#D§));
            }
            if(_loc3_.left < this.§]#D§)
            {
               this.§]"4§.x += 1 + (this.§]#D§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§]#D§)
            {
               this.§]"4§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]#D§));
            }
            if(_loc3_.top < this.§]#D§)
            {
               this.§]"4§.y += mClip.height + this.§]"4§.height + this.§]#D§ * 2;
            }
            this.§]"4§.visible = true;
         }
         else
         {
            this.§]"4§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§;!M§ = COMPONENT_STATE_DISABLED;
         if(this.§]"4§)
         {
            this.§0"t§ = null;
            while(this.§]"4§.numChildren > 0)
            {
               this.§]"4§.removeChildAt(0);
            }
            if(this.§]"4§.parent)
            {
               this.§]"4§.parent.removeChild(this.§]"4§);
            }
            this.§]"4§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§;!M§ = param1;
         this.§"Z§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§?!G§ && §9!]§)
         {
            if(param1 == §2#h§)
            {
               if(this.§2"M§ != null)
               {
                  this.§2"M§.stop();
               }
               this.§2"M§ = §6"w§.§ "D§.§""3§(mClip,{
                  "scaleX":§9!]§.scaleX + 0.1,
                  "scaleY":§9!]§.scaleY + 0.1
               },null,0.1);
               this.§2"M§.play();
            }
            else if(param1 == §7"U§)
            {
               if(this.§2"M§ != null)
               {
                  this.§2"M§.stop();
               }
               this.§2"M§ = §6"w§.§ "D§.§""3§(mClip,{
                  "scaleX":§9!]§.scaleX,
                  "scaleY":§9!]§.scaleY
               },null,0.1);
               this.§2"M§.play();
            }
         }
         this.§'!t§ = param1;
         this.§"Z§();
      }
      
      public function §"Z§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§;!M§ + "_" + this.§'!t§,this.§;!M§ + "_" + §["D§];
         if(this.§;!M§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§'!t§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §["D§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§^r§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §^r§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §3h§
      {
         if(this.§;!M§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§0!n§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§`#4§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§&$"§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§2#h§);
         }
         if(param1 == §+#"§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§7"U§);
         }
         if(param1 == §1#+§)
         {
            Mouse.cursor = this.§'!]§;
            this.setComponentVisualState(§2#h§);
         }
         this.§`"O§(param1 == §1#+§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §`#4§() : void
      {
         if(this.§;!M§ == §@!N§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§@!N§.§null§);
         }
         else if(this.§;!M§ == §@!N§.§null§)
         {
            this.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§"Z§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§`"O§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§`"O§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§2"M§)
         {
            this.§2"M§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§2"M§)
         {
            this.§2"M§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
