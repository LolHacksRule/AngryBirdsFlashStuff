package §+!d§
{
   import §;!A§.§;!u§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §"r§ extends §8!=§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §5!D§:String = "Deactive";
      
      public static const §=!Z§:String = "Disabled";
      
      public static const §9j§:String = "Out";
      
      public static const §"!g§:String = "Over";
      
      public static const §@!C§:String = "Up_Default";
      
      public static const §1!_§:String = "Down";
      
      public static var §7!t§:Class;
      
      public static var §[!z§:Boolean = true;
      
      public static const §&l§:String = "Tooltip";
      
      public static var §4"$§:Boolean = true;
       
      
      public var §1!U§:String;
      
      public var §9!p§:String;
      
      public var §43§:String;
      
      public var §&!8§:MovieClip;
      
      public var §5!g§:int = 6;
      
      private var §<!]§:Boolean = false;
      
      private var §%!s§:String = "auto";
      
      public function §"r§(param1:XML, param2:§;!u§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§1!U§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§9!p§ = §@!C§;
         this.§#!U§();
         this.§?!F§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§<!]§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§%!s§ = _loc5_;
         }
      }
      
      public static function §`!R§() : void
      {
         §7!t§ = §]!S§.§?! §(§&l§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§9j§);
         }
      }
      
      public function §?!F§(param1:String) : void
      {
         this.§43§ = param1;
         if(this.§43§ && this.§43§.length == 0)
         {
            this.§43§ = null;
         }
         if(this.§43§)
         {
            if(§[!z§)
            {
               §[!z§ = false;
               §`!R§();
            }
            this.§&!8§ = new MovieClip();
            if(§7!t§)
            {
               this.§^!&§();
            }
            else
            {
               this.§"!n§();
            }
            this.§&!8§.mouseEnabled = false;
            this.§&!8§.mouseChildren = false;
            this.§&!8§.visible = false;
            getParentView().addChild(this.§&!8§);
         }
      }
      
      private function §"!n§() : void
      {
         this.§&!8§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§&!8§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§&!8§.addChildAt(_loc2_,0);
         this.§6!@§(this.§43§);
      }
      
      private function §^!&§() : void
      {
         this.§&!8§ = new §7!t§();
         this.§]!a§(this.§43§);
      }
      
      public function §]!a§(param1:String) : void
      {
         this.§43§ = param1;
         if(§7!t§)
         {
            this.§-!@§(param1);
         }
         else
         {
            this.§6!@§(param1);
         }
      }
      
      private function §-!@§(param1:String) : void
      {
         var _loc2_:TextField = this.§&!8§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§&!8§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§43§;
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
      
      private function §6!@§(param1:String) : void
      {
         var _loc2_:TextField = this.§&!8§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§43§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§&!8§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§5!g§,-this.§5!g§,_loc2_.width + 2 * this.§5!g§,_loc2_.height + 2 * this.§5!g§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§5!g§ / 2,-(this.§5!g§ / 2),_loc2_.width + 1 * this.§5!g§,_loc2_.height + 1 * this.§5!g§);
      }
      
      private function §0"4§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§&!8§ || this.§43§ == null || this.§43§.length == 0)
         {
            return;
         }
         if(param1 && §4"$§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§&!8§.y = _loc2_.y - this.§&!8§.height - this.§5!g§;
            this.§&!8§.x = _loc2_.x + mClip.width / 2 - this.§&!8§.width / 2;
            _loc3_ = this.§&!8§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§5!g§)
            {
               this.§&!8§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§5!g§));
            }
            if(_loc3_.left < this.§5!g§)
            {
               this.§&!8§.x += 1 + (this.§5!g§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§5!g§)
            {
               this.§&!8§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§5!g§));
            }
            if(_loc3_.top < this.§5!g§)
            {
               this.§&!8§.y += mClip.height + this.§&!8§.height + this.§5!g§ * 2;
            }
            this.§&!8§.visible = true;
         }
         else
         {
            this.§&!8§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§&!8§)
         {
            this.§43§ = null;
            while(this.§&!8§.numChildren > 0)
            {
               this.§&!8§.removeChildAt(0);
            }
            if(this.§&!8§.parent)
            {
               this.§&!8§.parent.removeChild(this.§&!8§);
            }
            this.§&!8§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§1!U§ = param1;
         this.§#!U§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§9!p§ = param1;
         this.§#!U§();
      }
      
      public function §#!U§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§1!U§ + "_" + this.§9!p§,this.§1!U§ + "_" + §@!C§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§9!p§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §@!C§);
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
         if(this.§1!U§ == §=!Z§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§<!]§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§<!i§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§1!_§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§"!g§);
         }
         if(param1 == §-!^§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§9j§);
         }
         if(param1 == §+!^§)
         {
            Mouse.cursor = this.§%!s§;
            this.setComponentVisualState(§"!g§);
         }
         this.§0"4§(param1 == §+!^§);
      }
      
      public function §<!i§() : void
      {
         if(this.§1!U§ == §"r§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§"r§.§5!D§);
         }
         else if(this.§1!U§ == §"r§.§5!D§)
         {
            this.setComponentState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§#!U§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§0"4§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§0"4§(false);
         }
      }
   }
}
