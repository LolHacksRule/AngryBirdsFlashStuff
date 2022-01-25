package §&V§
{
   import § 9§.§=!a§;
   import §68§.§`?§;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class §4o§ extends §!q§
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §3m§:String = "Deactive";
      
      public static const §0!;§:String = "Disabled";
      
      public static const §0i§:String = "Out";
      
      public static const §!!K§:String = "Over";
      
      public static const § else§:String = "Up_Default";
      
      public static const §4!I§:String = "Down";
      
      public static var §'!H§:Class;
      
      public static var §'s§:Boolean = true;
      
      public static const §2!7§:String = "Tooltip";
      
      public static var §+!Z§:Boolean = true;
       
      
      public var §4j§:String;
      
      public var §#!f§:String;
      
      public var §'!Z§:String;
      
      public var §'!D§:MovieClip;
      
      public var §^!&§:int = 6;
      
      private var §%G§:Boolean = false;
      
      private var §@e§:String = "auto";
      
      public function §4o§(param1:XML, param2:§`?§, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§4j§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§#!f§ = § else§;
         this.§9x§();
         this.§#!8§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§%G§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§@e§ = _loc5_;
         }
      }
      
      public static function §]!X§() : void
      {
         §'!H§ = §=!a§.§@o§(§2!7§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§0i§);
         }
      }
      
      public function §#!8§(param1:String) : void
      {
         this.§'!Z§ = param1;
         if(this.§'!Z§ && this.§'!Z§.length == 0)
         {
            this.§'!Z§ = null;
         }
         if(this.§'!Z§)
         {
            if(§'s§)
            {
               §'s§ = false;
               §]!X§();
            }
            this.§'!D§ = new MovieClip();
            if(§'!H§)
            {
               this.§<!D§();
            }
            else
            {
               this.§@c§();
            }
            this.§'!D§.mouseEnabled = false;
            this.§'!D§.mouseChildren = false;
            this.§'!D§.visible = false;
            getParentView().addChild(this.§'!D§);
         }
      }
      
      private function §@c§() : void
      {
         this.§'!D§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§'!D§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§'!D§.addChildAt(_loc2_,0);
         this.§7=§(this.§'!Z§);
      }
      
      private function §<!D§() : void
      {
         this.§'!D§ = new §'!H§();
         this.§"@§(this.§'!Z§);
      }
      
      public function §"@§(param1:String) : void
      {
         this.§'!Z§ = param1;
         if(§'!H§)
         {
            this.§6!V§(param1);
         }
         else
         {
            this.§7=§(param1);
         }
      }
      
      private function §6!V§(param1:String) : void
      {
         var _loc2_:TextField = this.§'!D§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§'!D§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§'!Z§;
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
      
      private function §7=§(param1:String) : void
      {
         var _loc2_:TextField = this.§'!D§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§'!Z§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape;
         (_loc4_ = this.§'!D§.getChildByName("Base") as Shape).graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§^!&§,-this.§^!&§,_loc2_.width + 2 * this.§^!&§,_loc2_.height + 2 * this.§^!&§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§^!&§ / 2,-(this.§^!&§ / 2),_loc2_.width + 1 * this.§^!&§,_loc2_.height + 1 * this.§^!&§);
      }
      
      private function §`t§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§'!D§ || this.§'!Z§ == null || this.§'!Z§.length == 0)
         {
            return;
         }
         if(param1 && §+!Z§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§'!D§.y = _loc2_.y - this.§'!D§.height - this.§^!&§;
            this.§'!D§.x = _loc2_.x + mClip.width / 2 - this.§'!D§.width / 2;
            _loc3_ = this.§'!D§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§^!&§)
            {
               this.§'!D§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§^!&§));
            }
            if(_loc3_.left < this.§^!&§)
            {
               this.§'!D§.x += 1 + (this.§^!&§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§^!&§)
            {
               this.§'!D§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§^!&§));
            }
            if(_loc3_.top < this.§^!&§)
            {
               this.§'!D§.y += mClip.height + this.§'!D§.height + this.§^!&§ * 2;
            }
            this.§'!D§.visible = true;
         }
         else
         {
            this.§'!D§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§'!D§)
         {
            this.§'!Z§ = null;
            while(this.§'!D§.numChildren > 0)
            {
               this.§'!D§.removeChildAt(0);
            }
            if(this.§'!D§.parent)
            {
               this.§'!D§.parent.removeChild(this.§'!D§);
            }
            this.§'!D§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§4j§ = param1;
         this.§9x§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§#!f§ = param1;
         this.§9x§();
      }
      
      public function §9x§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§4j§ + "_" + this.§#!f§,this.§4j§ + "_" + § else§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§#!f§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + § else§);
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
         if(this.§4j§ == §0!;§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§%G§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§'V§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§4!I§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§!!K§);
         }
         if(param1 == §>Y§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§0i§);
         }
         if(param1 == §>!M§)
         {
            Mouse.cursor = this.§@e§;
            this.setComponentVisualState(§!!K§);
         }
         this.§`t§(param1 == §>!M§);
      }
      
      public function §'V§() : void
      {
         if(this.§4j§ == §4o§.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(§4o§.§3m§);
         }
         else if(this.§4j§ == §4o§.§3m§)
         {
            this.setComponentState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§9x§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§`t§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§`t§(false);
         }
      }
   }
}
