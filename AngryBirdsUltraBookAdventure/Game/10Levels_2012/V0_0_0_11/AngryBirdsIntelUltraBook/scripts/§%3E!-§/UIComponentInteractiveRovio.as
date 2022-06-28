package §>!-§
{
   import §]!6§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flashx.textLayout.formats.TextAlign;
   
   public class UIComponentInteractiveRovio extends UIComponentRovio
   {
      
      public static const COMPONENT_STATE_ACTIVE_DEFAULT:String = "Active";
      
      public static const §!!c§:String = "Deactive";
      
      public static const §1!M§:String = "Disabled";
      
      public static const §5$§:String = "Out";
      
      public static const §#!A§:String = "Over";
      
      public static const §+!V§:String = "Up_Default";
      
      public static const §5!e§:String = "Down";
      
      public static var §+!0§:Class;
      
      public static var §"!Z§:Boolean = true;
      
      public static const §;y§:String = "Tooltip";
      
      public static var §=!+§:Boolean = true;
       
      
      public var §+!_§:String;
      
      public var §^!;§:String;
      
      public var §2y§:String;
      
      public var §1Z§:MovieClip;
      
      public var §]z§:int = 6;
      
      private var §2!^§:Boolean = false;
      
      private var §80§:String = "auto";
      
      public function UIComponentInteractiveRovio(param1:XML, param2:UIContainerRovio, param3:MovieClip = null)
      {
         super(param1,param2,param3);
         this.§+!_§ = COMPONENT_STATE_ACTIVE_DEFAULT;
         this.§^!;§ = §+!V§;
         this.§'!E§();
         this.§0!L§(param1.@Tooltip);
         if(param1.@Toggle.toString().toUpperCase() == "TRUE")
         {
            this.§2!^§ = true;
         }
         var _loc4_:Array = [MouseCursor.ARROW,MouseCursor.AUTO,MouseCursor.BUTTON,MouseCursor.HAND,MouseCursor.IBEAM];
         var _loc5_:String = param1.@cursor.toString().toLowerCase();
         if(_loc4_.indexOf(_loc5_) > -1)
         {
            this.§80§ = _loc5_;
         }
      }
      
      public static function §2$§() : void
      {
         §+!0§ = AssetCache.§-9§(§;y§);
      }
      
      override public function setActiveStatus(param1:Boolean) : void
      {
         super.setActiveStatus(param1);
         if(!param1)
         {
            this.setComponentVisualState(§5$§);
         }
      }
      
      public function §0!L§(param1:String) : void
      {
         this.§2y§ = param1;
         if(this.§2y§ && this.§2y§.length == 0)
         {
            this.§2y§ = null;
         }
         if(this.§2y§)
         {
            if(§"!Z§)
            {
               §"!Z§ = false;
               §2$§();
            }
            this.§1Z§ = new MovieClip();
            if(§+!0§)
            {
               this.static();
            }
            else
            {
               this.§6!I§();
            }
            this.§1Z§.mouseEnabled = false;
            this.§1Z§.mouseChildren = false;
            this.§1Z§.visible = false;
            getParentView().addChild(this.§1Z§);
         }
      }
      
      private function §6!I§() : void
      {
         this.§1Z§ = new MovieClip();
         var _loc1_:TextField = new TextField();
         _loc1_.name = "Text";
         this.§1Z§.addChild(_loc1_);
         var _loc2_:Shape = new Shape();
         _loc2_.name = "Base";
         this.§1Z§.addChildAt(_loc2_,0);
         this.§4r§(this.§2y§);
      }
      
      private function static() : void
      {
         this.§1Z§ = new §+!0§();
         this.§<![§(this.§2y§);
      }
      
      public function §<![§(param1:String) : void
      {
         this.§2y§ = param1;
         if(§+!0§)
         {
            this.§%m§(param1);
         }
         else
         {
            this.§4r§(param1);
         }
      }
      
      private function §%m§(param1:String) : void
      {
         var _loc2_:TextField = this.§1Z§.getChildByName("Text") as TextField;
         var _loc3_:MovieClip = this.§1Z§.getChildByName("Base") as MovieClip;
         _loc2_.text = this.§2y§;
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
      
      private function §4r§(param1:String) : void
      {
         var _loc2_:TextField = this.§1Z§.getChildByName("Text") as TextField;
         var _loc3_:TextFormat = _loc2_.defaultTextFormat;
         _loc3_.align = TextAlign.CENTER;
         _loc3_.bold = true;
         _loc3_.size = 12;
         _loc2_.defaultTextFormat = _loc3_;
         _loc2_.border = false;
         _loc2_.text = this.§2y§;
         _loc2_.height = _loc2_.textHeight * 1.25;
         _loc2_.width = _loc2_.textWidth * 1.25;
         _loc2_.textColor = 0;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         var _loc4_:Shape = this.§1Z§.getChildByName("Base") as Shape;
         _loc4_.graphics.clear();
         _loc4_.graphics.lineStyle(1);
         _loc4_.graphics.beginFill(0,1);
         _loc4_.graphics.drawRect(-this.§]z§,-this.§]z§,_loc2_.width + 2 * this.§]z§,_loc2_.height + 2 * this.§]z§);
         _loc4_.graphics.beginFill(16777215,1);
         _loc4_.graphics.drawRect(-this.§]z§ / 2,-(this.§]z§ / 2),_loc2_.width + 1 * this.§]z§,_loc2_.height + 1 * this.§]z§);
      }
      
      private function §&9§(param1:Boolean) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = null;
         if(!this.§1Z§ || this.§2y§ == null || this.§2y§.length == 0)
         {
            return;
         }
         if(param1 && §=!+§)
         {
            _loc2_ = mClip.getRect(getParentView());
            this.§1Z§.y = _loc2_.y - this.§1Z§.height - this.§]z§;
            this.§1Z§.x = _loc2_.x + mClip.width / 2 - this.§1Z§.width / 2;
            _loc3_ = this.§1Z§.getRect(mClip.stage);
            if(_loc3_.right > mClip.stage.stageWidth - this.§]z§)
            {
               this.§1Z§.x -= 1 + (_loc3_.right - (mClip.stage.stageWidth - this.§]z§));
            }
            if(_loc3_.left < this.§]z§)
            {
               this.§1Z§.x += 1 + (this.§]z§ - _loc3_.left);
            }
            if(_loc3_.bottom > mClip.stage.stageHeight - this.§]z§)
            {
               this.§1Z§.y -= 1 + (_loc3_.bottom - (mClip.stage.stageHeight - this.§]z§));
            }
            if(_loc3_.top < this.§]z§)
            {
               this.§1Z§.y += mClip.height + this.§1Z§.height + this.§]z§ * 2;
            }
            this.§1Z§.visible = true;
         }
         else
         {
            this.§1Z§.visible = false;
         }
      }
      
      override public function clear() : void
      {
         if(this.§1Z§)
         {
            this.§2y§ = null;
            while(this.§1Z§.numChildren > 0)
            {
               this.§1Z§.removeChildAt(0);
            }
            if(this.§1Z§.parent)
            {
               this.§1Z§.parent.removeChild(this.§1Z§);
            }
            this.§1Z§ = null;
         }
         super.clear();
      }
      
      public function setComponentState(param1:String) : void
      {
         this.§+!_§ = param1;
         this.§'!E§();
      }
      
      public function setComponentVisualState(param1:String) : void
      {
         this.§^!;§ = param1;
         this.§'!E§();
      }
      
      public function §'!E§() : void
      {
         if(mClip.totalFrames < 2)
         {
            return;
         }
         var _loc1_:Array = new Array(this.§+!_§ + "_" + this.§^!;§,this.§+!_§ + "_" + §+!V§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + this.§^!;§,COMPONENT_STATE_ACTIVE_DEFAULT + "_" + §+!V§);
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
         if(this.§+!_§ == §1!M§)
         {
            return;
         }
         super.listenerEventOccured(param1,param2);
         if(this.§2!^§ && param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.§"9§();
         }
         if(param1 == LISTENER_EVENT_MOUSE_DOWN)
         {
            this.setComponentVisualState(§5!e§);
         }
         if(param1 == LISTENER_EVENT_MOUSE_UP)
         {
            this.setComponentVisualState(§#!A§);
         }
         if(param1 == §@8§)
         {
            Mouse.cursor = MouseCursor.AUTO;
            this.setComponentVisualState(§5$§);
         }
         if(param1 == §,!k§)
         {
            Mouse.cursor = this.§80§;
            this.setComponentVisualState(§#!A§);
         }
         this.§&9§(param1 == §,!k§);
      }
      
      public function §"9§() : void
      {
         if(this.§+!_§ == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
         {
            this.setComponentState(UIComponentInteractiveRovio.§!!c§);
         }
         else if(this.§+!_§ == UIComponentInteractiveRovio.§!!c§)
         {
            this.setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
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
         this.§'!E§();
      }
      
      override public function setVisibility(param1:Boolean) : void
      {
         super.setVisibility(param1);
         if(!mClip.visible)
         {
            this.§&9§(false);
         }
      }
      
      override public function onParentVisibilityChange(param1:Boolean) : void
      {
         super.onParentVisibilityChange(param1);
         if(!param1)
         {
            this.§&9§(false);
         }
      }
   }
}
