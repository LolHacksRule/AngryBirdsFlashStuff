package §-!F§
{
   import §class§.§3C§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §`!&§ extends §&!A§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §3?§:String = "Deactive";
      
      public static const §9I§:String = "Disabled";
      
      public static const §#@§:String = "Out";
      
      public static const §[!;§:String = "Over";
      
      public static const §"7§:String = "Up_Default";
      
      public static const §@&§:String = "Down";
      
      public static var §[!'§:Class;
      
      public static var §5Q§:Boolean = true;
      
      public static const §`h§:String = "Tooltip";
      
      public static var §;!=§:Boolean = true;
       
      
      public var §;e§:String;
      
      public var §]0§:String;
      
      public var §&b§:String;
      
      public var §#b§:MovieClip;
      
      public var §4y§:int = 6;
      
      private var §#l§:Boolean = false;
      
      private var §<!'§:String = "auto";
      
      public function §`!&§(param1:XML, param2:§3C§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§;e§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§]0§ = §"7§;
         this.§4&§();
         this.§4!<§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§#l§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§<!'§ = _loc5_;
         }
      }
      
      public static function §"!=§() : void
      {
         §[!'§ = §'!H§.§&!G§(§`h§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§#@§);
         }
      }
      
      public function §4!<§(param1:String) : void
      {
         this.§&b§ = param1;
         if(this.§&b§ && this.§&b§.length == 0)
         {
            this.§&b§ = null;
         }
         if(this.§&b§)
         {
            if(§5Q§)
            {
               §5Q§ = false;
               §"!=§();
            }
            this.§#b§ = new MovieClip();
            if(§[!'§)
            {
               this.final();
            }
            else
            {
               this.§"!§();
            }
            this.§#b§.mouseEnabled = false;
            this.§#b§.mouseChildren = false;
            this.§#b§.visible = false;
            getParentView().addChild(this.§#b§);
         }
      }
      
      private function §"!§() : void
      {
         this.§#b§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§#b§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§#b§.addChildAt(_loc2_,0);
         this.§2c§(this.§&b§);
      }
      
      private function final() : void
      {
         this.§#b§ = new §[!'§();
         this.§]e§(this.§&b§);
      }
      
      public function §]e§(param1:String) : void
      {
         this.§&b§ = param1;
         if(§[!'§)
         {
            this.§&t§(param1);
         }
         else
         {
            this.§2c§(param1);
         }
      }
      
      private function §&t§(param1:String) : void
      {
         var _loc2_:TextField = this.§#b§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§#b§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§&b§;
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
      
      private function §2c§(param1:String) : void
      {
         var _loc2_:TextField = this.§#b§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§&b§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§#b§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§4y§,-this.§4y§,_loc2_.width + 2 * this.§4y§,_loc2_.height + 2 * this.§4y§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§4y§ / 2,-(this.§4y§ / 2),_loc2_.width + 1 * this.§4y§,_loc2_.height + 1 * this.§4y§);
      }
      
      private function §;X§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§#b§ || this.§&b§ == null || this.§&b§.length == 0)
         {
            return;
         }
         if(param1 && §;!=§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§#b§.y = _loc2_.y - this.§#b§.height - this.§4y§;
            this.§#b§.x = _loc2_.x + mClip.width / 2 - this.§#b§.width / 2;
            _loc3_ = this.§#b§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§4y§)
            {
               this.§#b§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§4y§));
            }
            if(_loc3_.left < this.§4y§)
            {
               this.§#b§.x += 1 + (this.§4y§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§4y§)
            {
               this.§#b§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§4y§));
            }
            if(_loc3_.top < this.§4y§)
            {
               this.§#b§.y += mClip.height + this.§#b§.height + this.§4y§ * 2;
            }
            this.§#b§.visible = true;
         }
         else
         {
            this.§#b§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§#b§)
         {
            this.§&b§ = null;
            while(this.§#b§.numChildren > 0)
            {
               this.§#b§.removeChildAt(0);
            }
            if(this.§#b§.parent)
            {
               this.§#b§.parent.removeChild(this.§#b§);
            }
            this.§#b§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§;e§ = param1;
         this.§4&§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§]0§ = param1;
         this.§4&§();
      }
      
      public function §4&§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§;e§ + "_" + this.§]0§,this.§;e§ + "_" + §"7§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§]0§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §"7§);
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
         if(this.§;e§ == §9I§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§#l§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§ P§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§@&§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§[!;§);
         }
         if(param1 == §@!'§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§#@§);
         }
         if(param1 == §null§)
         {
            Mouse.cursor = this.§<!'§;
            this.setComponentVisualState(§[!;§);
         }
         this.§;X§(param1 == §null§);
      }
      
      public function § P§() : void
      {
         if(this.§;e§ == §`!&§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§`!&§.§3?§);
         }
         else if(this.§;e§ == §`!&§.§3?§)
         {
            this.setComponentState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§4&§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§;X§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§;X§(false);
         }
      }
   }
}
