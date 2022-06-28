package §>7§
{
   import §1!E§.§#?§;
   import com.rovio.assets.§`!t§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §4+§ extends §&! §
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §2v§:String = "Deactive";
      
      public static const § !M§:String = "Disabled";
      
      public static const §>&§:String = "Out";
      
      public static const §9!C§:String = "Over";
      
      public static const §5!S§:String = "Up_Default";
      
      public static const §2K§:String = "Down";
      
      public static var §%!"§:Class;
      
      public static var §!!0§:Boolean = true;
      
      public static const §[!U§:String = "Tooltip";
      
      public static var §`!^§:Boolean = true;
       
      
      public var §8!j§:String;
      
      public var §8!t§:String;
      
      public var §!$§:String;
      
      public var §"!&§:MovieClip;
      
      public var §4-§:int = 6;
      
      private var §2n§:Boolean = false;
      
      private var §4!>§:String = "auto";
      
      public function §4+§(param1:XML, param2:§#?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§8!j§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§8!t§ = §5!S§;
         this.§2!]§();
         this.§]!P§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§2n§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§4!>§ = _loc5_;
         }
      }
      
      public static function §5!M§() : void
      {
         §%!"§ = §`!t§.§=J§(§[!U§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§>&§);
         }
      }
      
      public function §]!P§(param1:String) : void
      {
         this.§!$§ = param1;
         if(this.§!$§ && this.§!$§.length == 0)
         {
            this.§!$§ = null;
         }
         if(this.§!$§)
         {
            if(§!!0§)
            {
               §!!0§ = false;
               §5!M§();
            }
            this.§"!&§ = new MovieClip();
            if(§%!"§)
            {
               this.§1b§();
            }
            else
            {
               this.§0!T§();
            }
            this.§"!&§.mouseEnabled = false;
            this.§"!&§.mouseChildren = false;
            this.§"!&§.visible = false;
            getParentView().addChild(this.§"!&§);
         }
      }
      
      private function §0!T§() : void
      {
         this.§"!&§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§"!&§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§"!&§.addChildAt(_loc2_,0);
         this.§0!G§(this.§!$§);
      }
      
      private function §1b§() : void
      {
         this.§"!&§ = new §%!"§();
         this.§ !1§(this.§!$§);
      }
      
      public function § !1§(param1:String) : void
      {
         this.§!$§ = param1;
         if(§%!"§)
         {
            this.§>=§(param1);
         }
         else
         {
            this.§0!G§(param1);
         }
      }
      
      private function §>=§(param1:String) : void
      {
         var _loc2_:TextField = this.§"!&§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§"!&§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§!$§;
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
      
      private function §0!G§(param1:String) : void
      {
         var _loc2_:TextField = this.§"!&§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§!$§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§"!&§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§4-§,-this.§4-§,_loc2_.width + 2 * this.§4-§,_loc2_.height + 2 * this.§4-§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§4-§ / 2,-(this.§4-§ / 2),_loc2_.width + 1 * this.§4-§,_loc2_.height + 1 * this.§4-§);
      }
      
      private function §3+§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§"!&§ || this.§!$§ == null || this.§!$§.length == 0)
         {
            return;
         }
         if(param1 && §`!^§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§"!&§.y = _loc2_.y - this.§"!&§.height - this.§4-§;
            this.§"!&§.x = _loc2_.x + mClip.width / 2 - this.§"!&§.width / 2;
            _loc3_ = this.§"!&§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§4-§)
            {
               this.§"!&§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4-§));
            }
            if(_loc3_.left < this.§4-§)
            {
               this.§"!&§.x += 1 + (this.§4-§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§4-§)
            {
               this.§"!&§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4-§));
            }
            if(_loc3_.top < this.§4-§)
            {
               this.§"!&§.y += mClip.height + this.§"!&§.height + this.§4-§ * 2;
            }
            this.§"!&§.visible = true;
         }
         else
         {
            this.§"!&§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§"!&§)
         {
            this.§!$§ = null;
            while(this.§"!&§.numChildren > 0)
            {
               this.§"!&§.removeChildAt(0);
            }
            if(this.§"!&§.parent)
            {
               this.§"!&§.parent.removeChild(this.§"!&§);
            }
            this.§"!&§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§8!j§ = param1;
         this.§2!]§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§8!t§ = param1;
         this.§2!]§();
      }
      
      public function §2!]§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§8!j§ + "_" + this.§8!t§,this.§8!j§ + "_" + §5!S§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§8!t§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §5!S§);
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
         if(this.§8!j§ == § !M§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§2n§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§,c§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§2K§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§9!C§);
         }
         if(param1 == §^v§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§>&§);
         }
         if(param1 == §"!n§)
         {
            Mouse.cursor = this.§4!>§;
            this.setComponentVisualState(§9!C§);
         }
         this.§3+§(param1 == §"!n§);
      }
      
      public function §,c§() : void
      {
         if(this.§8!j§ == §4+§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§4+§.§2v§);
         }
         else if(this.§8!j§ == §4+§.§2v§)
         {
            this.setComponentState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§2!]§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§3+§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§3+§(false);
         }
      }
   }
}
