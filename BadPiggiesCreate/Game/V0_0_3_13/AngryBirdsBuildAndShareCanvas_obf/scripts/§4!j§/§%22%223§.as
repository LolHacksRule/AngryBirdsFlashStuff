package §4!j§
{
   import § true§.§1H§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §""3§ extends §[!f§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §!`§:String = "Deactive";
      
      public static const override:String = "Disabled";
      
      public static const §^t§:String = "Out";
      
      public static const §8!o§:String = "Over";
      
      public static const §,!o§:String = "Up_Default";
      
      public static const §#!&§:String = "Down";
      
      public static var §[g§:Class;
      
      public static var §5!s§:Boolean = true;
      
      public static const §!r§:String = "Tooltip";
      
      public static var §,!G§:Boolean = true;
       
      
      public var §;X§:String;
      
      public var §9y§:String;
      
      public var §"!1§:String;
      
      public var §9!@§:MovieClip;
      
      public var §-b§:int = 6;
      
      private var §2;§:Boolean = false;
      
      private var §?c§:String = "auto";
      
      public function §""3§(param1:XML, param2:§1H§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§;X§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§9y§ = §,!o§;
         this.§1!h§();
         this.§finally§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§2;§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§?c§ = _loc5_;
         }
      }
      
      public static function §[!r§() : void
      {
         §[g§ = §=#§.§1v§(§!r§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§^t§);
         }
      }
      
      public function §finally§(param1:String) : void
      {
         this.§"!1§ = param1;
         if(this.§"!1§ && this.§"!1§.length == 0)
         {
            this.§"!1§ = null;
         }
         if(this.§"!1§)
         {
            if(§5!s§)
            {
               §5!s§ = false;
               §[!r§();
            }
            this.§9!@§ = new MovieClip();
            if(§[g§)
            {
               this.§+!N§();
            }
            else
            {
               this.§@!6§();
            }
            this.§9!@§.mouseEnabled = false;
            this.§9!@§.mouseChildren = false;
            this.§9!@§.visible = false;
            getParentView().addChild(this.§9!@§);
         }
      }
      
      private function §@!6§() : void
      {
         this.§9!@§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§9!@§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§9!@§.addChildAt(_loc2_,0);
         this.§<d§(this.§"!1§);
      }
      
      private function §+!N§() : void
      {
         this.§9!@§ = new §[g§();
         this.§0Y§(this.§"!1§);
      }
      
      public function §0Y§(param1:String) : void
      {
         this.§"!1§ = param1;
         if(§[g§)
         {
            this.§74§(param1);
         }
         else
         {
            this.§<d§(param1);
         }
      }
      
      private function §74§(param1:String) : void
      {
         var _loc2_:TextField = this.§9!@§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§9!@§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§"!1§;
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
      
      private function §<d§(param1:String) : void
      {
         var _loc2_:TextField = this.§9!@§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§"!1§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§9!@§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§-b§,-this.§-b§,_loc2_.width + 2 * this.§-b§,_loc2_.height + 2 * this.§-b§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§-b§ / 2,-(this.§-b§ / 2),_loc2_.width + 1 * this.§-b§,_loc2_.height + 1 * this.§-b§);
      }
      
      private function §+Q§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§9!@§ || this.§"!1§ == null || this.§"!1§.length == 0)
         {
            return;
         }
         if(param1 && §,!G§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§9!@§.y = _loc2_.y - this.§9!@§.height - this.§-b§;
            this.§9!@§.x = _loc2_.x + mClip.width / 2 - this.§9!@§.width / 2;
            _loc3_ = this.§9!@§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§-b§)
            {
               this.§9!@§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§-b§));
            }
            if(_loc3_.left < this.§-b§)
            {
               this.§9!@§.x += 1 + (this.§-b§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§-b§)
            {
               this.§9!@§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§-b§));
            }
            if(_loc3_.top < this.§-b§)
            {
               this.§9!@§.y += mClip.height + this.§9!@§.height + this.§-b§ * 2;
            }
            this.§9!@§.visible = true;
         }
         else
         {
            this.§9!@§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§9!@§)
         {
            this.§"!1§ = null;
            while(this.§9!@§.numChildren > 0)
            {
               this.§9!@§.removeChildAt(0);
            }
            if(this.§9!@§.parent)
            {
               this.§9!@§.parent.removeChild(this.§9!@§);
            }
            this.§9!@§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§;X§ = param1;
         this.§1!h§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§9y§ = param1;
         this.§1!h§();
      }
      
      public function §1!h§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§;X§ + "_" + this.§9y§,this.§;X§ + "_" + §,!o§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§9y§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §,!o§);
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
         if(this.§;X§ == override)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§2;§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§@! §();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§#!&§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§8!o§);
         }
         if(param1 == §?!!§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§^t§);
         }
         if(param1 == §#!7§)
         {
            Mouse.cursor = this.§?c§;
            this.setComponentVisualState(§8!o§);
         }
         this.§+Q§(param1 == §#!7§);
      }
      
      public function §@! §() : void
      {
         if(this.§;X§ == §""3§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§""3§.§!`§);
         }
         else if(this.§;X§ == §""3§.§!`§)
         {
            this.setComponentState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§1!h§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§+Q§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§+Q§(false);
         }
      }
   }
}
