package §1§
{
   import §,j§.§1-§;
   import §1!K§.§<!I§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §&!3§ extends §;d§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §;2§:String = "Deactive";
      
      public static const §#!$§:String = "Disabled";
      
      public static const §#i§:String = "Out";
      
      public static const §;!F§:String = "Over";
      
      public static const §4?§:String = "Up_Default";
      
      public static const §`"§:String = "Down";
      
      public static var §#e§:Class;
      
      public static var §7n§:Boolean = true;
      
      public static const §8i§:String = "Tooltip";
      
      public static var §=,§:Boolean = true;
       
      
      public var §#F§:String;
      
      public var §6H§:String;
      
      public var §,6§:String;
      
      public var §5k§:MovieClip;
      
      public var §%!Q§:int = 6;
      
      private var §+!_§:Boolean = false;
      
      private var §'y§:String = "auto";
      
      public function §&!3§(param1:XML, param2:§1-§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§#F§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§6H§ = §4?§;
         this.§-x§();
         this.§5x§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§+!_§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§'y§ = _loc5_;
         }
      }
      
      public static function §-n§() : void
      {
         §#e§ = §<!I§.§;!U§(§8i§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§#i§);
         }
      }
      
      public function §5x§(param1:String) : void
      {
         this.§,6§ = param1;
         if(this.§,6§ && this.§,6§.length == 0)
         {
            this.§,6§ = null;
         }
         if(this.§,6§)
         {
            if(§7n§)
            {
               §7n§ = false;
               §-n§();
            }
            this.§5k§ = new MovieClip();
            if(§#e§)
            {
               this.§[!B§();
            }
            else
            {
               this.§5b§();
            }
            this.§5k§.mouseEnabled = false;
            this.§5k§.mouseChildren = false;
            this.§5k§.visible = false;
            getParentView().addChild(this.§5k§);
         }
      }
      
      private function §5b§() : void
      {
         this.§5k§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§5k§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§5k§.addChildAt(_loc2_,0);
         this.§#!Y§(this.§,6§);
      }
      
      private function §[!B§() : void
      {
         this.§5k§ = new §#e§();
         this.§&0§(this.§,6§);
      }
      
      public function §&0§(param1:String) : void
      {
         this.§,6§ = param1;
         if(§#e§)
         {
            this.§>!J§(param1);
         }
         else
         {
            this.§#!Y§(param1);
         }
      }
      
      private function §>!J§(param1:String) : void
      {
         var _loc2_:TextField = this.§5k§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§5k§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§,6§;
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
      
      private function §#!Y§(param1:String) : void
      {
         var _loc2_:TextField = this.§5k§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§,6§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§5k§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§%!Q§,-this.§%!Q§,_loc2_.width + 2 * this.§%!Q§,_loc2_.height + 2 * this.§%!Q§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§%!Q§ / 2,-(this.§%!Q§ / 2),_loc2_.width + 1 * this.§%!Q§,_loc2_.height + 1 * this.§%!Q§);
      }
      
      private function §7!B§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§5k§ || this.§,6§ == null || this.§,6§.length == 0)
         {
            return;
         }
         if(param1 && §=,§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§5k§.y = _loc2_.y - this.§5k§.height - this.§%!Q§;
            this.§5k§.x = _loc2_.x + mClip.width / 2 - this.§5k§.width / 2;
            _loc3_ = this.§5k§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§%!Q§)
            {
               this.§5k§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§%!Q§));
            }
            if(_loc3_.left < this.§%!Q§)
            {
               this.§5k§.x += 1 + (this.§%!Q§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§%!Q§)
            {
               this.§5k§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§%!Q§));
            }
            if(_loc3_.top < this.§%!Q§)
            {
               this.§5k§.y += mClip.height + this.§5k§.height + this.§%!Q§ * 2;
            }
            this.§5k§.visible = true;
         }
         else
         {
            this.§5k§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§5k§)
         {
            this.§,6§ = null;
            while(this.§5k§.numChildren > 0)
            {
               this.§5k§.removeChildAt(0);
            }
            if(this.§5k§.parent)
            {
               this.§5k§.parent.removeChild(this.§5k§);
            }
            this.§5k§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§#F§ = param1;
         this.§-x§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§6H§ = param1;
         this.§-x§();
      }
      
      public function §-x§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§#F§ + "_" + this.§6H§,this.§#F§ + "_" + §4?§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§6H§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §4?§);
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
         if(this.§#F§ == §#!$§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§+!_§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§-!#§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§`"§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§;!F§);
         }
         if(param1 == §'!#§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§#i§);
         }
         if(param1 == §6!A§)
         {
            Mouse.cursor = this.§'y§;
            this.setComponentVisualState(§;!F§);
         }
         this.§7!B§(param1 == §6!A§);
      }
      
      public function §-!#§() : void
      {
         if(this.§#F§ == §&!3§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§&!3§.§;2§);
         }
         else if(this.§#F§ == §&!3§.§;2§)
         {
            this.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§-x§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§7!B§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§7!B§(false);
         }
      }
   }
}
