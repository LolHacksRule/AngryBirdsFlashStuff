package §9Y§
{
   import §?!7§.§8;§;
   import com.rovio.assets.§%!G§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §+!!§ extends §9j§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §^!<§:String = "Deactive";
      
      public static const § H§:String = "Disabled";
      
      public static const §?!0§:String = "Out";
      
      public static const §;=§:String = "Over";
      
      public static const §!%§:String = "Up_Default";
      
      public static const §1J§:String = "Down";
      
      public static var §#!e§:Class;
      
      public static var §+3§:Boolean = true;
      
      public static const §`%§:String = "Tooltip";
      
      public static var §=0§:Boolean = true;
       
      
      public var §>!f§:String;
      
      public var §%j§:String;
      
      public var §+m§:String;
      
      public var §[=§:MovieClip;
      
      public var §6!!§:int = 6;
      
      private var §]?§:Boolean = false;
      
      private var §5!^§:String = "auto";
      
      public function §+!!§(param1:XML, param2:§8;§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§>!f§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§%j§ = §!%§;
         this.§"!b§();
         this.§7!g§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§]?§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§5!^§ = _loc5_;
         }
      }
      
      public static function §13§() : void
      {
         §#!e§ = §%!G§.§^!B§(§`%§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§?!0§);
         }
      }
      
      public function §7!g§(param1:String) : void
      {
         this.§+m§ = param1;
         if(this.§+m§ && this.§+m§.length == 0)
         {
            this.§+m§ = null;
         }
         if(this.§+m§)
         {
            if(§+3§)
            {
               §+3§ = false;
               §13§();
            }
            this.§[=§ = new MovieClip();
            if(§#!e§)
            {
               this.§[!m§();
            }
            else
            {
               this.§[7§();
            }
            this.§[=§.mouseEnabled = false;
            this.§[=§.mouseChildren = false;
            this.§[=§.visible = false;
            getParentView().addChild(this.§[=§);
         }
      }
      
      private function §[7§() : void
      {
         this.§[=§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§[=§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§[=§.addChildAt(_loc2_,0);
         this.§5!+§(this.§+m§);
      }
      
      private function §[!m§() : void
      {
         this.§[=§ = new §#!e§();
         this.§%^§(this.§+m§);
      }
      
      public function §%^§(param1:String) : void
      {
         this.§+m§ = param1;
         if(§#!e§)
         {
            this.§!J§(param1);
         }
         else
         {
            this.§5!+§(param1);
         }
      }
      
      private function §!J§(param1:String) : void
      {
         var _loc2_:TextField = this.§[=§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§[=§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§+m§;
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
      
      private function §5!+§(param1:String) : void
      {
         var _loc2_:TextField = this.§[=§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§+m§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§[=§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§6!!§,-this.§6!!§,_loc2_.width + 2 * this.§6!!§,_loc2_.height + 2 * this.§6!!§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§6!!§ / 2,-(this.§6!!§ / 2),_loc2_.width + 1 * this.§6!!§,_loc2_.height + 1 * this.§6!!§);
      }
      
      private function §-!d§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§[=§ || this.§+m§ == null || this.§+m§.length == 0)
         {
            return;
         }
         if(param1 && §=0§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§[=§.y = _loc2_.y - this.§[=§.height - this.§6!!§;
            this.§[=§.x = _loc2_.x + mClip.width / 2 - this.§[=§.width / 2;
            _loc3_ = this.§[=§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§6!!§)
            {
               this.§[=§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§6!!§));
            }
            if(_loc3_.left < this.§6!!§)
            {
               this.§[=§.x += 1 + (this.§6!!§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§6!!§)
            {
               this.§[=§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§6!!§));
            }
            if(_loc3_.top < this.§6!!§)
            {
               this.§[=§.y += mClip.height + this.§[=§.height + this.§6!!§ * 2;
            }
            this.§[=§.visible = true;
         }
         else
         {
            this.§[=§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§[=§)
         {
            this.§+m§ = null;
            while(this.§[=§.numChildren > 0)
            {
               this.§[=§.removeChildAt(0);
            }
            if(this.§[=§.parent)
            {
               this.§[=§.parent.removeChild(this.§[=§);
            }
            this.§[=§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§>!f§ = param1;
         this.§"!b§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§%j§ = param1;
         this.§"!b§();
      }
      
      public function §"!b§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§>!f§ + "_" + this.§%j§,this.§>!f§ + "_" + §!%§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§%j§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §!%§);
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
         if(this.§>!f§ == § H§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§]?§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§8F§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§1J§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§;=§);
         }
         if(param1 == §[!J§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§?!0§);
         }
         if(param1 == §^§)
         {
            Mouse.cursor = this.§5!^§;
            this.setComponentVisualState(§;=§);
         }
         this.§-!d§(param1 == §^§);
      }
      
      public function §8F§() : void
      {
         if(this.§>!f§ == §+!!§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§+!!§.§^!<§);
         }
         else if(this.§>!f§ == §+!!§.§^!<§)
         {
            this.setComponentState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§"!b§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§-!d§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§-!d§(false);
         }
      }
   }
}
