package §3#T§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §3"I§.§ E§;
   import §<h§.§[#K§;
   import com.rovio.assets.§!"f§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   
   public class §,#[§ extends §@"!§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §1$,§:String = "Deactive";
      
      public static const COMPONENT_STATE_DISABLED:String = "Disabled";
      
      public static const §3!B§:String = "Out";
      
      public static const § "z§:String = "Over";
      
      public static const §=#b§:String = "Up_Default";
      
      public static const §2$<§:String = "Down";
      
      public static var §9"<§:Class;
      
      public static var §2#w§:Boolean = true;
      
      public static const §@#2§:String = "Tooltip";
      
      public static var §%",§:Boolean = true;
       
      
      public var §2!t§:String;
      
      public var §[q§:String;
      
      public var §7#z§:String;
      
      public var §=#2§:MovieClip;
      
      public var §6k§:int = 6;
      
      private var §#$,§:Boolean = false;
      
      private var §&!^§:String = "auto";
      
      private var §9#R§:§4[§;
      
      public function §,#[§(param1:XML, param2:§[#K§, param3:MovieClip = null)
      {
         var _loc5_:Array = null;
         super(param1,param2,param3);
         this.§2!t§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§[q§ = §=#b§;
         this.§ !k§();
         this.§^$<§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§#$,§ = true;
         }
         var _loc4_:String;
         if(_loc4_ = param1.@cursor.toString().toLowerCase())
         {
            if((_loc5_ = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM]).indexOf(_loc4_) > -1)
            {
               this.§&!^§ = _loc4_;
            }
         }
         §<!4§(§^$?§,param1.@MouseOver);
         §<!4§(§5x§,param1.@MouseOut);
      }
      
      public static function §5!K§() : void
      {
         §9"<§ = §!"f§.§##?§(§@#2§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§3!B§);
         }
      }
      
      public function §^$<§(param1:String) : void
      {
         this.§7#z§ = param1;
         if(this.§7#z§ && this.§7#z§.length == 0)
         {
            this.§7#z§ = null;
         }
         if(this.§7#z§)
         {
            if(§2#w§)
            {
               §2#w§ = false;
               §5!K§();
            }
            this.§=#2§ = new MovieClip();
            if(§9"<§)
            {
               this.§9X§();
            }
            else
            {
               this.§ !p§();
            }
            this.§=#2§.mouseEnabled = false;
            this.§=#2§.mouseChildren = false;
            this.§=#2§.visible = false;
            getParentView().addChild(this.§=#2§);
         }
      }
      
      private function § !p§() : void
      {
         this.§=#2§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§=#2§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§=#2§.addChildAt(_loc2_,0);
         this.§ !0§(this.§7#z§);
      }
      
      private function §9X§() : void
      {
         this.§=#2§ = new §9"<§();
         this.§'!S§(this.§7#z§);
      }
      
      public function §'!S§(param1:String) : void
      {
         this.§7#z§ = param1;
         if(§9"<§)
         {
            this.§##%§(param1);
         }
         else
         {
            this.§ !0§(param1);
         }
      }
      
      private function §##%§(param1:String) : void
      {
         var _loc2_:TextField = this.§=#2§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§=#2§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§7#z§;
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
      
      private function § !0§(param1:String) : void
      {
         var _loc2_:TextField = this.§=#2§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextFormatAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§7#z§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§=#2§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§6k§,-this.§6k§,_loc2_.width + 2 * this.§6k§,_loc2_.height + 2 * this.§6k§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§6k§ / 2,-(this.§6k§ / 2),_loc2_.width + 1 * this.§6k§,_loc2_.height + 1 * this.§6k§);
      }
      
      private function §+!w§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§=#2§ || this.§7#z§ == null || this.§7#z§.length == 0)
         {
            return;
         }
         if(param1 && §%",§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§=#2§.y = _loc2_.y - this.§=#2§.height - this.§6k§;
            this.§=#2§.x = _loc2_.x + mClip.width / 2 - this.§=#2§.width / 2;
            _loc3_ = this.§=#2§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§6k§)
            {
               this.§=#2§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§6k§));
            }
            if(_loc3_.left < this.§6k§)
            {
               this.§=#2§.x += 1 + (this.§6k§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§6k§)
            {
               this.§=#2§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§6k§));
            }
            if(_loc3_.top < this.§6k§)
            {
               this.§=#2§.y += mClip.height + this.§=#2§.height + this.§6k§ * 2;
            }
            this.§=#2§.visible = true;
         }
         else
         {
            this.§=#2§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         this.§2!t§ = COMPONENT_STATE_DISABLED;
         if(this.§=#2§)
         {
            this.§7#z§ = null;
            while(this.§=#2§.numChildren > 0)
            {
               this.§=#2§.removeChildAt(0);
            }
            if(this.§=#2§.parent)
            {
               this.§=#2§.parent.removeChild(this.§=#2§);
            }
            this.§=#2§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§2!t§ = param1;
         this.§ !k§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         if(§2#H§ && §^"i§)
         {
            if(param1 == § "z§)
            {
               if(this.§9#R§ != null)
               {
                  this.§9#R§.stop();
               }
               this.§9#R§ = §&"H§.§6!§.§6C§(mClip,{
                  "scaleX":§^"i§.scaleX + 0.1,
                  "scaleY":§^"i§.scaleY + 0.1
               },null,0.1);
               this.§9#R§.play();
            }
            else if(param1 == §3!B§)
            {
               if(this.§9#R§ != null)
               {
                  this.§9#R§.stop();
               }
               this.§9#R§ = §&"H§.§6!§.§6C§(mClip,{
                  "scaleX":§^"i§.scaleX,
                  "scaleY":§^"i§.scaleY
               },null,0.1);
               this.§9#R§.play();
            }
         }
         this.§[q§ = param1;
         this.§ !k§();
      }
      
      public function § !k§() : void
      {
         if(mClip == null || mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = [this.§2!t§ + "_" + this.§[q§,this.§2!t§ + "_" + §=#b§];
         if(this.§2!t§ != COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            _loc1_.push(COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§[q§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §=#b§);
         }
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(this.§`d§(_loc1_[_loc2_]))
            {
               mClip.gotoAndStop(String(_loc1_[_loc2_]));
               break;
            }
            _loc2_++;
         }
      }
      
      private function §`d§(param1:String) : Boolean
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
      
      override public function listenerUIEventOccured(param1:int, param2:String) : § E§
      {
         if(this.§2!t§ == COMPONENT_STATE_DISABLED)
         {
            return null;
         }
         if(this.§#$,§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§2!H§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§2$<§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§ "z§);
         }
         if(param1 == §5x§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§3!B§);
         }
         if(param1 == §^$?§)
         {
            Mouse.cursor = this.§&!^§;
            this.setComponentVisualState(§ "z§);
         }
         this.§+!w§(param1 == §^$?§);
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §2!H§() : void
      {
         if(this.§2!t§ == §,#[§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§,#[§.§1$,§);
         }
         else if(this.§2!t§ == §,#[§.§1$,§)
         {
            this.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§ !k§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§+!w§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§+!w§(false);
         }
      }
      
      override public function set viewWidth(param1:Number) : void
      {
         if(this.§9#R§)
         {
            this.§9#R§.stop();
         }
         super.viewWidth = param1;
      }
      
      override public function set viewHeight(param1:Number) : void
      {
         if(this.§9#R§)
         {
            this.§9#R§.stop();
         }
         super.viewHeight = param1;
      }
   }
}
