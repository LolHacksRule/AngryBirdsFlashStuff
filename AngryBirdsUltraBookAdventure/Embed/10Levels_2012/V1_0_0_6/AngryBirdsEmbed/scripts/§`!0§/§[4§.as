package §`!0§
{
   import §4C§.§1!=§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §[4§ extends §4Y§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §7X§:String = "Deactive";
      
      public static const §?[§:String = "Disabled";
      
      public static const §@!,§:String = "Out";
      
      public static const §4b§:String = "Over";
      
      public static const §`§:String = "Up_Default";
      
      public static const §4H§:String = "Down";
      
      public static var §^O§:Class;
      
      public static var §=S§:Boolean = true;
      
      public static const §?!?§:String = "Tooltip";
      
      public static var §48§:Boolean = true;
       
      
      public var §>+§:String;
      
      public var §5H§:String;
      
      public var §;W§:String;
      
      public var §=!F§:MovieClip;
      
      public var §^!?§:int = 6;
      
      private var §#!4§:Boolean = false;
      
      private var §0L§:String = "auto";
      
      public function §[4§(param1:XML, param2:§1!=§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§>+§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§5H§ = §`§;
         this.§#o§();
         this.§78§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§#!4§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§0L§ = _loc5_;
         }
      }
      
      public static function §!6§() : void
      {
         §^O§ = §!Q§.§^!H§(§?!?§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§@!,§);
         }
      }
      
      public function §78§(param1:String) : void
      {
         this.§;W§ = param1;
         if(this.§;W§ && this.§;W§.length == 0)
         {
            this.§;W§ = null;
         }
         if(this.§;W§)
         {
            if(§=S§)
            {
               §=S§ = false;
               §!6§();
            }
            this.§=!F§ = new MovieClip();
            if(§^O§)
            {
               this.§>z§();
            }
            else
            {
               this.§]!H§();
            }
            this.§=!F§.mouseEnabled = false;
            this.§=!F§.mouseChildren = false;
            this.§=!F§.visible = false;
            getParentView().addChild(this.§=!F§);
         }
      }
      
      private function §]!H§() : void
      {
         this.§=!F§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§=!F§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§=!F§.addChildAt(_loc2_,0);
         this.§63§(this.§;W§);
      }
      
      private function §>z§() : void
      {
         this.§=!F§ = new §^O§();
         this.§#D§(this.§;W§);
      }
      
      public function §#D§(param1:String) : void
      {
         this.§;W§ = param1;
         if(§^O§)
         {
            this.§?!0§(param1);
         }
         else
         {
            this.§63§(param1);
         }
      }
      
      private function §?!0§(param1:String) : void
      {
         var _loc2_:TextField = this.§=!F§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§=!F§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§;W§;
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
      
      private function §63§(param1:String) : void
      {
         var _loc2_:TextField = this.§=!F§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§;W§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§=!F§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§^!?§,-this.§^!?§,_loc2_.width + 2 * this.§^!?§,_loc2_.height + 2 * this.§^!?§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§^!?§ / 2,-(this.§^!?§ / 2),_loc2_.width + 1 * this.§^!?§,_loc2_.height + 1 * this.§^!?§);
      }
      
      private function §%d§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§=!F§ || this.§;W§ == null || this.§;W§.length == 0)
         {
            return;
         }
         if(param1 && §48§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§=!F§.y = _loc2_.y - this.§=!F§.height - this.§^!?§;
            this.§=!F§.x = _loc2_.x + mClip.width / 2 - this.§=!F§.width / 2;
            _loc3_ = this.§=!F§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§^!?§)
            {
               this.§=!F§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^!?§));
            }
            if(_loc3_.left < this.§^!?§)
            {
               this.§=!F§.x += 1 + (this.§^!?§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§^!?§)
            {
               this.§=!F§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^!?§));
            }
            if(_loc3_.top < this.§^!?§)
            {
               this.§=!F§.y += mClip.height + this.§=!F§.height + this.§^!?§ * 2;
            }
            this.§=!F§.visible = true;
         }
         else
         {
            this.§=!F§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§=!F§)
         {
            this.§;W§ = null;
            while(this.§=!F§.numChildren > 0)
            {
               this.§=!F§.removeChildAt(0);
            }
            if(this.§=!F§.parent)
            {
               this.§=!F§.parent.removeChild(this.§=!F§);
            }
            this.§=!F§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§>+§ = param1;
         this.§#o§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§5H§ = param1;
         this.§#o§();
      }
      
      public function §#o§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§>+§ + "_" + this.§5H§,this.§>+§ + "_" + §`§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§5H§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §`§);
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
         if(this.§>+§ == §?[§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§#!4§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§13§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§4H§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§4b§);
         }
         if(param1 == §#x§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§@!,§);
         }
         if(param1 == §;!4§)
         {
            Mouse.cursor = this.§0L§;
            this.setComponentVisualState(§4b§);
         }
         this.§%d§(param1 == §;!4§);
      }
      
      public function §13§() : void
      {
         if(this.§>+§ == §[4§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§[4§.§7X§);
         }
         else if(this.§>+§ == §[4§.§7X§)
         {
            this.setComponentState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§#o§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§%d§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§%d§(false);
         }
      }
   }
}
