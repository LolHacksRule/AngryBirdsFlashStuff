package §'!D§
{
   import §7'§.§!y§;
   import §>M§.§<6§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §0j§ extends §?!h§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §+o§:String = "Deactive";
      
      public static const §%!T§:String = "Disabled";
      
      public static const §-y§:String = "Out";
      
      public static const §=Z§:String = "Over";
      
      public static const § [§:String = "Up_Default";
      
      public static const §;!7§:String = "Down";
      
      public static var §3v§:Class;
      
      public static var §@!H§:Boolean = true;
      
      public static const §4!$§:String = "Tooltip";
      
      public static var §[!2§:Boolean = true;
       
      
      public var §<!V§:String;
      
      public var §0"§:String;
      
      public var §9r§:String;
      
      public var §+!=§:MovieClip;
      
      public var §>!H§:int = 6;
      
      private var §!Y§:Boolean = false;
      
      private var §`!A§:String = "auto";
      
      public function §0j§(param1:XML, param2:§<6§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§<!V§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§0"§ = § [§;
         this.§8!Y§();
         this.§ !i§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§!Y§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§`!A§ = _loc5_;
         }
      }
      
      public static function §3!`§() : void
      {
         §3v§ = §!y§.§%!C§(§4!$§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§-y§);
         }
      }
      
      public function § !i§(param1:String) : void
      {
         this.§9r§ = param1;
         if(this.§9r§ && this.§9r§.length == 0)
         {
            this.§9r§ = null;
         }
         if(this.§9r§)
         {
            if(§@!H§)
            {
               §@!H§ = false;
               §3!`§();
            }
            this.§+!=§ = new MovieClip();
            if(§3v§)
            {
               this.§]!4§();
            }
            else
            {
               this.§5i§();
            }
            this.§+!=§.mouseEnabled = false;
            this.§+!=§.mouseChildren = false;
            this.§+!=§.visible = false;
            getParentView().addChild(this.§+!=§);
         }
      }
      
      private function §5i§() : void
      {
         this.§+!=§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§+!=§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§+!=§.addChildAt(_loc2_,0);
         this.§'!P§(this.§9r§);
      }
      
      private function §]!4§() : void
      {
         this.§+!=§ = new §3v§();
         this.§#!@§(this.§9r§);
      }
      
      public function §#!@§(param1:String) : void
      {
         this.§9r§ = param1;
         if(§3v§)
         {
            this.§%6§(param1);
         }
         else
         {
            this.§'!P§(param1);
         }
      }
      
      private function §%6§(param1:String) : void
      {
         var _loc2_:TextField = this.§+!=§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§+!=§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§9r§;
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
      
      private function §'!P§(param1:String) : void
      {
         var _loc2_:TextField = this.§+!=§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§9r§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§+!=§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§>!H§,-this.§>!H§,_loc2_.width + 2 * this.§>!H§,_loc2_.height + 2 * this.§>!H§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§>!H§ / 2,-(this.§>!H§ / 2),_loc2_.width + 1 * this.§>!H§,_loc2_.height + 1 * this.§>!H§);
      }
      
      private function §?l§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§+!=§ || this.§9r§ == null || this.§9r§.length == 0)
         {
            return;
         }
         if(param1 && §[!2§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§+!=§.y = _loc2_.y - this.§+!=§.height - this.§>!H§;
            this.§+!=§.x = _loc2_.x + mClip.width / 2 - this.§+!=§.width / 2;
            _loc3_ = this.§+!=§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§>!H§)
            {
               this.§+!=§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§>!H§));
            }
            if(_loc3_.left < this.§>!H§)
            {
               this.§+!=§.x += 1 + (this.§>!H§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§>!H§)
            {
               this.§+!=§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§>!H§));
            }
            if(_loc3_.top < this.§>!H§)
            {
               this.§+!=§.y += mClip.height + this.§+!=§.height + this.§>!H§ * 2;
            }
            this.§+!=§.visible = true;
         }
         else
         {
            this.§+!=§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§+!=§)
         {
            this.§9r§ = null;
            while(this.§+!=§.numChildren > 0)
            {
               this.§+!=§.removeChildAt(0);
            }
            if(this.§+!=§.parent)
            {
               this.§+!=§.parent.removeChild(this.§+!=§);
            }
            this.§+!=§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§<!V§ = param1;
         this.§8!Y§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§0"§ = param1;
         this.§8!Y§();
      }
      
      public function §8!Y§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§<!V§ + "_" + this.§0"§,this.§<!V§ + "_" + § [§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§0"§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + § [§);
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
         if(this.§<!V§ == §%!T§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§!Y§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§9!A§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§;!7§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§=Z§);
         }
         if(param1 == §;=§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§-y§);
         }
         if(param1 == §&x§)
         {
            Mouse.cursor = this.§`!A§;
            this.setComponentVisualState(§=Z§);
         }
         this.§?l§(param1 == §&x§);
      }
      
      public function §9!A§() : void
      {
         if(this.§<!V§ == §0j§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§0j§.§+o§);
         }
         else if(this.§<!V§ == §0j§.§+o§)
         {
            this.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§8!Y§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§?l§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§?l§(false);
         }
      }
   }
}
